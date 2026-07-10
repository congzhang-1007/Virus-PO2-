clc
clear all

%% **********full virus
load('F:\Virus PO2 Data\Data\Full Virus\18AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\Full Virus\18AC\Angio\stalls.mat');
AC18_stall_events = stall_events;
AC18_stall_length = stall_length;
AC18_stall_proportion = stall_proportion;
AC18_vessel = size(stallogram,1);

load('F:\Virus PO2 Data\Data\Full Virus\19AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\Full Virus\19AC\Angio\stalls.mat');
AC19_stall_events = stall_events;
AC19_stall_length = stall_length;
AC19_stall_proportion = stall_proportion;
AC19_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\Full Virus\34AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\Full Virus\34AC\Angio\stalls.mat');
AC34_stall_events = stall_events;
AC34_stall_length = stall_length;
AC34_stall_proportion = stall_proportion;
AC34_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\Full Virus\37AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\Full Virus\37AC\Angio\stalls.mat');
AC37_stall_events = stall_events;
AC37_stall_length = stall_length;
AC37_stall_proportion = stall_proportion;
AC37_vessel = size(stallogram,1);



load('F:\Virus PO2 Data\Data\Full Virus\67AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\Full Virus\67AC\Angio\stalls.mat');
AC67_stall_events = stall_events;
AC67_stall_length = stall_length;
AC67_stall_proportion = stall_proportion;
AC67_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\Full Virus\68AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\Full Virus\68AC\Angio\stalls.mat');
AC68_stall_events = stall_events;
AC68_stall_length = stall_length;
AC68_stall_proportion = stall_proportion;
AC68_vessel = size(stallogram,1);


%% **********PBS
load('F:\Virus PO2 Data\Data\PBS\58AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\PBS\58AC\Angio\stalls.mat');
AC58_stall_events = stall_events;
AC58_stall_length = stall_length;
AC58_stall_proportion = stall_proportion;
AC58_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\PBS\59AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\PBS\59AC\Angio\stalls.mat');
AC59_stall_events = stall_events;
AC59_stall_length = stall_length;
AC59_stall_proportion = stall_proportion;
AC59_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\PBS\45AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\PBS\45AC\Angio\stalls.mat');
AC45_stall_events = stall_events;
AC45_stall_length = stall_length;
AC45_stall_proportion = stall_proportion;
AC45_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\PBS\46AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\PBS\46AC\Angio\stalls.mat');
AC46_stall_events = stall_events;
AC46_stall_length = stall_length;
AC46_stall_proportion = stall_proportion;
AC46_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\PBS\64AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\PBS\64AC\Angio\stalls.mat');
AC64_stall_events = stall_events;
AC64_stall_length = stall_length;
AC64_stall_proportion = stall_proportion;
AC64_vessel = size(stallogram,1);

load('F:\Virus PO2 Data\Data\PBS\77AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\PBS\77AC\Angio\stalls.mat');
AC77_stall_events = stall_events;
AC77_stall_length = stall_length;
AC77_stall_proportion = stall_proportion;
AC77_vessel = size(stallogram,1);


%% 10 to 9 virus
load('F:\Virus PO2 Data\Data\10to9 virus\60AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\10to9 virus\60AC\Angio\stalls.mat');
AC60_stall_events = stall_events;
AC60_stall_length = stall_length;
AC60_stall_proportion = stall_proportion;
AC60_vessel = size(stallogram,1);




load('F:\Virus PO2 Data\Data\10to9 virus\62AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\10to9 virus\62AC\Angio\stalls.mat');
AC62_stall_events = stall_events;
AC62_stall_length = stall_length;
AC62_stall_proportion = stall_proportion;
AC62_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\10to9 virus\63AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\10to9 virus\63AC\Angio\stalls.mat');
AC63_stall_events = stall_events;
AC63_stall_length = stall_length;
AC63_stall_proportion = stall_proportion;
AC63_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\10to9 virus\69AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\10to9 virus\69AC\Angio\stalls.mat');
AC69_stall_events = stall_events;
AC69_stall_length = stall_length;
AC69_stall_proportion = stall_proportion;
AC69_vessel = size(stallogram,1);

