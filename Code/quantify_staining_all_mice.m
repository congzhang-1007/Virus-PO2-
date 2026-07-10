clc; clear all; close all;
%% full virus
load('F:\Virus PO2 Data\Data\Full Virus\19AC\Histo\GFAP.mat');
load('F:\Virus PO2 Data\Data\Full Virus\19AC\Histo\IBA.mat');
GFAP19_pctL=Res_GFAP.pctL;
GFAP19_pctR=Res_GFAP.pctR;
GFAP19_diff = GFAP19_pctL-GFAP19_pctR;
IBA19_pctL=Res_IBA.pctL;
IBA19_pctR=Res_IBA.pctR;
IBA19_diff = IBA19_pctL-IBA19_pctR;

load('F:\Virus PO2 Data\Data\Full Virus\37AC\Histo\GFAP.mat');
load('F:\Virus PO2 Data\Data\Full Virus\37AC\Histo\IBA.mat');
GFAP37_pctL=Res_GFAP.pctL;
GFAP37_pctR=Res_GFAP.pctR;
GFAP37_diff = GFAP37_pctL-GFAP37_pctR;
IBA37_pctL=Res_IBA.pctL;
IBA37_pctR=Res_IBA.pctR;
IBA37_diff = IBA37_pctL-IBA37_pctR;

load('F:\Virus PO2 Data\Data\Full Virus\67AC\Histo\GFAP.mat');
load('F:\Virus PO2 Data\Data\Full Virus\67AC\Histo\IBA.mat');
GFAP41_pctL=Res_GFAP.pctL;
GFAP41_pctR=Res_GFAP.pctR;
IBA41_pctL=Res_IBA.pctL;
IBA41_pctR=Res_IBA.pctR;
GFAP41_diff = GFAP41_pctL-GFAP41_pctR;
IBA41_diff = IBA41_pctL-IBA41_pctR;

load('F:\Virus PO2 Data\Data\Full Virus\68AC\Histo\IBA.mat');
load('F:\Virus PO2 Data\Data\Full Virus\68AC\Histo\GFAP.mat');
GFAP68_pctL=Res_GFAP.pctL;
GFAP68_pctR=Res_GFAP.pctR;
IBA68_pctL=Res_IBA.pctL;
IBA68_pctR=Res_IBA.pctR;
GFAP68_diff = GFAP68_pctL-GFAP68_pctR;
IBA68_diff = IBA68_pctL-IBA68_pctR;
% %*******10 to9 virus
load('F:\Virus PO2 Data\Data\10to9 virus\62AC\Histo\GFAP.mat');
load('F:\Virus PO2 Data\Data\10to9 virus\62AC\Histo\IBA.mat');
GFAP61_pctL=Res_GFAP.pctL;
GFAP61_pctR=Res_GFAP.pctR;
IBA61_pctL=Res_IBA.pctL;
IBA61_pctR=Res_IBA.pctR;
GFAP61_diff = GFAP61_pctL-GFAP61_pctR;
IBA61_diff = IBA61_pctL-IBA61_pctR;

load('F:\Virus PO2 Data\Data\10to9 virus\69AC\Histo\GFAP.mat');
load('F:\Virus PO2 Data\Data\10to9 virus\69AC\Histo\IBA.mat');
GFAP69_pctL=Res_GFAP.pctL;
GFAP69_pctR=Res_GFAP.pctR;
IBA69_pctL=Res_IBA.pctL;
IBA69_pctR=Res_IBA.pctR;
GFAP69_diff = GFAP69_pctL-GFAP69_pctR;
IBA69_diff = IBA69_pctL-IBA69_pctR;

load('F:\Virus PO2 Data\Data\10to9 virus\85AC\Histo\GFAP.mat');
load('F:\Virus PO2 Data\Data\10to9 virus\85AC\Histo\IBA.mat');
GFAP85_pctL=Res_GFAP.pctL;
GFAP85_pctR=Res_GFAP.pctR;
IBA85_pctL=Res_IBA.pctL;
IBA85_pctR=Res_IBA.pctR;
GFAP85_diff = GFAP85_pctL-GFAP85_pctR;
IBA85_diff = IBA85_pctL-IBA85_pctR;

