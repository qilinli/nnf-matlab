function plotDataMulti(Acc,dataSets,classifiers,xDescription,yDescription,saveFigName)
% Yifeng Li, Mar 22, 2012

%example:
% Acc=zeros(3,9);
% Acc(1,:)=[0.8987,0.8945,0.8912,0.8863,0.8940,0.8893,0.8571,0.8467,0.8008];
% Acc(2,:)=[0.9708,0.9689,0.9689,0.9616,0.9683,0.9675,0.9604,0.9576,0.9155];
% Acc(3,:)=[0.9225,0.9252,0.9252,0.9219,0.9221,0.9264,0.9298,0.9253,0.8781];
% std=0.05*rand(3,9);
% dataSets={'Colon';'Leukemia';'Prostate7-3-02'};
% classifiers={'KSR-NNLS';'KSR-l_1NNLS';'KSR-l_1LS';'SR-NNLS';'SR-l_1NNLS';'SR-l_1LS';'NNLS';'SRC2';'KNN'};
% xDescription='High Dimensional Data';
% yDescription='Accuracy';
% saveFigName='MGMS.eps';
% plotBarError(Acc,std,dataSets,classifiers,xDescription,yDescription,saveFigName);
% save('MGMS.mat','Acc','std','dataSets','classifiers');


figure('OuterPosition',[0 0 1000 600],...
'MenuBar','figure',...
'ToolBar','figure',...
'PaperPositionMode','auto');
% plot bar
 hbs=bar(1:numel(dataSets),Acc);
 set(gca,'xlim',[0.5, numel(dataSets)+0.5]);
colormap('default');
 colormap(lines);
%           0         0    1.0000
%          0    0.5000         0
%     1.0000         0         0
%          0    0.7500    0.7500
%     0.7500         0    0.7500
%     0.7500    0.7500         0
%     0.2500    0.2500    0.2500
% colormap(lines(8));
cmp=colormap;
cmp=cmp(1:12,:);
cmp(8,:)=[0.25,0.25,0.75];
cmp(9,:)=[0.25,0.75,0.25];
cmp(10,:)=[0.75,0.25,0.25];
cmp(11,:)=[0.25,0.5,0.5];
cmp(12,:)=[0.5,0.25,0.5];
% cmp(13,:)=[0.5,0.5,0.25];
colormap(cmp);
set(gca,'XTickLabel',dataSets);
legend(classifiers,'Location','NorthEastOutside');
xlabel(xDescription,'FontSize',12);
ylabel(yDescription,'FontSize',12);
hold on

ymax=1;
set(gca,'YLim',[0.5,ymax]);
hold off  
print(gcf,'-depsc2','-r300',saveFigName);
end