load('F:\Virus PO2 Data\Data\10to9 virus\85AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\10to9 virus\85AC\Angio\stalls.mat');
AC85_stall_events = stall_events;
AC85_stall_length = stall_length;
AC85_stall_proportion = stall_proportion;
AC85_vessel = size(stallogram,1);

load('F:\Virus PO2 Data\Data\10to9 virus\96AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\10to9 virus\96AC\Angio\stalls.mat');
AC96_stall_events = stall_events;
AC96_stall_length = stall_length;
AC96_stall_proportion = stall_proportion;
AC96_vessel = size(stallogram,1);



%% PHP.eB
load('F:\Virus PO2 Data\Data\PHP.eB\03AD\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\PHP.eB\03AD\Angio\stalls.mat');
AD03_stall_events = stall_events;
AD03_stall_length = stall_length;
AD03_stall_proportion = stall_proportion;
AD03_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\PHP.eB\04AD\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\PHP.eB\04AD\Angio\stalls.mat');
AD04_stall_events = stall_events;
AD04_stall_length = stall_length;
AD04_stall_proportion = stall_proportion;
AD04_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\PHP.eB\05AD\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\PHP.eB\05AD\Angio\stalls.mat');
AD05_stall_events = stall_events;
AD05_stall_length = stall_length;
AD05_stall_proportion = stall_proportion;
AD05_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\PHP.eB\06AD\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\PHP.eB\06AD\Angio\stalls.mat');
AD06_stall_events = stall_events;
AD06_stall_length = stall_length;
AD06_stall_proportion = stall_proportion;
AD06_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\PHP.eB\08AD\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\PHP.eB\08AD\Angio\stalls.mat');
AD08_stall_events = stall_events;
AD08_stall_length = stall_length;
AD08_stall_proportion = stall_proportion;
AD08_vessel = size(stallogram,1);


load('F:\Virus PO2 Data\Data\PHP.eB\95AC\Angio\stalls_quantify.mat');
load('F:\Virus PO2 Data\Data\PHP.eB\95AC\Angio\stalls.mat');
AC95_stall_events = stall_events;
AC95_stall_length = stall_length;
AC95_stall_proportion = stall_proportion;
AC95_vessel = size(stallogram,1);



PHPEB_F_stall_events=[ AD05_stall_events   AD06_stall_events AD08_stall_events];
PHPEB_F_stall_length=[ AD05_stall_length   AD06_stall_length AD08_stall_length];
PHPEB_F_stall_proportion=[ AD05_stall_proportion   AD06_stall_proportion AD08_stall_proportion];
PHPEB_F_vessles=[ AD05_vessel   AD06_vessel AD08_vessel];

PHPEB_M_stall_events=[ AD03_stall_events   AD04_stall_events AC95_stall_events];
PHPEB_M_stall_length=[AD03_stall_length   AD04_stall_length AC95_stall_length];
PHPEB_M_stall_proportion=[AD03_stall_proportion  AD04_stall_proportion AC95_stall_proportion];
PHPEB_M_vessels=[ AD03_vessel   AD04_vessel AC95_vessel];
PHPEB_vessels =[PHPEB_F_vessles PHPEB_M_vessels];

% %% **********10 to 7 virus
% load('F:\Virus PO2 Data\New folder\10 to 7 virus\48AC\Angio\mips\cleaned\stalls_quantify.mat');
% AC48_stall_events = stall_events;
% AC48_stall_length = stall_length;
% AC48_stall_proportion = stall_proportion;
% 
% load('F:\Virus PO2 Data\New folder\10 to 7 virus\50AC\Angio\mips\cleaned\stalls_quantify.mat');
% AC50_stall_events = stall_events;
% AC50_stall_length = stall_length;
% AC50_stall_proportion = stall_proportion;


Full_F_stall_enents=[AC18_stall_events  AC19_stall_events AC37_stall_events ];
Full_F_stall_length=[AC18_stall_length AC19_stall_length AC37_stall_length]; 
% Full_F_stall_length=[ AC19_stall_length AC37_stall_length]; 
Full_F_stall_proportion=[AC18_stall_proportion AC19_stall_proportion AC37_stall_proportion];
% Full_F_stall_proportion=[ AC19_stall_proportion AC37_stall_proportion];
Full_F_vessels=[ AC18_vessel AC19_vessel AC37_vessel];
% Full_F_stall_proportion=[ AC19_stall_proportion ];