load('F:\Virus PO2 Data\Data\10to9 virus\96AC\Histo\GFAP.mat');
load('F:\Virus PO2 Data\Data\10to9 virus\96AC\Histo\IBA.mat');
GFAP96_pctL=Res_GFAP.pctL;
GFAP96_pctR=Res_GFAP.pctR;
IBA96_pctL=Res_IBA.pctL;
IBA96_pctR=Res_IBA.pctR;
GFAP96_diff = GFAP96_pctL-GFAP96_pctR;
IBA96_diff = IBA96_pctL-IBA96_pctR;


%%%PBS
load('F:\Virus PO2 Data\Data\PBS\45AC\Histo\GFAP.mat');
load('F:\Virus PO2 Data\Data\PBS\45AC\Histo\IBA.mat');
GFAP45_pctL=Res_GFAP.pctL;
GFAP45_pctR=Res_GFAP.pctR;
IBA45_pctL=Res_IBA.pctL;
IBA45_pctR=Res_IBA.pctR;
GFAP45_diff = GFAP45_pctL-GFAP45_pctR;
IBA45_diff = IBA45_pctL-IBA45_pctR;

load('F:\Virus PO2 Data\Data\PBS\46AC\Histo\GFAP.mat');
load('F:\Virus PO2 Data\Data\PBS\46AC\Histo\IBA.mat');
GFAP48_pctL=Res_GFAP.pctL;
GFAP48_pctR=Res_GFAP.pctR;
IBA48_pctL=Res_IBA.pctL;
IBA48_pctR=Res_IBA.pctR;
GFAP48_diff = GFAP48_pctL-GFAP48_pctR;
IBA48_diff = IBA48_pctL-IBA48_pctR;

load('F:\Virus PO2 Data\Data\PBS\77AC\Histo\GFAP.mat');
load('F:\Virus PO2 Data\Data\PBS\77AC\Histo\IBA.mat');
GFAP50_pctL=Res_GFAP.pctL;
GFAP50_pctR=Res_GFAP.pctR;
IBA50_pctL=Res_IBA.pctL;
IBA50_pctR=Res_IBA.pctR;
GFAP50_diff = GFAP50_pctL-GFAP50_pctR;
IBA50_diff = IBA50_pctL-IBA50_pctR;


load('F:\Virus PO2 Data\Data\PBS\58AC\Histo\GFAP.mat');
load('F:\Virus PO2 Data\Data\PBS\58AC\Histo\IBA.mat');
GFAP58_pctL=Res_GFAP.pctL;
GFAP58_pctR=Res_GFAP.pctR;
IBA58_pctL=Res_IBA.pctL;
IBA58_pctR=Res_IBA.pctR;
GFAP58_diff = GFAP58_pctL-GFAP58_pctR;
IBA58_diff = IBA58_pctL-IBA58_pctR;


%%PHPeb
load('F:\Virus PO2 Data\Data\PHP.eB\04AD\Histo\IBA.mat');
load('F:\Virus PO2 Data\Data\PHP.eB\04AD\Histo\GFAP.mat');
GFAP04_pctL=Res_GFAP.pctL;
GFAP04_pctR=Res_GFAP.pctR;
IBA04_pctL=Res_IBA.pctL;
IBA04_pctR=Res_IBA.pctR;
GFAP04_diff = GFAP04_pctL-GFAP04_pctR;
IBA04_diff = IBA04_pctL-IBA04_pctR;

load('F:\Virus PO2 Data\Data\PHP.eB\05AD\Histo\IBA.mat');
load('F:\Virus PO2 Data\Data\PHP.eB\05AD\Histo\GFAP.mat');
GFAP05_pctL=Res_GFAP.pctL;
GFAP05_pctR=Res_GFAP.pctR;
IBA05_pctL=Res_IBA.pctL;
IBA05_pctR=Res_IBA.pctR;
GFAP05_diff = GFAP05_pctL-GFAP05_pctR;
IBA05_diff = IBA05_pctL-IBA05_pctR;

