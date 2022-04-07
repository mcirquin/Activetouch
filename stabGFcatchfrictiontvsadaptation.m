function output = stabGFcatchfrictiontvsadaptation(meanstabGFmatrix, nparticipants)
%Barplots of the stabilization mean Grip Forces of catch weight trials vs 
%the adaptation trials 
%maxGFmatrix : matrix with all the peak GF values for all the trials of
%all the participants

%% Comparison of min weight trials (for HF and LF)
%HF to LF catch friction min weight

nessaisbis=3;
mincatchLF=zeros(nessaisbis, nparticipants);
mincatchLF(1,:)=meanstabGFmatrix(43,:);
mincatchLF(2,:)=meanstabGFmatrix(55,:);
mincatchLF(3,:)=meanstabGFmatrix(103,:);
meanmincatchLFsub=mean(mincatchLF, 2);
meanmincatchLF=mean(meanmincatchLFsub);
meanmincatchstabLFparticipants=mean(mincatchLF);

%min LF adaptation 
nessaisbis = 16;
minstabLF=zeros(nessaisbis, nparticipants);
minstabLF(1,:)=meanstabGFmatrix(17,:);
minstabLF(2,:)=meanstabGFmatrix(18,:);
minstabLF(3,:)=meanstabGFmatrix(30,:);
minstabLF(4,:)=meanstabGFmatrix(64,:);
minstabLF(5,:)=meanstabGFmatrix(65,:);
minstabLF(6,:)=meanstabGFmatrix(66,:);
minstabLF(7,:)=meanstabGFmatrix(77,:);
minstabLF(8,:)=meanstabGFmatrix(78,:);
minstabLF(9,:)=meanstabGFmatrix(96,:);
minstabLF(10,:)=meanstabGFmatrix(44,:);
minstabLF(11,:)=meanstabGFmatrix(56,:);
minstabLF(12,:)=meanstabGFmatrix(57,:);
minstabLF(13,:)=meanstabGFmatrix(80,:);
minstabLF(14,:)=meanstabGFmatrix(81,:);
minstabLF(15,:)=meanstabGFmatrix(82,:);
minstabLF(16,:)=meanstabGFmatrix(104,:);
meanminstabLFsub=mean(minstabLF, 2);
meanminstabLF=mean(meanminstabLFsub);
meanminstabLFparticipants=mean(minstabLF);

%LF to HF catch friction min weight
nessais=4;
mincatchHF=zeros(nessais, nparticipants);
mincatchHF(1,:)=meanstabGFmatrix(19,:);
mincatchHF(2,:)=meanstabGFmatrix(31,:);
mincatchHF(3,:)=meanstabGFmatrix(49,:);
mincatchHF(4,:)=meanstabGFmatrix(97,:);
meanmincatchHFsub=mean(mincatchHF, 2); %moyenne pour tous les sujets
meanmincatchHF=mean(meanmincatchHFsub);%moyenne des moyennes de tous les sujets
meanmincatchstabHFparticipants=mean(mincatchHF);


%Min HF adaptation
nessais2bis = 17;
minstabHF=zeros(nessais2bis, nparticipants);
minstabHF(1,:)=meanstabGFmatrix(42,:);
minstabHF(2,:)=meanstabGFmatrix(70,:);
minstabHF(3,:)=meanstabGFmatrix(71,:);
minstabHF(4,:)=meanstabGFmatrix(72,:);
minstabHF(5,:)=meanstabGFmatrix(89,:);
minstabHF(6,:)=meanstabGFmatrix(90,:);
minstabHF(7,:)=meanstabGFmatrix(113,:);
minstabHF(8,:)=meanstabGFmatrix(114,:);
minstabHF(9,:)=meanstabGFmatrix(20,:);
minstabHF(10,:)=meanstabGFmatrix(32,:);
minstabHF(11,:)=meanstabGFmatrix(50,:);
minstabHF(11,:)=meanstabGFmatrix(51,:);
minstabHF(12,:)=meanstabGFmatrix(98,:);
minstabHF(13,:)=meanstabGFmatrix(99,:);
minstabHF(14,:)=meanstabGFmatrix(100,:);
minstabHF(15,:)=meanstabGFmatrix(116,:);
minstabHF(16,:)=meanstabGFmatrix(117,:);
minstabHF(17,:)=meanstabGFmatrix(118,:);
meanminstabHFsub=mean(minstabHF, 2);
meanminstabHF=mean(meanminstabHFsub);
meanminstabHFparticipants=mean(minstabHF);

%% Comparison of max weight trials (for LF and HF)