Full_M_stall_enents=[AC34_stall_events   AC67_stall_events AC68_stall_events];
Full_M_stall_length=[AC34_stall_length    AC67_stall_length AC68_stall_length]; 
% Full_M_stall_length=[AC34_stall_length AC40_stall_length ]; 
% Full_M_stall_proportion=[AC34_stall_proportion  ];
% Full_M_stall_proportion=[AC34_stall_proportion AC40_stall_proportion AC41_stall_proportion AC67_stall_proportion AC68_stall_proportion];
Full_M_stall_proportion=[AC34_stall_proportion   AC67_stall_proportion AC68_stall_proportion];
% Full_M_stall_proportion=[AC34_stall_proportion   AC67_stall_proportion AC68_stall_proportion];

% Full_M_stall_proportion=[AC34_stall_proportion AC40_stall_proportion ];
Full_M_vessels=[AC34_vessel   AC67_vessel AC68_vessel];
Full_vessels =[Full_F_vessels Full_M_vessels];

PBS_F_stall_events=[ AC59_stall_events   AC46_stall_events AC77_stall_events];
PBS_F_stall_length=[ AC59_stall_length   AC46_stall_length AC77_stall_length];
% PBS_F_stall_proportion=[ AC59_stall_proportion  ];
PBS_F_stall_proportion=[ AC59_stall_proportion  AC46_stall_proportion AC77_stall_proportion];
PBS_F_vessels=[AC59_vessel  AC46_vessel AC77_vessel];
 

PBS_M_stall_events=[AC58_stall_events   AC45_stall_events AC64_stall_events];
PBS_M_stall_length=[AC58_stall_length   AC45_stall_length AC64_stall_length];
PBS_M_stall_proportion=[AC58_stall_proportion  AC45_stall_proportion AC64_stall_proportion];
PBS_M_vessels=[AC58_vessel  AC45_vessel AC64_vessel];
% PBS_M_stall_proportion=[  AC45_stall_proportion ];
PBS_vessels =[PBS_F_vessels PBS_M_vessels];

% virus10to7_stall_events=[AC48_stall_events AC50_stall_events];
% virus10to7_stall_length=[AC48_stall_length AC50_stall_length];
% virus10to7_stall_proportion=[AC48_stall_proportion AC50_stall_proportion];

virus10to9_F_stall_events=[AC60_stall_events AC85_stall_events AC96_stall_events];
virus10to9_F_stall_length=[AC60_stall_length AC85_stall_length AC96_stall_length];
virus10to9_F_stall_proportion=[AC60_stall_proportion AC85_stall_proportion AC96_stall_proportion];
virus10to9_F_vessels=[AC60_vessel  AC85_vessel AC96_vessel];

virus10to9_M_stall_events=[  AC62_stall_events AC63_stall_events AC69_stall_events];
virus10to9_M_stall_length=[  AC62_stall_length  AC63_stall_length AC69_stall_length];
% virus10to9_M_stall_length=[  AC62_stall_length  AC63_stall_length];
% virus10to9_M_stall_proportion=[  AC62_stall_proportion AC63_stall_proportion];
% virus10to9_M_stall_proportion=[ AC61_stall_proportion AC62_stall_proportion AC63_stall_proportion AC69_stall_proportion] ;
virus10to9_M_stall_proportion=[  AC62_stall_proportion AC63_stall_proportion AC69_stall_proportion] ;
virus10to9_M_vessels=[AC62_vessel  AC63_vessel AC69_vessel];
virus10to9_vessesls=[virus10to9_F_vessels virus10to9_M_vessels];

%***********plot stall length