load('F:\Virus PO2 Data\Data\PHP.eB\06AD\Histo\IBA.mat');
load('F:\Virus PO2 Data\Data\PHP.eB\06AD\Histo\GFAP.mat');
GFAP06_pctL=Res_GFAP.pctL;
GFAP06_pctR=Res_GFAP.pctR;
IBA06_pctL=Res_IBA.pctL;
IBA06_pctR=Res_IBA.pctR;
GFAP06_diff = GFAP06_pctL-GFAP06_pctR;
IBA06_diff = IBA06_pctL-IBA06_pctR;

load('F:\Virus PO2 Data\Data\PHP.eB\95AC\Histo\IBA.mat');
load('F:\Virus PO2 Data\Data\PHP.eB\95AC\Histo\GFAP.mat');
GFAP95_pctL=Res_GFAP.pctL;
GFAP95_pctR=Res_GFAP.pctR;
IBA95_pctL=Res_IBA.pctL;
IBA95_pctR=Res_IBA.pctR;
GFAP95_diff = GFAP95_pctL-GFAP95_pctR;
IBA95_diff = IBA95_pctL-IBA95_pctR;


%% ========== Collect data into groups ==========
% Full virus
GFAP_full_L = [GFAP19_pctL, GFAP37_pctL, GFAP41_pctL GFAP68_pctL]';
GFAP_full_R = [GFAP19_pctR, GFAP37_pctR, GFAP41_pctR GFAP68_pctR]';
GFAP_full_diff = [GFAP19_diff, GFAP37_diff, GFAP41_diff GFAP68_diff]';
IBA_full_L  = [IBA19_pctL,  IBA37_pctL,  IBA41_pctL IBA68_pctL]';
IBA_full_R  = [IBA19_pctR,  IBA37_pctR,  IBA41_pctR IBA68_pctR]';
IBA_full_diff  = [IBA19_diff,  IBA37_diff,  IBA41_diff IBA68_diff]';

GFAP_full = [GFAP_full_L GFAP_full_R];
IBA_full = [IBA_full_L IBA_full_R];

% 10^9 virus (currently only 61AC in your snippet)
GFAP_1e9_L = [GFAP61_pctL GFAP69_pctL GFAP85_pctL GFAP96_pctL]';
GFAP_1e9_R = [GFAP61_pctR GFAP69_pctR GFAP85_pctR GFAP96_pctR]';
GFAP_1e9_diff = [GFAP61_diff GFAP69_diff GFAP85_diff GFAP96_diff]';
IBA_1e9_L  = [IBA61_pctL IBA69_pctL IBA85_pctL IBA96_pctL]';
IBA_1e9_R  = [IBA61_pctR IBA69_pctR IBA85_pctR IBA96_pctR]';
IBA_1e9_diff  = [IBA61_diff IBA69_diff IBA85_diff IBA96_diff]';
GFAP_1e9 = [GFAP_1e9_L GFAP_1e9_R];
IBA_1e9 = [IBA_1e9_L IBA_1e9_R];

% PBS
% GFAP_pbs_L = [GFAP45_pctL, GFAP48_pctL, GFAP50_pctL, GFAP58_pctL, GFAP59_pctL]';
% GFAP_pbs_R = [GFAP45_pctR, GFAP48_pctR, GFAP50_pctR, GFAP58_pctR, GFAP59_pctR]';
GFAP_pbs_L = [GFAP45_pctL, GFAP48_pctL, GFAP50_pctL,  GFAP58_pctL]';
GFAP_pbs_R = [GFAP45_pctR, GFAP48_pctR, GFAP50_pctR,  GFAP58_pctR]';
GFAP_pbs_diff = [GFAP45_diff, GFAP48_diff, GFAP50_diff,  GFAP58_diff]';
% IBA_pbs_L  = [IBA45_pctL,  IBA48_pctL,  IBA50_pctL,  IBA58_pctL,  IBA59_pctL ]';
% IBA_pbs_R  = [IBA45_pctR,  IBA48_pctR,  IBA50_pctR,  IBA58_pctR,  IBA59_pctR ]';
IBA_pbs_L  = [IBA45_pctL,  IBA48_pctL,  IBA50_pctL,  IBA58_pctL   ]';
IBA_pbs_R  = [IBA45_pctR,  IBA48_pctR,  IBA50_pctR,  IBA58_pctR   ]';
IBA_pbs_diff  = [IBA45_diff,  IBA48_diff,  IBA50_diff,  IBA58_diff   ]';