%%HF to LF catch friction max weight
nessais=4;
maxcatchLF=zeros(nessais, nparticipants);
maxcatchLF(1,:)=meanstabGFmatrix(13,:);
maxcatchLF(2,:)=meanstabGFmatrix(25,:);
maxcatchLF(3,:)=meanstabGFmatrix(73,:);
maxcatchLF(4,:)=meanstabGFmatrix(91,:);
meanmaxcatchLFsub=mean(maxcatchLF, 2);
meanmaxcatchLF=mean(meanmaxcatchLFsub);
meanmaxcatchstabLFparticipants=mean(maxcatchLF);

%max LF adaptation
nessais3bis=20;
maxstabLF=zeros(nessais3bis, nparticipants);
maxstabLF(1,:)=meanstabGFmatrix(14,:);
maxstabLF(2,:)=meanstabGFmatrix(15,:);
maxstabLF(3,:)=meanstabGFmatrix(26,:);
maxstabLF(4,:)=meanstabGFmatrix(27,:);
maxstabLF(5,:)=meanstabGFmatrix(28,:);
maxstabLF(6,:)=meanstabGFmatrix(62,:);
maxstabLF(7,:)=meanstabGFmatrix(74,:);
maxstabLF(8,:)=meanstabGFmatrix(75,:);
maxstabLF(9,:)=meanstabGFmatrix(92,:);
maxstabLF(10,:)=meanstabGFmatrix(93,:);
maxstabLF(11,:)=meanstabGFmatrix(94,:);
maxstabLF(12,:)=meanstabGFmatrix(46,:);
maxstabLF(13,:)=meanstabGFmatrix(47,:);
maxstabLF(14,:)=meanstabGFmatrix(48,:);
maxstabLF(15,:)=meanstabGFmatrix(59,:);
maxstabLF(16,:)=meanstabGFmatrix(60,:);
maxstabLF(17,:)=meanstabGFmatrix(84,:);
maxstabLF(18,:)=meanstabGFmatrix(106,:);
maxstabLF(19,:)=meanstabGFmatrix(107,:);
maxstabLF(20,:)=meanstabGFmatrix(108,:);
meanmaxstabLFsub=mean(maxstabLF, 2);
meanmaxstabLF=mean(meanmaxstabLFsub);
meanmaxstabLFparticipants=mean(maxstabLF);

%LF to HF catch friction max weight
nessaisbis=3;
maxcatchHF=zeros(nessaisbis, nparticipants);
maxcatchHF(1,:)=meanstabGFmatrix(67,:);
maxcatchHF(2,:)=meanstabGFmatrix(85,:);
maxcatchHF(3,:)=meanstabGFmatrix(109,:);
meanmaxcatchHFsub=mean(maxcatchHF, 2);
meanmaxcatchHF=mean(meanmaxcatchHFsub);
meanmaxcatchstabHFparticipants=mean(maxcatchHF);

%max HF adaptation
nessais4bis=18;
maxstabHF=zeros(nessais4bis, nparticipants);
maxstabHF(1,:)=meanstabGFmatrix(38,:);
maxstabHF(2,:)=meanstabGFmatrix(39,:);
maxstabHF(3,:)=meanstabGFmatrix(40,:);
maxstabHF(4,:)=meanstabGFmatrix(68,:);
maxstabHF(5,:)=meanstabGFmatrix(86,:);
maxstabHF(6,:)=meanstabGFmatrix(87,:);
maxstabHF(7,:)=meanstabGFmatrix(110,:);
maxstabHF(8,:)=meanstabGFmatrix(111,:);
maxstabHF(9,:)=meanstabGFmatrix(22,:);
maxstabHF(10,:)=meanstabGFmatrix(23,:);
maxstabHF(11,:)=meanstabGFmatrix(24,:);
maxstabHF(12,:)=meanstabGFmatrix(34,:);
maxstabHF(13,:)=meanstabGFmatrix(35,:);
maxstabHF(14,:)=meanstabGFmatrix(36,:);
maxstabHF(15,:)=meanstabGFmatrix(53,:);
maxstabHF(16,:)=meanstabGFmatrix(54,:);
maxstabHF(17,:)=meanstabGFmatrix(102,:);
maxstabHF(18,:)=meanstabGFmatrix(120,:);
meanmaxstabHFsub=mean(maxstabHF, 2);
meanmaxstabHF=mean(meanmaxstabHFsub);
meanmaxstabHFparticipants=mean(maxstabHF);


%% Plot of the graph

