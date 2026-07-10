% function [gfap_mask, gfap_percent] = quantify_GFAP_area_second_batch(img)
% % QUANTIFY_GFAP_AREA
% % Detect GFAP-positive DAB staining area in RGB histology image
% %
% % Inputs:
% %   img         - RGB histology image
% %
% % Outputs:
% %   gfap_mask   - binary GFAP mask
% %   gfap_percent- % GFAP-positive area
% %   DAB_norm    - normalized DAB channel
% 
% %% =========================================================
% % 1) Convert image
% % =========================================================
% img = im2double(img);
% 
% if size(img,3) ~= 3
%     error('Input must be RGB image');
% end
% 
% [h,w,~] = size(img);
% 
% %% =========================================================
% % 2) Color deconvolution for DAB
% % =========================================================
% % Stain matrix: Hematoxylin + DAB
% M = [0.65 0.70 0.29;
%      0.27 0.57 0.78;
%      0.00 0.00 0.00];
% 
% for i = 1:2
%     M(i,:) = M(i,:) / norm(M(i,:));
% end
% 
% OD = -log(img + 0.01);
% 
% stains = reshape(OD,[],3) * pinv(M).';
% stains = reshape(stains,h,w,3);
% 
% DAB = stains(:,:,2);
% 
% %% =========================================================
% % 3) Robust DAB normalization
% % =========================================================
% p5  = prctile(DAB(:),5);
% p99 = prctile(DAB(:),99);
% 
% DAB_norm = DAB - p5;
% DAB_norm(DAB_norm < 0) = 0;
% 
% if p99 > p5
%     DAB_norm = DAB_norm / (p99 - p5);
% end
% 
% DAB_norm(DAB_norm > 1) = 1;
% 
% %% =========================================================
% % 4) Mild local contrast enhancement
% % =========================================================
% DAB_enh = adapthisteq(DAB_norm, ...
%     'ClipLimit',0.01, ...
%     'NumTiles',[8 8]);
% 
% %% =========================================================
% % 5) Threshold DAB-positive signal
% % =========================================================
% T = graythresh(DAB_enh);
% 
% % Slightly conservative threshold
% mask_dab = DAB_enh > T * 1;
% 
% %% =========================================================
% % 6) Brown color confirmation (HSV)
% % =========================================================
% HSV = rgb2hsv(img);
% H = HSV(:,:,1);
% S = HSV(:,:,2);
% V = HSV(:,:,3);
% 
% mask_brown = ...
%     H > 0.05 & H < 0.10 & ...
%     S > 0.18 & ...
%     V < 0.85;
% 
% %% =========================================================
% % 7) Combine DAB + brown confirmation
% % =========================================================
% mask = mask_dab & mask_brown;
% 
% %% =========================================================
% % 8) Morphological cleanup for astrocyte filaments
% % =========================================================
% % Remove isolated noise
% mask = bwareaopen(mask,80);
% 
% % Connect fragmented GFAP processes
% mask = imclose(mask, strel('disk',1));
% 
% mask = imdilate(mask, strel('line',3,0));
% mask = imdilate(mask, strel('line',3,90));
% 
% % Fill soma-like enclosed regions
% mask = imfill(mask,'holes');
% 
% %% =========================================================
% % 9) Final output
% % =========================================================
% gfap_mask = mask;
% gfap_percent = 100 * nnz(mask) / numel(mask);
% 
% end

function [gfap_mask, gfap_percent] = quantify_GFAP_area_second_batch(img)

img = im2double(img);

if size(img,3) ~= 3
    error('Input must be RGB image');
end

[h,w,~] = size(img);

%% 1) Color deconvolution
M = [0.65 0.70 0.29;
     0.27 0.57 0.78;
     0.00 0.00 0.00];

for i = 1:2
    M(i,:) = M(i,:) / norm(M(i,:));
end

OD = -log(img + 0.01);

stains = reshape(OD,[],3) * pinv(M).';
stains = reshape(stains,h,w,3);

DAB = stains(:,:,2);

%% 2) Normalize
p5  = prctile(DAB(:),5);
p99 = prctile(DAB(:),99);

DAB_norm = (DAB - p5) / (p99 - p5);
DAB_norm = max(min(DAB_norm,1),0);

%% 3) Mild enhancement
DAB_enh = adapthisteq(DAB_norm,...
    'ClipLimit',0.005,...
    'NumTiles',[8 8]);

%% 5) Brown confirmation
HSV = rgb2hsv(img);
H = HSV(:,:,1);
S = HSV(:,:,2);
V = HSV(:,:,3);

mask_brown = ...
    H > 0.04 & H < 0.11 & ...
    S > 0.12 & ...
    V < 0.88;


%% 7) Cleanup WITHOUT expansion
% mask = bwareaopen(mask,40);
% 
% % only tiny closing
% mask = imclose(mask, strel('disk',1));
%% Threshold
Tlocal = adaptthresh(DAB_enh, 0.35, ...
    'NeighborhoodSize', 101);

mask_dab = imbinarize(DAB_enh, Tlocal);

%% Brown confirmation
mask = mask_dab & mask_brown;

%% Astrocyte-object filtering
CC = bwconncomp(mask);
stats = regionprops(CC, ...
    'Area', ...
    'Solidity', ...
    'Eccentricity', ...
    'BoundingBox');

astro_mask = false(size(mask));

for k = 1:CC.NumObjects
    A = stats(k).Area;
    S = stats(k).Solidity;
    E = stats(k).Eccentricity;
    box = stats(k).BoundingBox;
    
    width  = box(3);
    height = box(4);
    aspect = max(width,height) / max(1,min(width,height));

    % Astrocyte-like object rules
    if A > 60 && A < 800 && ...
       S < 0.95 && ...
       aspect < 8 && ...
       E < 0.98
%      if A > 170 && A < 800 && ...
%        S < 0.80 && ...
%        aspect < 4 && ...
%        E < 0.98
       
        astro_mask(CC.PixelIdxList{k}) = true;
    end
end

% gentle branch connection
astro_mask = imclose(astro_mask, strel('disk',1));

gfap_mask = astro_mask;
gfap_percent = 100 * nnz(gfap_mask) / numel(gfap_mask);

end