GFAP_pbs= [GFAP_pbs_L GFAP_pbs_R];
IBA_pbs =[IBA_pbs_L IBA_pbs_R];

% PHPeB
GFAP_PHPEB_L =[GFAP04_pctL GFAP05_pctL GFAP06_pctL GFAP95_pctL]';
GFAP_PHPEB_R =[GFAP04_pctR GFAP05_pctR GFAP06_pctR GFAP95_pctR]';
GFAP_PHPEB_diff =[GFAP04_diff GFAP05_diff GFAP06_diff GFAP95_diff];
IBA_PHPEB_L =[IBA04_pctL IBA05_pctL IBA06_pctL IBA95_pctL]';
IBA_PHPEB_R =[IBA04_pctR IBA05_pctR IBA06_pctR IBA95_pctR]';
IBA_PHPEB_diff =[IBA04_diff IBA05_diff IBA06_diff IBA95_diff]';

GFAP_PHPEB = [GFAP_PHPEB_L GFAP_PHPEB_R];
IBA_PHPEB = [IBA_PHPEB_L IBA_PHPEB_R];

groups = {'10^{10}GC','10^{9}GC','PHP.eB','PBS'};


plot_LR_4groups_paired(GFAP_full_L, GFAP_full_R, GFAP_1e9_L,GFAP_1e9_R, GFAP_PHPEB_L,GFAP_PHPEB_R,GFAP_pbs_L,GFAP_pbs_R, groups, 'GFAP (% area)');
exportgraphics(gcf,'GFAP.png','Resolution',600);
plot_LR_4groups_paired(IBA_full_L, IBA_full_R, IBA_1e9_L,IBA_1e9_R, IBA_PHPEB_L, IBA_PHPEB_R, IBA_pbs_L,IBA_pbs_R, groups, 'IBA1 (% area)');
exportgraphics(gcf,'IBA.png','Resolution',600);

GFAP=[GFAP_full GFAP_1e9 GFAP_PHPEB GFAP_1e9];
IBA1=[IBA_full IBA_1e9 IBA_PHPEB IBA_pbs];




groupNames = {'10^{10}GC','10^{9}GC','PHP.eB','PBS'};

% %% Run analysis
plot_delta_stats(GFAP, groupNames, 'GFAP');
exportgraphics(gcf,'GFAP_diff.png','Resolution',600);
plot_delta_stats(IBA1, groupNames, 'IBA1');
exportgraphics(gcf,'IBA_diff.png','Resolution',600);



% % Combine
% data=IBA1;
% 
%  Delta_10_10= data(:,1)-data(:,2);
%  Delta_10_9 = data(:,3)-data(:,4);
%  Delta_PHPeB = data(:,5)-data(:,6);
%  Delta_PBS = data(:,7)-data(:,8);
% 
% %  Delta_10_10= log(data(:,1)./data(:,2));
% %  Delta_10_9 = log(data(:,3)./data(:,4));
% %  Delta_PHPeB = log(data(:,5)./data(:,6));
% %  Delta_PBS = log(data(:,7)./data(:,8));
% 
% 
% 
% data = [Delta_10_10, Delta_10_9, Delta_PHPeB,Delta_PBS];
% Delta = data(:);
% group = [repmat({'10^10'},1,length(Delta_10_10)), ...
%          repmat({'10^9'},1,length(Delta_10_9)), ...
%          repmat({'PHPeB'},1,length(Delta_PHPeB)), ...
%          repmat({'PBS'},1,length(Delta_PBS))];
% 
% [p,tbl,stats] = anova1(Delta, group);
% multcompare(stats);
% 