figure
y=[meanmincatchLF meanminstabLF; meanmincatchHF meanminstabHF ;meanmaxcatchLF meanmaxstabLF ; meanmaxcatchHF meanmaxstabHF];
b = bar(y);
set(gca,'XTickLabel',{'Min weight LF';' Min weight HF';'Max weight LF';'Max weight HF'});
b(1).FaceColor = [0.6350 0.0780 0.1840];
b(2).FaceColor = [0 0.4470 0.7410];
legend('Weight catch trials','Adaptation trials', 'Location','northeast')
%title('Stabilization GF for friction catch and adaptation trials - Elderly participants')
title('Stabilization GF for friction catch and adaptation trials - Young participants')
ylabel('Mean grip force (N)')
%ylim([0 3])

%% Barplots with subject slopes
%color cell (suppress colors if less participants!)
C = {'k','b','r','g',[1 0.9 0.1],[.5 .6 .7],[.8 .2 .6],[0.7 0.5 0.9],'c','m',[0.9 0.4 1],[0.2 0.8 0.7],[0.7 0.4 0.1],[0.4 0.55 0.8],[0.3 0.6 0.3]}; % Cell array of colros.
xdata= get (b(2),'XData');
xoffset1 = -0.14;
xoffset2 = 0.14;

hold on
y1 = meanmincatchstabLFparticipants;
y2 = meanminstabLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(1)+xoffset1,y1(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(1)+xoffset2,y2(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(1)+xoffset1,xdata(1)+xoffset2], [y1(i), y2(i)], 'Color', C{i},'HandleVisibility','off')
end

hold on
y3 = meanmincatchstabHFparticipants;
y4 = meanminstabHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(2)+xoffset1,y3(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(2)+xoffset2,y4(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(2)+xoffset1,xdata(2)+xoffset2], [y3(i), y4(i)], 'Color', C{i},'HandleVisibility','off')
end

hold on
y5 = meanmaxcatchstabLFparticipants;
y6 = meanmaxstabLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(3)+xoffset1,y5(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(3)+xoffset2,y6(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(3)+xoffset1,xdata(3)+xoffset2], [y5(i), y6(i)], 'Color', C{i},'HandleVisibility','off')
end

hold on
y7 = meanmaxcatchstabHFparticipants;
y8 = meanmaxstabHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(4)+xoffset1,y7(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(4)+xoffset2,y8(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(4)+xoffset1,xdata(4)+xoffset2], [y7(i), y8(i)], 'Color', C{i},'HandleVisibility','off')
end


%% Boxplots
%{
A=reshape(mincatchLF,1,[]).';
B=reshape(minstabLF,1,[]).';
C=reshape(mincatchHF,1,[]).';
D=reshape(minstabHF,1,[]).';
E=reshape(maxcatchLF,1,[]).';
F=reshape(maxstabLF,1,[]).';
G=reshape(maxcatchHF,1,[]).';
H=reshape(maxstabHF,1,[]).';

x = [A;B;C;D;E;F;G;H];

sizeA=size(A,1);
sizeB=size(B,1);
sizeC=size(C,1);
sizeD=size(D,1);
sizeE=size(E,1);
sizeF=size(F,1);
sizeG=size(G,1);
sizeH=size(H,1);

group1=ones(1,sizeA);
group2=ones(1,sizeB)*2;
group3=ones(1,sizeC)*3;
group4=ones(1,sizeD)*4;
group5=ones(1,sizeE)*5;
group6=ones(1,sizeF)*6;
group7=ones(1,sizeG)*7;
group8=ones(1,sizeH)*8;
group = [group1,group2,group3,group4,group5,group6,group7,group8];
positions = [1 1.25 2 2.25 3 3.25 4 4.25];
boxplot(x,group, 'positions', positions);

set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4)) mean(positions(5:6)) mean(positions(7:8)) ])
set(gca,'xticklabel',{'Min weight LF','Min weight HF', 'Max weight LF', 'Max weight HF'})
%title('Stabilization GF for friction catch and adaptation trials - Elderly participants')
title('Stabilization GF for friction catch and adaptation trials - Young participants')
ylabel('Mean grip force (N)')
%ylim([0,20]);

blue=[0 0.4470 0.7410];
bordeau=[0.6350 0.0780 0.1840];
lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
set(lines, 'LineWidth',1, 'Color', [0 0 0]);
color = [([0 0.4470 0.7410]);([0.6350 0.0780 0.1840]);([0 0.4470 0.7410]);([0.6350 0.0780 0.1840]);([0 0.4470 0.7410]);([0.6350 0.0780 0.1840]);([0 0.4470 0.7410]);([0.6350 0.0780 0.1840])];
h = findobj(gca,'Tag','Box');
for j=1:length(h)
   patch(get(h(j),'XData'),get(h(j),'YData'),color(j,:),'FaceAlpha',0.85);
end

c = get(gca, 'Children');

hleg1 = legend(c(1:2), 'Friction catch trials', 'Adaptation' );

%}
end
