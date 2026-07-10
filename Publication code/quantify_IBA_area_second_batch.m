function [maskIBA, pctIBA] = quantify_IBA_area_second_batch(img)

img = im2double(img);

%% =========================================================
% 1) Tissue mask
% =========================================================
HSV = rgb2hsv(img);
S = HSV(:,:,2);
V = HSV(:,:,3);

tissueMask = (S > 0.05) & (V < 0.97);
tissueMask = imfill(tissueMask,'holes');
tissueMask = bwareaopen(tissueMask, 500);

%% =========================================================
% 2) Optical density
% =========================================================
OD = -log(img + 0.01);

%% =========================================================
% 3) H-DAB deconvolution
% =========================================================
H   = [0.650; 0.704; 0.286];
E   = [0.072; 0.990; 0.105];
DAB = [0.268; 0.570; 0.776];

M = [H E DAB];
M = M ./ vecnorm(M);

OD2 = reshape(permute(OD,[3 1 2]),3,[]);
C = M \ OD2;

dab = reshape(C(3,:), size(img,1), size(img,2));

%% =========================================================
% 4) Normalize in tissue
% =========================================================
dab_t = dab(tissueMask);
% p5 = 0.03;
% p99 = 0.35;
p5  = prctile(dab_t,5);
p99 = prctile(dab_t,99);

dabN = dab - p5;
dabN(dabN < 0) = 0;
dabN = dabN / max(p99-p5, eps);
dabN(dabN > 1) = 1;

%% =========================================================
% 5) Smooth
% =========================================================
dabS = imgaussfilt(dabN, 0.6);

%% =========================================================
% 6) Dual threshold
% =========================================================
T = graythresh(dabS(tissueMask));

% strong = soma + thick branches
mask_strong = false(size(dabS));
mask_strong(tissueMask) = dabS(tissueMask) > T * 1.3;

% soft = weak soma edge only
mask_soft = false(size(dabS));
mask_soft(tissueMask) = dabS(tissueMask) > T * 0.98;
% mask_soft(tissueMask) = dabS(tissueMask) > T * 0.7;
% 
%% =========================================================
% 7) Brown confirmation
% =========================================================
Hh = HSV(:,:,1);
Ss = HSV(:,:,2);
Vv = HSV(:,:,3);

% brownMask = ...
%     Hh > 0.04 & Hh < 0.10 & ...
%     Ss > 0.18 & ...
%     Vv < 0.88;
brownMask = ...
    Hh > 0.05 & Hh < 0.085 & ...
    Ss > 0.22 & ...
    Vv < 0.82;
mask_strong = mask_strong & brownMask;
mask_soft   = mask_soft   & brownMask;

%% =========================================================
% 8) SOMA-focused rescue (KEY FIX)
% =========================================================
% only rescue pixels directly adjacent to strong core
neighbor = imdilate(mask_strong, strel('disk',1));

mask = mask_strong | (neighbor & mask_soft);
%% 8.5) Soma recovery (important for IBA1)
soma_seed = false(size(dabS));
soma_seed(tissueMask) = dabS(tissueMask) > T * 0.98;

% only compact soma-sized objects
CCs = bwconncomp(soma_seed);
stats = regionprops(CCs,'Area','Eccentricity');

soma_mask = false(size(soma_seed));

for k = 1:CCs.NumObjects
    A = stats(k).Area;
    E = stats(k).Eccentricity;

    % microglial soma size
    if A >= 8 && A <= 100 && E < 0.8
        soma_mask(CCs.PixelIdxList{k}) = true;
    end
%     if A >= 6 && A <= 150 && E < 0.9
%         soma_mask(CCs.PixelIdxList{k}) = true;
%     end
end

% merge soma with branch mask
mask = mask | soma_mask;


%% =========================================================
% 9) Cleanup
% =========================================================
mask = bwareaopen(mask, 15);

% only tiny close, no branch exaggeration
mask = imclose(mask, strel('disk',1));

mask = imfill(mask,'holes');

%% =========================================================
% 10) Output
% =========================================================
maskIBA = mask;
pctIBA = 100 * nnz(maskIBA) / nnz(tissueMask);
% pctIBA = 100 * nnz(maskIBA) / numel(maskIBA);

end