%% =========================================================
function plot_delta_stats(data, groupNames, markerName)

% Left-right difference
delta = [ ...
    data(:,1)-data(:,2), ...
    data(:,3)-data(:,4), ...
    data(:,5)-data(:,6), ...
    data(:,7)-data(:,8)];

allData = delta(:);

group = [ ...
    repmat(groupNames(1), size(delta,1),1);
    repmat(groupNames(2), size(delta,1),1);
    repmat(groupNames(3), size(delta,1),1);
    repmat(groupNames(4), size(delta,1),1)];

[p_anova,~,stats] = anova1(allData, group, 'off');
% [p, tbl, stats1] = anova1(delta, [], 'off');
c = multcompare(stats, 'CType','tukey-kramer', 'Display','off');

means = mean(delta,1);
sems  = std(delta,[],1)/sqrt(size(delta,1));

figure('Color','w'); hold on

bar(1:4, means, 0.7, 'FaceColor',[0.6 0.7 0.9])
errorbar(1:4, means, sems, 'k', 'linestyle','none','LineWidth',1.5)

for i = 1:4
    scatter(ones(size(delta(:,i)))*i, delta(:,i), 45, 'k', 'filled', ...
        'jitter','on','jitterAmount',0.08)
end

yline(0,'--')

set(gca,'XTick',1:4,'XTickLabel',groupNames,'FontSize',14)
ylabel('\Delta area (%)')
title(sprintf('\\Delta %s (Ipsilateral - Contralateral) \nANOVA p = %.3f)', ...
    markerName, p_anova),'Interpreter','tex');

box off
xlim([0.5 4.5])

%% =====================================================
% Add significance stars
if p_anova<0.05
    % =====================================================
    yMax = max(means + sems) + 0.3;
    step = 0.25;
    lineCount = 0;

    for i = 1:size(c,1)
        g1 = c(i,1);
        g2 = c(i,2);
        p  = c(i,6);

        if p < 0.05
            lineCount = lineCount + 1;
            y = yMax + lineCount*step;

            % draw line
            plot([g1 g1 g2 g2], [y-0.05 y y y-0.05], 'k', 'LineWidth',1.2)

            % significance stars
            if p < 0.001
                stars = '***';
            elseif p < 0.01
                stars = '**';
            else
                stars = '*';
            end

            text(mean([g1 g2]), y+0.03, stars, ...
                'HorizontalAlignment','center', ...
                'FontSize',16)
        end
    end
%     ylim([min(delta(:))-0.5 yMax + (lineCount+1)*step]);
else
    text(2.5, max(means+sems)+0.5, 'n.s.', ...
        'HorizontalAlignment','center', ...
        'FontSize',16);

end



end