% 
% figL = figure;
% set(gcf,'color','w');
% for i=1:length(Full_F_stall_length)
%     f1=plot(1,Full_F_stall_length(i),'rs','MarkerFaceColor','r','MarkerSize',10);
%     hold on
% end
% 
% 
% 
% for i=1:length(Full_M_stall_length)
%     m1=plot(1,Full_M_stall_length(i),'bo','MarkerFaceColor','b','MarkerSize',10);
%     hold on
% end
% 
% Full_stall_length = [Full_F_stall_length Full_M_stall_length];
% Full_stall_length_mean = mean(Full_stall_length);
% Full_stall_length_ste =std(Full_stall_length)/sqrt(length(Full_stall_length));
% errorbar(1,Full_stall_length_mean,Full_stall_length_ste,'k', 'linewidth', 1.5);
% line([0.95, 1.05], [Full_stall_length_mean, Full_stall_length_mean], 'color', 'k', 'linewidth', 2);
% 
% 
% 
% for i=1:length(virus10to9_F_stall_length)
%     f1=plot(2,virus10to9_F_stall_length(i),'rs','MarkerFaceColor','r','MarkerSize',10);
%     hold on
% end
% 
% 
% 
% for i=1:length(virus10to9_M_stall_length)
%     plot(2,virus10to9_M_stall_length(i),'bo','MarkerFaceColor','b','MarkerSize',10);
%     hold on
% end
% 
% virus10to9_stall_length = [virus10to9_F_stall_length virus10to9_M_stall_length];
% virus10to9_stall_length_mean = mean(virus10to9_stall_length);
% virus10to9_stall_length_ste =std(virus10to9_stall_length)/sqrt(length(virus10to9_stall_length));
% errorbar(2,virus10to9_stall_length_mean,virus10to9_stall_length_ste,'k', 'linewidth', 1.5);
% line([1.95, 2.05], [virus10to9_stall_length_mean, virus10to9_stall_length_mean], 'color', 'k', 'linewidth', 2);
% 
% for i=1:length(PHPEB_F_stall_length)
%     plot(3,PHPEB_F_stall_length(i),'rs','MarkerFaceColor','r','MarkerSize',10);
%     hold on
% end
% 
% for i=1:length(PHPEB_M_stall_length)
%     plot(3,PHPEB_M_stall_length(i),'bo','MarkerFaceColor','b','MarkerSize',10);
%     hold on
% end
% 
% PHPEB_stall_length = [PHPEB_F_stall_length PHPEB_M_stall_length];
% PHPEB_stall_length_mean = mean(PHPEB_stall_length);
% PHPEB_stall_length_ste =std(PHPEB_stall_length)/sqrt(length(PHPEB_stall_length));
% errorbar(3,PHPEB_stall_length_mean,PHPEB_stall_length_ste,'k', 'linewidth', 1.5);
% line([2.95, 3.05], [PHPEB_stall_length_mean, PHPEB_stall_length_mean], 'color', 'k', 'linewidth', 2);
% 
% 
% 
% for i=1:length(PBS_F_stall_length)
%     plot(4,PBS_F_stall_length(i),'rs','MarkerFaceColor','r','MarkerSize',10);
%     hold on
% end
% 
% for i=1:length(PBS_M_stall_length)
%     plot(4,PBS_M_stall_length(i),'bo','MarkerFaceColor','b','MarkerSize',10);
%     hold on
% end
% 
% PBS_stall_length = [PBS_F_stall_length PBS_M_stall_length];
% PBS_stall_length_mean = mean(PBS_stall_length);
% PBS_stall_length_ste =std(PBS_stall_length)/sqrt(length(PBS_stall_length));
% errorbar(4,PBS_stall_length_mean,PBS_stall_length_ste,'k', 'linewidth', 1.5);
% line([3.95, 4.05], [PBS_stall_length_mean, PBS_stall_length_mean], 'color', 'k', 'linewidth', 2);
% 
% 
% 
% 
% 
% 
% 
% 
% xlim([0 4.5]);
% x_axis=[1 2 3 4];
% set(gca,'FontSize',18);
% set(gca,'XTicklabel',{' '});
% xtl = {'10^{10}GC', '10^{9}GC ','PHP.eB','PBS'};
% set(gca,'XTick',x_axis,'XTickLabel',xtl,'FontSize',18);
% % h = my_xticklabels(gca,x_axis,xtl,'FontSize',18);
% % xtickangle(15);
% set(get(gca,'YLabel'),'String','Stall Duration (#frames)','fontsize',19');
% set(gca,'LineWidth',2); 
% legend([f1 m1],'Female','Male');
% legend boxoff  
% xlabh = get(gca,'XLabel');
% job.figSize = [9 3];
% job.figRes = 300;
% % Specify window units
% set(figL, 'units', 'inches');
% set(figL, 'Position', [0.1 0.1 job.figSize(1) job.figSize(2)])
% set(figL, 'PaperPosition', [0.1 0.1 job.figSize(1) job.figSize(2)]);
% set(xlabh,'Position',get(xlabh,'Position')-[0 0.6 0]);
% box off
% 
% 
% exportgraphics(gcf,'stalling duration.png','Resolution',600);
% 
% 
% %***********plot stall proportion
% 
% figL = figure;
% set(gcf,'color','w');
% for i=1:length(Full_F_stall_proportion)
%     f1=plot(1,Full_F_stall_proportion(i),'rs','MarkerFaceColor','r','MarkerSize',10);
%     hold on
% end
% 
% 
% 
% for i=1:length(Full_M_stall_proportion)
%     m1=plot(1,Full_M_stall_proportion(i),'bo','MarkerFaceColor','b','MarkerSize',10);
%     hold on
% end
% 
% 
% 
% Full_stall_proportion_mean = mean([Full_F_stall_proportion Full_M_stall_proportion]);
% Full_stall_proportion_ste =std([Full_F_stall_proportion Full_M_stall_proportion])/sqrt(length([Full_F_stall_proportion Full_M_stall_proportion]));
% errorbar(1,Full_stall_proportion_mean,Full_stall_proportion_ste,'k', 'linewidth', 1.5);
% line([0.95, 1.05], [Full_stall_proportion_mean, Full_stall_proportion_mean], 'color', 'k', 'linewidth', 2);
% 
% for i=1:length(virus10to9_F_stall_proportion)
%     f1=plot(2,virus10to9_F_stall_proportion(i),'rs','MarkerFaceColor','r','MarkerSize',10);
%     hold on
% end
% 
% 
% 
% for i=1:length(virus10to9_M_stall_proportion)
%     plot(2,virus10to9_M_stall_proportion(i),'bo','MarkerFaceColor','b','MarkerSize',10);
%     hold on
% end
% virus10to9_stall_proportion = [virus10to9_F_stall_proportion virus10to9_M_stall_proportion];
% virus10to9_stall_proportion_mean = mean(virus10to9_stall_proportion);
% virus10to9_stall_proportion_ste =std(virus10to9_stall_proportion)/sqrt(length(virus10to9_stall_proportion));
% errorbar(2,virus10to9_stall_proportion_mean,virus10to9_stall_proportion_ste,'k', 'linewidth', 1.5);
% line([1.95, 2.05], [virus10to9_stall_proportion_mean, virus10to9_stall_proportion_mean], 'color', 'k', 'linewidth', 2);
% 
% for i=1:length(PHPEB_F_stall_proportion)
%     plot(3,PHPEB_F_stall_proportion(i),'rs','MarkerFaceColor','r','MarkerSize',10);
%     hold on
% end
% 
% for i=1:length(PHPEB_M_stall_proportion)
%     plot(3,PHPEB_M_stall_proportion(i),'bo','MarkerFaceColor','b','MarkerSize',10);
%     hold on
% end
% PHPEB_stall_proportion = [PHPEB_F_stall_proportion PHPEB_M_stall_proportion];
% PHPEB_stall_proportion_mean = mean(PHPEB_stall_proportion);
% PHPEB_stall_proportion_ste =std(PHPEB_stall_proportion)/sqrt(length(PHPEB_stall_proportion));
% errorbar(3,PHPEB_stall_proportion_mean,PHPEB_stall_proportion_ste,'k', 'linewidth', 1.5);
% line([2.95, 3.05], [PHPEB_stall_proportion_mean, PHPEB_stall_proportion_mean], 'color', 'k', 'linewidth', 2);
% 
% 
% for i=1:length(PBS_F_stall_proportion)
%     plot(4,PBS_F_stall_proportion(i),'rs','MarkerFaceColor','r','MarkerSize',10);
%     hold on
% end
% 
% for i=1:length(PBS_M_stall_proportion)
%     plot(4,PBS_M_stall_proportion(i),'bo','MarkerFaceColor','b','MarkerSize',10);
%     hold on
% end
% 
% PBS_stall_proportion = [PBS_F_stall_proportion PBS_M_stall_proportion];
% PBS_stall_proportion_mean = mean(PBS_stall_proportion);
% PBS_stall_proportion_ste =std(PBS_stall_proportion)/sqrt(length(PBS_stall_proportion));
% errorbar(4,PBS_stall_proportion_mean,PBS_stall_proportion_ste,'k', 'linewidth', 1.5);
% line([3.95, 4.05], [PBS_stall_proportion_mean, PBS_stall_proportion_mean], 'color', 'k', 'linewidth', 2);
% 
% 
% 
% 
% 
% 
% 
% 
% 
% xlim([0 4.5]);
% x_axis=[1 2 3 4];
% set(gca,'FontSize',18);
% set(gca,'XTicklabel',{' '});
% xtl = {'10^{10}GC', '10^{9}GC ','PHP.eB','PBS'};
% h = my_xticklabels(gca,x_axis,xtl,'FontSize',18);
% set(get(gca,'YLabel'),'String','Proportion of stalling capillaries(%)','fontsize',19');
% set(gca,'LineWidth',2); 
% legend([f1 m1],'Female','Male');
% legend boxoff  
% xlabh = get(gca,'XLabel');
% job.figSize = [9 3];
% job.figRes = 300;
% % Specify window units
% set(figL, 'units', 'inches');
% set(figL, 'Position', [0.1 0.1 job.figSize(1) job.figSize(2)])
% set(figL, 'PaperPosition', [0.1 0.1 job.figSize(1) job.figSize(2)]);
% set(xlabh,'Position',get(xlabh,'Position')-[0 0.6 0]);
% box off
% 
% exportgraphics(gcf,'stalling proportion.png','Resolution',600);



%% ==============================
%  INPUT DATA
%  ==============================

% Stalling proportion example structure
% Each group: 3 males + 3 females

g10_10_m = Full_M_stall_proportion ; % 10^10 GC males
g10_10_f =  Full_F_stall_proportion; % 10^10 GC females

g10_9_m  = virus10to9_M_stall_proportion; % 10^9 GC males
g10_9_f  = virus10to9_F_stall_proportion;

gphp_m   = PHPEB_M_stall_proportion; % PHP.eB males
gphp_f   = PHPEB_F_stall_proportion;

gpbs_m   = PBS_M_stall_proportion; % PBS males
gpbs_f   = PBS_F_stall_proportion;

%% ==============================
%  COMBINE DATA
%  ==============================

data = [ ...
    g10_10_m g10_10_f ...
    g10_9_m  g10_9_f ...
    gphp_m   gphp_f ...
    gpbs_m   gpbs_f ];

%% Group labels

group = [ ...
    repmat({'10^{10} GC'},1,6) ...
    repmat({'10^{9} GC'},1,6) ...
    repmat({'PHP.eB'},1,6) ...
    repmat({'PBS'},1,6)];

%% Sex labels

sex = [ ...
    repmat({'Male'},1,3) repmat({'Female'},1,3) ...
    repmat({'Male'},1,3) repmat({'Female'},1,3) ...
    repmat({'Male'},1,3) repmat({'Female'},1,3) ...
    repmat({'Male'},1,3) repmat({'Female'},1,3)];

%% ==============================
%  TWO-WAY ANOVA
%  ==============================

[p,tbl,stats] = anovan(data,{group sex}, ...
    'model','interaction', ...
    'varnames',{'Group','Sex'});

disp(tbl)

%% ==============================
%  POST-HOC TESTS
%  ==============================

% figure
% multcompare(stats,'Dimension',1) % compare groups
% 
% figure
% multcompare(stats,'Dimension',2) % compare sexes

%% ==============================
%  PLOT DATA
%  ==============================

groups = {'10^{10} GC','10^{9} GC','PHP.eB','PBS'};

figure;
set(gcf,'color','w');
hold on

colors = lines(4);

for i = 1:4

    % extract group data
    idx = strcmp(group,groups{i});
    gdata = data(idx);
    gsex  = sex(idx);

    % males and females
    males = gdata(strcmp(gsex,'Male'));
    females = gdata(strcmp(gsex,'Female'));

    x = i;

    % male points
    scatter(x-0.08*ones(size(males)),males,80,'b','filled')

    % female points
    scatter(x+0.08*ones(size(females)),females,80,'r','filled')

    % mean and SD
    m = mean(gdata);
    sd = std(gdata)/sqrt(length(gdata));

    errorbar(x,m,sd,'k','LineWidth',1.5);
    line([i-0.05, i+0.05], [m, m], 'color', 'k', 'linewidth', 2);

end

xlim([0.5 4.5])
set(gca,'XTick',1:4,'XTickLabel',groups)

ylabel('Proportion of stalling capillaries(%)')
% title('Capillary Stalling by Group and Sex')

legend({'Male','Female'},'Location','northeast')
set(gca,'FontSize',16);
box on
grid on
ylim([2,6])
exportgraphics(gcf,'stalling proportion.png','Resolution',600);

g10_10_m = Full_M_stall_length ; % 10^10 GC males
g10_10_f =  Full_F_stall_length; % 10^10 GC females

g10_9_m  = virus10to9_M_stall_length; % 10^9 GC males
g10_9_f  = virus10to9_F_stall_length;

gphp_m   = PHPEB_M_stall_length; % PHP.eB males
gphp_f   = PHPEB_F_stall_length;

gpbs_m   = PBS_M_stall_length; % PBS males
gpbs_f   = PBS_F_stall_length;

%% ==============================
%  COMBINE DATA
%  ==============================

data = [ ...
    g10_10_m g10_10_f ...
    g10_9_m  g10_9_f ...
    gphp_m   gphp_f ...
    gpbs_m   gpbs_f ];

%% Group labels

group = [ ...
    repmat({'10^{10} GC'},1,6) ...
    repmat({'10^{9} GC'},1,6) ...
    repmat({'PHP.eB'},1,6) ...
    repmat({'PBS'},1,6)];

%% Sex labels

sex = [ ...
    repmat({'Male'},1,3) repmat({'Female'},1,3) ...
    repmat({'Male'},1,3) repmat({'Female'},1,3) ...
    repmat({'Male'},1,3) repmat({'Female'},1,3) ...
    repmat({'Male'},1,3) repmat({'Female'},1,3)];

%% ==============================
%  TWO-WAY ANOVA
%  ==============================

[p,tbl,stats] = anovan(data,{group sex}, ...
    'model','interaction', ...
    'varnames',{'Group','Sex'});

disp(tbl)

%% ==============================
%  POST-HOC TESTS
%  ==============================

figure
multcompare(stats,'Dimension',1) % compare groups

figure
multcompare(stats,'Dimension',2) % compare sexes

%% ==============================
%  PLOT DATA
%  ==============================

groups = {'10^{10} GC','10^{9} GC','PHP.eB','PBS'};

figure
set(gcf,'color','w');
hold on

colors = lines(4);

for i = 1:4

    % extract group data
    idx = strcmp(group,groups{i});
    gdata = data(idx);
    gsex  = sex(idx);

    % males and females
    males = gdata(strcmp(gsex,'Male'));
    females = gdata(strcmp(gsex,'Female'));

    x = i;

    % male points
    scatter(x-0.08*ones(size(males)),males,80,'b','filled')

    % female points
    scatter(x+0.08*ones(size(females)),females,80,'r','filled')

    % mean and SD
    m = mean(gdata);
    sd = std(gdata)/sqrt(length(gdata));

    errorbar(x,m,sd,'k','LineWidth',1.5);
    line([i-0.05, i+0.05], [m, m], 'color', 'k', 'linewidth', 2);

end

xlim([0.5 4.5])
set(gca,'XTick',1:4,'XTickLabel',groups)

ylabel('Stall Duration (#frames)')
% title('Capillary Stalling by Group and Sex')

legend({'Male','Female'},'Location','northwest')
legend({'Male','Female'},'Location','northeast')
set(gca,'FontSize',16);
box on
grid on
ylim([3 5])
exportgraphics(gcf,'stalling duration.png','Resolution',600);
