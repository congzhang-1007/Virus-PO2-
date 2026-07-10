
%% average for all PHP.eB mouse



% figure('Color','w','Position',[200 200 900 350]); 
% fill([t fliplr(t)], [upper' fliplr(lower')], ... 
%     [0 0 0], 'FaceAlpha',0.3, 'EdgeColor','none'); 
% hold on; plot(t, mean_data, 'Color',[0 0 0], 'LineWidth',2); 
% xlabel('Time (s)'); ylabel('\DeltaBLI/BLI (%)');
% xlim([0 length(t)]);
% title('Mean BLI Across 6 Mice with PHP.EB'); 
% grid on;
% 
% %********plot each mouse
% figure('Color','w','Position',[200 200 900 350]);
% plot(t,all_mice,'LineWidth',2);
% legend('Mouse1','Mouse2','Mouse3','Mouse4','Mouse5','Mouse6')
% xlim([0 length(t)]);
% xlabel('Time (s)'); ylabel('\DeltaBLI/BLI (%)');
% title('BLI Across 6 Mice with PHP.EB'); 
% grid on;


%%    average for all full virus mice
clc; clear all;
Fs=1;
load('F:\Virus PO2 Data\Data\Full Virus\18AC\BIL\Results.mat');
data = pixVals;  
x_old = linspace(1, length(pixVals), length(pixVals));
x_new = linspace(1, length(pixVals), 1200);
data_1200 = interp1(x_old, data, x_new, 'spline');
F_18AC = data_1200;
load('F:\Virus PO2 Data\Data\Full Virus\19AC\BIL\Results.mat');
% pixVals_filter = medfilt1(pixVals, 9,'truncate');
F_19AC = pixVals;
load('F:\Virus PO2 Data\Data\Full Virus\67AC\BIL\Results.mat');
M_67AC = pixVals;
load('F:\Virus PO2 Data\Data\Full Virus\37AC\BIL\Results.mat');
F_37AC = pixVals;
load('F:\Virus PO2 Data\Data\Full Virus\68AC\BIL\Results.mat');
M_68AC = pixVals;
load('F:\Virus PO2 Data\Data\Full Virus\34AC\BIL\Results.mat');
M_34AC = pixVals;

mice = { M_67AC, M_68AC, M_34AC, F_18AC, F_19AC, F_37AC};

% Find minimum length
lengths = cellfun(@length, mice);
minLen = min(lengths);
for i = 1:length(mice)
    mice{i} = mice{i}(1:minLen);
   % mice_zscore{i} = zscore(mice{i});