function plot_LR_4groups_paired(g1L, g1R, g2L, g2R, g3L, g3R, g4L, g4R, groupNames, yLabelStr)

    % ---- Order: 10^10GC, 10^9GC, PHPeB, PBS ----
    dataL = {g1L, g2L, g3L, g4L};
    dataR = {g1R, g2R, g3R, g4R};

    meansL = cellfun(@mean, dataL);
    meansR = cellfun(@mean, dataR);

    semL = cellfun(@(x) std(x)/sqrt(numel(x)), dataL);
    semR = cellfun(@(x) std(x)/sqrt(numel(x)), dataR);

    x = 1:4;
    dx = 0.18;

    figure('Color','w');
    hold on;

    % ---- Bars ----
    b1 = bar(x-dx, meansL, 0.35); % Left
    b1.FaceColor = [0 0 1];        % First group/stack of bars
    b2 = bar(x+dx, meansR, 0.35); % Right
    b2.FaceColor = [0.67578 0.84375 0.89844];

    % ---- Error bars ----
    errorbar(x-dx, meansL, semL, 'k', ...
        'LineStyle','none', 'LineWidth',1);

    errorbar(x+dx, meansR, semR, 'k', ...
        'LineStyle','none', 'LineWidth',1);

    % ---- Paired points + lines ----
    for i = 1:4
        L = dataL{i};
        R = dataR{i};

        n = min(numel(L), numel(R));
        L = L(1:n);
        R = R(1:n);

        jitter = (rand(n,1)-0.5)*0.06;

        xL = (x(i)-dx) + jitter;
        xR = (x(i)+dx) + jitter;

        % paired lines
        for k = 1:n
            plot([xL(k) xR(k)], [L(k) R(k)], '-', ...
                'Color',[0.4 0.4 0.4], 'LineWidth',1);
        end

        % points
        plot(xL, L, 'k.', 'MarkerSize',16);
        plot(xR, R, 'k.', 'MarkerSize',16);
    end

    % ---- Axes ----
    set(gca, 'XTick', x, 'XTickLabel', groupNames);
    ylabel(yLabelStr);
    box on;
    grid on;
    set(gca,'FontSize',16);

    % ---- Legend ----
    legend([b1 b2], {'Ipsilateral','Contralateral'});
end


% function plot_LR_2groups_paired(fullL, fullR, pbsL, pbsR, groupNames, yLabelStr)
% 
%     % ---- Order: Full virus, PBS ----
%     dataL = {fullL, pbsL};
%     dataR = {fullR, pbsR};
% 
%     meansL = cellfun(@mean, dataL);
%     meansR = cellfun(@mean, dataR);
% 
%     semL = cellfun(@(x) std(x)/sqrt(numel(x)), dataL);
%     semR = cellfun(@(x) std(x)/sqrt(numel(x)), dataR);
% 
%     x = 1:2;
%     dx = 0.18;
% 
%     figure('Color','w'); hold on;
% 
%     % Bars
%     b1 = bar(x-dx, meansL, 0.35);  % Left
%     b2 = bar(x+dx, meansR, 0.35);  % Right
% 
%     % Error bars
%     errorbar(x-dx, meansL, semL, 'k', 'LineStyle','none', 'LineWidth',1);
%     errorbar(x+dx, meansR, semR, 'k', 'LineStyle','none', 'LineWidth',1);
% %     for i=1:length(x)
% %     line([x(i)-dx-0.05, x(i)-dx+0.05], [meansL(i), meansL(i)], 'color', 'k', 'linewidth', 1);
% %     
% %     line([x(i)+dx-0.05, x(i)+dx+0.05], [meansR(i), meansR(i)], 'color', 'k', 'linewidth', 1);
% %     end
% 
%     % ---- Paired points + lines ----
%     for i = 1:2
%         L = dataL{i};
%         R = dataR{i};
% 
%         n = min(numel(L), numel(R));
%         L = L(1:n); 
%         R = R(1:n);
% 
%         jitter = (rand(n,1)-0.5)*0.06;
% 
%         xL = (x(i)-dx) + jitter;
%         xR = (x(i)+dx) + jitter;
% 
%         % paired lines
%         for k = 1:n
%             plot([xL(k) xR(k)], [L(k) R(k)], '-', ...
%                 'Color',[0.4 0.4 0.4], 'LineWidth',1);
%         end
% 
%         % points
%         plot(xL, L, 'k.', 'MarkerSize',16);
%         plot(xR, R, 'k.', 'MarkerSize',16);
%     end
% 
%     % Axes
%     set(gca,'XTick',x,'XTickLabel',groupNames);
% %     xtickangle(15);
%     ylabel(yLabelStr);
% %     title([yLabelStr ' — Paired Left vs Right']);
%     box on; grid on;
% 
%     % Legend (explicit handles)
%     legend([b1 b2], {'Left','Right'});
%     set(gca,'FontSize',16);
% end

