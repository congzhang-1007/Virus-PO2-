
close all
clc
clear all

% PBS
%***********45AC
% dataFolder='D:\HistoVirus\Zoom in Results\PBS\45AC\injection area\';
%***********48AC
% dataFolder='D:\HistoVirus\Zoom in Results\PBS\48AC\';
% % %********50AC
dataFolder='D:\HistoVirus\Zoom in Results\PBS\50AC\';
% % % %********58AC
% dataFolder='D:\HistoVirus\Zoom in Results\PBS\58AC\';

% % %********59AC does not work properly 
% dataFolder='D:\HistoVirus\Zoom in Results\PBS\59AC\';

%********* Full virus 
%***19AC
% dataFolder='D:\HistoVirus\Zoom in Results\Full virus\19AC\';

%*********37AC
% dataFolder = 'D:\HistoVirus\Zoom in Results\Full virus\37AC\';
%***********41AC
% dataFolder = 'D:\HistoVirus\Zoom in Results\Full virus\41AC\New folder\';


%***********61AC
%  dataFolder = 'D:\HistoVirus\Zoom in Results\10to9virus\85AC\';
%*********PHP.eB
% dataFolder='D:\HistoVirus\Zoom in Results\PHPeB\95AC\';

%% GFAP
%***** tif image
% img_left  = imread(fullfile(dataFolder,'GFAP_left_noScale.tif'));
% img_right = imread(fullfile(dataFolder, 'GFAP_right_noScale.tif'));

%*********jpg image
img_left  = imread(fullfile(dataFolder,'GFAP_left_noScale.jpg'));
img_right = imread(fullfile(dataFolder, 'GFAP_right_noScale.jpg'));
% opts.kMAD = 2;%3.8;

% [maskL, pctL] = quantify_GFAP(img_left);
% 
% [maskR, pctR] = quantify_GFAP(img_right);
[maskL, pctL] = quantify_GFAP_area_second_batch(img_left);

[maskR, pctR] = quantify_GFAP_area_second_batch(img_right);

Res_GFAP.maskL=maskL;
Res_GFAP.pctL=pctL;
Res_GFAP.maskR=maskR;
Res_GFAP.pctR=pctR;

fprintf('Left  GFAP = %.2f%%\n', pctL);
fprintf('Right GFAP = %.2f%%\n', pctR);

figure;

subplot(1,2,1); imshow(img_left); hold on;
overlay = cat(3, ones(size(maskL)), zeros(size(maskL)), zeros(size(maskL)));
h = imshow(overlay); set(h,'AlphaData',0.35*maskL);
title(sprintf('Left GFAP = %.2f%%', pctL));

subplot(1,2,2); imshow(img_right); hold on;
overlay = cat(3, ones(size(maskR)), zeros(size(maskR)), zeros(size(maskR)));
h = imshow(overlay); set(h,'AlphaData',0.35*maskR);
title(sprintf('Right GFAP = %.2f%%', pctR));
save(fullfile(dataFolder, 'GFAP.mat'),'Res_GFAP');

%% IBA


%********50AC
%*********tif image
% imgL  = imread(fullfile(dataFolder,'IBA1_left_noScale.tif'));
% imgR = imread(fullfile(dataFolder,'IBA1_right_noScale.tif'));

% % *******jpg image
imgL  = imread(fullfile(dataFolder,'IBA1_left_noScale.jpg'));
imgR = imread(fullfile(dataFolder,'IBA1_right_noScale.jpg'));

[maskL, pctL] = quantify_IBA_area(imgL);
[maskR, pctR] = quantify_IBA_area(imgR);

% [maskL, pctL] = quantify_IBA_area_second_batch(imgL);
% [maskR, pctR] = quantify_IBA_area_second_batch(imgR);


fprintf('Left IBA = %.2f%%\n', pctL);
fprintf('Right IBA = %.2f%%\n', pctR);

Res_IBA.maskL=maskL;
Res_IBA.pctL=pctL;
Res_IBA.maskR=maskR;
Res_IBA.pctR=pctR;

figure;
subplot(1,2,1); imshow(imgL); hold on;
h = imshow(cat(3,ones(size(maskL)),zeros(size(maskL)),zeros(size(maskL))));
set(h, 'AlphaData', 0.3*maskL);
title(sprintf('Left IBA = %.2f%%', pctL));

subplot(1,2,2); imshow(imgR); hold on;
h = imshow(cat(3,ones(size(maskR)),zeros(size(maskR)),zeros(size(maskR))));
set(h, 'AlphaData', 0.3*maskR);
title(sprintf('Right IBA = %.2f%%', pctR));
save(fullfile(dataFolder, 'IBA.mat'),'Res_IBA');
