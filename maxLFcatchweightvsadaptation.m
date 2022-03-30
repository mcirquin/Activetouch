function output = maxLFcatchweightvsadaptation(maxLFmatrix, nparticipants)
%Barplots of the LF peaks of catch weight trials vs the adaptation trials 
%maxLFmatrix : matrix with all the peak LF values for all the trials of
%all the participants

%% Comparison of min weight trials (for HF and LF)
%max to min catch weight LF
nessais=5;
maxtominLF=zeros(nessais, nparticipants);
maxtominLF(1,:)=maxLFmatrix(16,:);
maxtominLF(2,:)=maxLFmatrix(29,:);
maxtominLF(3,:)=maxLFmatrix(63,:);
maxtominLF(4,:)=maxLFmatrix(76,:);
maxtominLF(5,:)=maxLFmatrix(95,:);
meanmaxtominLFsub=mean(maxtominLF, 2);
meanmaxtominLF=mean(meanmaxtominLFsub);

%min LF adaptation 
nessaisbis = 17;
minLF=zeros(nessaisbis, nparticipants);
minLF(1,:)=maxLFmatrix(17,:);
minLF(2,:)=maxLFmatrix(18,:);
minLF(3,:)=maxLFmatrix(30,:);
minLF(4,:)=maxLFmatrix(64,:);
minLF(5,:)=maxLFmatrix(65,:);
minLF(6,:)=maxLFmatrix(66,:);
minLF(7,:)=maxLFmatrix(77,:);
minLF(8,:)=maxLFmatrix(78,:);
minLF(9,:)=maxLFmatrix(96,:);
minLF(10,:)=maxLFmatrix(44,:);
minLF(11,:)=maxLFmatrix(56,:);
minLF(12,:)=maxLFmatrix(57,:);
minLF(13,:)=maxLFmatrix(80,:);
minLF(14,:)=maxLFmatrix(81,:);
minLF(15,:)=maxLFmatrix(82,:);
minLF(16,:)=maxLFmatrix(104,:);
minLF(17,:)=maxLFmatrix(79,:);
meanminLFsub=mean(minLF, 2);
meanminLF=mean(meanminLFsub);

%Max to min catch weight HF
nessais2=4;
maxtominHF=zeros(nessais2, nparticipants);
maxtominHF(1,:)=maxLFmatrix(41,:);
maxtominHF(2,:)=maxLFmatrix(69,:);
maxtominHF(3,:)=maxLFmatrix(88,:);
maxtominHF(4,:)=maxLFmatrix(112,:);
meanmaxtominHFsub=mean(maxtominHF, 2);
meanmaxtominHF=mean(meanmaxtominHFsub);

%Min HF adaptation
nessais2bis = 18;
minHF=zeros(nessais2bis, nparticipants);
minHF(1,:)=maxLFmatrix(42,:);
minHF(2,:)=maxLFmatrix(70,:);
minHF(3,:)=maxLFmatrix(71,:);
minHF(4,:)=maxLFmatrix(72,:);
minHF(5,:)=maxLFmatrix(89,:);
minHF(6,:)=maxLFmatrix(90,:);
minHF(7,:)=maxLFmatrix(113,:);
minHF(8,:)=maxLFmatrix(114,:);
minHF(9,:)=maxLFmatrix(20,:);
minHF(10,:)=maxLFmatrix(32,:);
minHF(11,:)=maxLFmatrix(51,:);
minHF(12,:)=maxLFmatrix(98,:);
minHF(13,:)=maxLFmatrix(99,:);
minHF(14,:)=maxLFmatrix(100,:);
minHF(15,:)=maxLFmatrix(116,:);
minHF(16,:)=maxLFmatrix(117,:);
minHF(17,:)=maxLFmatrix(118,:);
minHF(18,:)=maxLFmatrix(115,:);
meanminHFsub=mean(minHF, 2);
meanminHF=mean(meanminHFsub);

%% Comparison of max weight trials (for LF and HF)
%%min to max catch weight LF
nessais3=4;
mintomaxLF=zeros(nessais3, nparticipants);
mintomaxLF(1,:)=maxLFmatrix(45,:);
mintomaxLF(2,:)=maxLFmatrix(58,:);
mintomaxLF(3,:)=maxLFmatrix(83,:);
mintomaxLF(4,:)=maxLFmatrix(105,:);
meanmintomaxLFsub=mean(mintomaxLF, 2);
meanmintomaxLF=mean(meanmintomaxLFsub);

