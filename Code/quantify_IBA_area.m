% function [maskIBA, pctIBA] = quantify_IBA_area(img)
% 
%     img = im2double(img);
% 
%     R = img(:,:,1);
%     G = img(:,:,2);
%     B = img(:,:,3);
% 
%     %% --- 1) Brown filter (medium strict)
%     brownFilter = (R > G*1.08) & (R > B*1.18);
% 
%     %% --- 2) HSV filtering (slightly wider brown range)
%     hsv = rgb2hsv(img);
%     H = hsv(:,:,1);
%     S = hsv(:,:,2);
% 
%     hueBrown = (H > 0.02) & (H < 0.14);   % wider than last version
%     satLimit = S > 0.12;                 % allow lighter brown
%     hsvMask = hueBrown & satLimit;
% 
%     %% --- 3) OD transform (DAB detection)
%     OD = -log(img + eps);
%     dab = [0.65 0.60 0.40];
%     dab = dab / norm(dab);
% 
%     P = OD(:,:,1)*dab(1) + OD(:,:,2)*dab(2) + OD(:,:,3)*dab(3);
% 
%     %% --- 4) Smoothing
%     P_s = imgaussfilt(P, 0.9);
% 
%     %% --- 5) Main threshold (medium strict)
%     T = graythresh(P_s) * 1.10;     % less strict (was 1.25)
%     mask_main = P_s > T;
% 
%     %% --- 6) Rescue faint IBA1 branches
%     mask_rescue = imbinarize(P_s, 'adaptive', 'Sensitivity', 0.52);
%     mask_rescue = mask_rescue & hsvMask;
% 
%     %% --- 7) Combine all with brown/HVS filters
%     mask = (mask_main | mask_rescue) & brownFilter & hsvMask;
% 
%     %% --- 8) Remove small noise
%     mask = bwareaopen(mask, 35);
% 
%     maskIBA = mask;
%     pctIBA = 100 * sum(mask(:)) / numel(mask);
% 
% end
function [maskIBA, pctIBA] = quantify_IBA_area(img)

    img8 = im2uint8(img);
    I = im2double(img8);

    % --------- 1) Tissue mask (exclude white background / labels) ----------
    hsv = rgb2hsv(I);
    S = hsv(:,:,2);
    V = hsv(:,:,3);
    tissueMask = (S > 0.05) & (V < 0.98);  
%     tissueMask = (S > 0.04) & (V < 0.98);        % keeps tissue, removes white
    tissueMask = imfill(tissueMask, 'holes');
    tissueMask = bwareaopen(tissueMask, 500);    % remove small junk

    % --------- 2) Optical density ----------
    OD = -log(I + eps);  % OD in [0, inf)

    % --------- 3) H-DAB stain matrix (columns) ----------
    % Commonly used vectors (normalized)
    H   = [0.650; 0.704; 0.286];
    E   = [0.072; 0.990; 0.105];
    DAB = [0.268; 0.570; 0.776];

    M = [H E DAB];
    M = M ./ vecnorm(M);   % normalize columns

    % Solve OD = M * C  =>  C = M \ OD
    OD2 = reshape(permute(OD,[3 1 2]), 3, []);   % 3 x N
    C = M \ OD2;                                  % 3 x N concentrations
    dabC = reshape(C(3,:), size(I,1), size(I,2)); % DAB channel

    % --------- 4) Smooth + threshold DAB within tissue ----------
    dabS = imgaussfilt(dabC, 0.8);

    dabN = mat2gray(dabS(tissueMask));           % normalize using tissue only
    T = graythresh(dabN) * 1;                 % more sensitive than 1.0
    mask = false(size(dabS));
    mask(tissueMask) = mat2gray(dabS(tissueMask)) > T;

    % --------- 5) Cleanup ----------
    mask = bwareaopen(mask, 15); %50
    mask = imclose(mask, strel('disk', 1));

    maskIBA = mask;
    pctIBA = 100 * nnz(maskIBA) / nnz(tissueMask);   % % of tissue area (better!)

end








% function [iba_mask, iba_percent] = quantify_IBA_area(img)
% % Quantify IBA-1 DAB-positive area (very conservative)
% % img: RGB image (uint8 or double in [0,1])
% % iba_mask: logical mask of IBA+ area
% % iba_percent: percent area
% 
% %% 0) Ensure double in [0,1]
% img = im2double(img);
% 
% %% 1) Color deconvolution – extract DAB-like component
% OD = -log(img + 1e-6);  % optical density
% 
% % DAB stain vector (tuned for your IBA images)
% dab = [0.268 0.570 0.776];
% dab = dab / norm(dab);
% 
% D = OD(:,:,1)*dab(1) + OD(:,:,2)*dab(2) + OD(:,:,3)*dab(3);
% 
% % Normalize DAB channel per-image
% bg  = prctile(D(:), 5);
% top = prctile(D(:), 99);
% 
% Dnorm = (D - bg) / (top - bg);
% Dnorm(Dnorm < 0) = 0;
% Dnorm(Dnorm > 1) = 1;
% 
% %% 2) Restrict to brown-ish pixels using HSV
% hsv_img = rgb2hsv(img);
% H = hsv_img(:,:,1);
% S = hsv_img(:,:,2);
% 
% % Narrow brown range + some saturation
% brownMask = (H > 0.05 & H < 0.13 & S > 0.15);
% 
% %% 3) Choose a *relative* threshold within brown pixels
% brownVals = Dnorm(brownMask);
% if isempty(brownVals)
%     iba_mask   = false(size(Dnorm));
%     iba_percent = 0;
%     return;
% end
% 
% t_rel = prctile(brownVals, 80);  % 70th percentile of brown DAB
% t_rel = max(t_rel, 0.25);        % do not go below 0.25 (avoid over-detect)
% 
% rawMask = (Dnorm > t_rel) & brownMask;
% 
% %% 4) Clean up: open + remove small specks
% rawMask = imopen(rawMask, strel('disk', 1));  % remove isolated pixels
% rawMask = bwareaopen(rawMask, 30);            % remove objects < 30 px
% 
% % No closing, no fill -> conservative
% 
% iba_mask    = rawMask;
% iba_percent = 100 * mean(iba_mask(:));
% 
% end