%    mice{i} = medfilt1(mice{i}, 3);
    %******detrend the signal
    mice_detrend{i} = lindetrend_new(mice{i}');
end
g1_all_mice = cell2mat(mice_detrend);


%% average for all 10 to 9 virus mice
% clc;clear all;
Fs=1;
load('F:\Virus PO2 Data\Data\10to9 virus\60AC\BIL\Results.mat');
F_60AC = pixVals;
load('F:\Virus PO2 Data\Data\10to9 virus\62AC\BIL\Results.mat');
M_62AC = pixVals;  
load('F:\Virus PO2 Data\Data\10to9 virus\63AC\BIL\Results.mat');
M_63AC = pixVals;
load('F:\Virus PO2 Data\Data\10to9 virus\69AC\BIL\Results.mat');
M_69AC = pixVals;
load('F:\Virus PO2 Data\Data\10to9 virus\85AC\BIL\Results.mat');
F_85AC = pixVals;
load('F:\Virus PO2 Data\Data\10to9 virus\96AC\BIL\Results.mat');
F_96AC = pixVals;

mice = { M_62AC, M_63AC, M_69AC, F_60AC, F_85AC, F_96AC};

% Find minimum length
lengths = cellfun(@length, mice);
minLen = min(lengths);
for i = 1:length(mice)
    mice{i} = mice{i}(1:minLen);
   % mice_zscore{i} = zscore(mice{i});
 
    %******detrend the signal
    mice_detrend{i} = lindetrend_new(mice{i}');


end
g2_all_mice = cell2mat(mice_detrend);

load('F:\Virus PO2 Data\Data\PHP.eB\03AD\BIL\Results.mat');
M_03AD = pixVals;
load('F:\Virus PO2 Data\Data\PHP.eB\04AD\BIL\Results.mat');
M_04AD = pixVals;
load('F:\Virus PO2 Data\Data\PHP.eB\95AC\BIL\Results.mat');
M_95AC = pixVals;
load('F:\Virus PO2 Data\Data\PHP.eB\05AD\BIL\Results.mat');
F_05AD = pixVals;
load('F:\Virus PO2 Data\Data\PHP.eB\06AD\BIL\Results.mat');
F_06AD = pixVals;
load('F:\Virus PO2 Data\Data\PHP.eB\08AD\BIL\Results.mat');
F_08AD = pixVals;
mice = {M_03AD, M_04AD, M_95AC, F_05AD, F_06AD,F_08AD};

% Find minimum length
lengths = cellfun(@length, mice);
minLen = min(lengths);
for i = 1:length(mice)
    mice{i} = mice{i}(1:minLen);
   % mice_zscore{i} = zscore(mice{i});
%    mice{i} = medfilt1(mice{i}, 3);
    %******detrend the signal
    mice_detrend{i} = lindetrend_new(mice{i}');

end
g3_all_mice = cell2mat(mice_detrend);

% mean_data = mean(all_mice, 2, 'omitnan');
% sem_data  = std(all_mice, 0, 2, 'omitnan') / sqrt(size(all_mice,2));
% % sem_data  = std(all_mice, 0, 2, 'omitnan');
% t = (0:length(mean_data)-1)/60;
% 
% % figure
% % plot(t, mean_data, 'k', 'LineWidth', 2)
% % hold on
% % plot(t, mean_data + sem_data, '--')
% % plot(t, mean_data - sem_data, '--')
% % xlabel('Time (s)')
% % ylabel('Signal')
% 
% %plot shadow figures
% 
% 
% % Oxygen-style blue color
% 
% 
% % Upper and lower bounds
% upper = mean_data + sem_data;
% lower = mean_data - sem_data;
% hold on;
% subplot(3,1,3);
% % figure('Color','w','Position',[200 200 900 350]); 
% fill([t fliplr(t)], [upper' fliplr(lower')], ... 
%     [0 0 0], 'FaceAlpha',0.3, 'EdgeColor','none'); 
% hold on; plot(t, mean_data, 'Color',[0 0 0], 'LineWidth',2.5); 
% hold on;
% for i = 1:size(all_mice,2)
%     plot(t, all_mice(:,i), 'Color', [0.6 0.6 0.6], 'LineWidth', 1); % black color
% end
% xlabel('Time (min)'); y3=ylabel('\DeltaBLI/BLI (%)');
% % y3.Position(1) = y3.Position(1) - 0.8;
% xlim([0 length(t)/60]);
% title('PHP.eB (n=6)');
% xlim([0 length(t)/60]);
% 
% % grid on;
% 
% hold on
% xline(4,'--')
% xline(8,'--')
% xline(12,'--')
% xline(16,'--')
% 
% % Label O2 periods
% ypos = max(all_mice(:))+0.5;
% text(2,ypos,'21%','HorizontalAlignment','center')
% text(6,ypos,'60%','HorizontalAlignment','center')
% text(10,ypos,'100%','HorizontalAlignment','center')
% text(14,ypos,'60%','HorizontalAlignment','center')
% text(18,ypos,'21%','HorizontalAlignment','center')
% set(gcf,'Color','w');
% box off;
% set(gca,'FontSize',12);
% exportgraphics(gcf,'three group average.png','Resolution',600);


figure('Color','w','Position',[200 200 900 260]);  % SHORT figure

tiledlayout(1,3, 'TileSpacing','compact', 'Padding','compact');

groups = {g1_all_mice, g2_all_mice, g3_all_mice};
titles = {'10^{10} GC','10^{9} GC','PHP.eB'};

for k = 1:3
    
    all_mice = groups{k};
    
    mean_data = mean(all_mice, 2, 'omitnan');
    sem_data  = std(all_mice, 0, 2, 'omitnan') / sqrt(size(all_mice,2));
    
    t = (0:length(mean_data)-1)/60;
    upper = mean_data + sem_data;
    lower = mean_data - sem_data;
    
    nexttile; hold on;
    
    % --- SEM shaded ---
    fill([t fliplr(t)], [upper' fliplr(lower')], ...
        [0 0 0], 'FaceAlpha',0.15, 'EdgeColor','none');
    
    % --- mean ---
    plot(t, mean_data, 'k', 'LineWidth',2);
    
    % --- individual mice ---
    for i = 1:size(all_mice,2)
        plot(t, all_mice(:,i), 'Color', [0.7 0.7 0.7], 'LineWidth', 0.6);
    end
%     ypos = 7.5;  % adjust based on ylim
% 
% text(2,ypos,'21%','HorizontalAlignment','center','FontSize',9)
% text(6,ypos,'60%','HorizontalAlignment','center','FontSize',9)
% text(10,ypos,'100%','HorizontalAlignment','center','FontSize',9)
% text(14,ypos,'60%','HorizontalAlignment','center','FontSize',9)
% text(18,ypos,'21%','HorizontalAlignment','center','FontSize',9)
    % --- vertical O2 transitions ---
    xline(4,'--','Color',[0.5 0.5 0.5]);
    xline(8,'--','Color',[0.5 0.5 0.5]);
    xline(12,'--','Color',[0.5 0.5 0.5]);
    xline(16,'--','Color',[0.5 0.5 0.5]);
    
    % --- titles ---
    title(titles{k});
    
    % --- axis ---
    xlim([0 20]);
    ylim([-0.5 10]);   % KEEP SAME for all
    xticks([0 10 20]);
    yticks([0 4 8]);
    
    set(gca, 'FontSize',10, 'LineWidth',1.2);
    box off;
    
    % --- remove redundant labels ---
    if k == 1
        ylabel('\DeltaBLI/BLI (%)');
    else
        ylabel('');
        set(gca,'YTickLabel',[]);
    end

    if k == 2
         xlabel( 'Time (min)', 'FontSize', 11);
        ypos = 9;
        text(2,ypos,'21%','HorizontalAlignment','center','FontSize',9)
        text(6,ypos,'60%','HorizontalAlignment','center','FontSize',9)
        text(10,ypos,'100%','HorizontalAlignment','center','FontSize',9)
        text(14,ypos,'60%','HorizontalAlignment','center','FontSize',9)
        text(18,ypos,'21%','HorizontalAlignment','center','FontSize',9)
    end
   
end
 exportgraphics(gcf,'three group average.png','Resolution',600);

    






function data_norm= lindetrend_new(data)

 
data_f = medfilt1(data, 11,'truncate'); 
%*********detrend signal
x = (1:size(data_f,1))';  % frame numbers
p = polyfit(x, data_f, 1);         % fit linear trend
drift = polyval(p, x);                  % predicted drift line
data_f = data_f- drift + drift(1);  % remove slope, keep first frame baseline


baseline_idx = 1:240;  % First Air period

baseline = mean(data_f(baseline_idx, :), 1);
% data_norm = data_f./baseline;
data_norm = ((data_f - baseline) ./ baseline)*100;

end



function data = lindetrend(data)

 
data = medfilt1(data, 11,'truncate'); 
x=[1:size(data,1)]';

Starts=data(1,:);
Ends=data(end,:);

Slopes=(Ends-Starts)/size(data,1);

y=Slopes'*x';
data=data-y';

data=data-ones(size(data,1),1)*data(1,:);
%***calculate the oercent change
% baseline = mean(data(1:200));  % use stable baseline window
% 
% data = (data - baseline) / abs(baseline);

end


function data_out = process_biolum(data)

    data = data(:)'; % ensure row vector
    
    % Remove short bumps (~6 points)
    data_filt = medfilt1(data, 7);
    
    % Gentle smoothing of baseline fluctuations
    data_smooth = smoothdata(data_filt, 'movmean', 5);
    
    % Remove slow nonlinear decay (better than linear detrend)
    x = (1:length(data_smooth))';
    p = polyfit(x, data_smooth, 2);  % 2nd order trend
    trend = polyval(p, x);
    
    data_out = data_smooth - trend';
    
end