%max LF adaptation
nessais3bis=21;
maxLF=zeros(nessais3bis, nparticipants);
maxLF(1,:)=maxLFmatrix(14,:);
maxLF(2,:)=maxLFmatrix(15,:);
maxLF(3,:)=maxLFmatrix(26,:);
maxLF(4,:)=maxLFmatrix(27,:);
maxLF(5,:)=maxLFmatrix(28,:);
maxLF(6,:)=maxLFmatrix(62,:);
maxLF(7,:)=maxLFmatrix(74,:);
maxLF(8,:)=maxLFmatrix(75,:);
maxLF(9,:)=maxLFmatrix(92,:);
maxLF(10,:)=maxLFmatrix(93,:);
maxLF(11,:)=maxLFmatrix(94,:);
maxLF(12,:)=maxLFmatrix(46,:);
maxLF(13,:)=maxLFmatrix(47,:);
maxLF(14,:)=maxLFmatrix(48,:);
maxLF(15,:)=maxLFmatrix(59,:);
maxLF(16,:)=maxLFmatrix(60,:);
maxLF(17,:)=maxLFmatrix(84,:);
maxLF(18,:)=maxLFmatrix(106,:);
maxLF(19,:)=maxLFmatrix(107,:);
maxLF(20,:)=maxLFmatrix(108,:);
maxLF(21,:)=maxLFmatrix(61,:);
meanmaxLFsub=mean(maxLF, 2);
meanmaxLF=mean(meanmaxLFsub);

%min to max catch weight HF
nessais4=5;
mintomaxHF=zeros(nessais4, nparticipants);
mintomaxHF(1,:)=maxLFmatrix(21,:);
mintomaxHF(2,:)=maxLFmatrix(33,:);
mintomaxHF(3,:)=maxLFmatrix(52,:);
mintomaxHF(4,:)=maxLFmatrix(101,:);
mintomaxHF(5,:)=maxLFmatrix(119,:);
meanmintomaxHFsub=mean(mintomaxHF, 2);
meanmintomaxHF=mean(meanmintomaxHFsub);

%max HF adaptation
nessais4bis=19;
maxHF=zeros(nessais4bis, nparticipants);
maxHF(1,:)=maxLFmatrix(38,:);
maxHF(2,:)=maxLFmatrix(39,:);
maxHF(3,:)=maxLFmatrix(40,:);
maxHF(4,:)=maxLFmatrix(68,:);
maxHF(5,:)=maxLFmatrix(86,:);
maxHF(6,:)=maxLFmatrix(87,:);
maxHF(7,:)=maxLFmatrix(110,:);
maxHF(8,:)=maxLFmatrix(111,:);
maxHF(9,:)=maxLFmatrix(22,:);
maxHF(10,:)=maxLFmatrix(23,:);
maxHF(11,:)=maxLFmatrix(24,:);
maxHF(12,:)=maxLFmatrix(34,:);
maxHF(13,:)=maxLFmatrix(35,:);
maxHF(14,:)=maxLFmatrix(36,:);
maxHF(15,:)=maxLFmatrix(53,:);
maxHF(16,:)=maxLFmatrix(54,:);
maxHF(17,:)=maxLFmatrix(102,:);
maxHF(18,:)=maxLFmatrix(120,:);
maxHF(19,:)=maxLFmatrix(37,:);
meanmaxHFsub=mean(maxHF, 2);
meanmaxHF=mean(meanmaxHFsub);


%{
%% Plot of the graph
figure
y=[meanminLF meanmaxtominLF ; meanminHF meanmaxtominHF ; meanmaxLF meanmintomaxLF ; meanmaxHF meanmintomaxHF];
b = bar(y);
set(gca,'XTickLabel',{'Min weight LF';' Min weight HF';'Max weight LF';'Max weight HF'});
b(1).FaceColor = [0 0.4470 0.7410];
b(2).FaceColor = [0.6350 0.0780 0.1840];
legend('Adaptation trials', 'Weight catch trials', 'Location','northeast')
%title('Comparison of LF peaks for weight catch and adaptation trials - Young participants')
title('Comparison of LF peaks for weight catch and adaptation trials - Elderly participants')
ylabel('Grip force peak (N)')
%}

%% Boxplots

A=reshape(maxtominLF,1,[]).';
B=reshape(minLF,1,[]).';
C=reshape(maxtominHF,1,[]).';
D=reshape(minHF,1,[]).';
E=reshape(mintomaxLF,1,[]).';
F=reshape(maxLF,1,[]).';
G=reshape(mintomaxHF,1,[]).';
H=reshape(maxHF,1,[]).';

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
%title('Comparison of LF peaks for weight catch and adaptation trials - Young participants')
title('Comparison of LF peaks for weight catch and adaptation trials - Elderly participants')
ylabel('Grip force peak (N)')
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

hleg1 = legend(c(1:2), 'Weight catch trials', 'Adaptation trials' );




end