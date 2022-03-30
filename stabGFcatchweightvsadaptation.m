function output = stabGFcatchweightvsadaptation(meanstabGFmatrix, nparticipants)
%Barplots of the stabilization mean Grip Forces of catch weight trials vs 
%the adaptation trials 
%maxGFmatrix : matrix with all the peak GF values for all the trials of
%all the participants

%% Comparison of min weight trials (for HF and LF)
%max to min catch weight LF
nessais=5;
maxtominstabLF=zeros(nessais, nparticipants);
maxtominstabLF(1,:)=meanstabGFmatrix(16,:);
maxtominstabLF(2,:)=meanstabGFmatrix(29,:);
maxtominstabLF(3,:)=meanstabGFmatrix(63,:);
maxtominstabLF(4,:)=meanstabGFmatrix(76,:);
maxtominstabLF(5,:)=meanstabGFmatrix(95,:);
meanmaxtominstabLFsub=mean(maxtominstabLF, 2);
meanmaxtominstabLF=mean(meanmaxtominstabLFsub);

%min LF adaptation 
nessaisbis = 17;
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
minstabLF(17,:)=meanstabGFmatrix(79,:);
meanminstabLFsub=mean(minstabLF, 2);
meanminstabLF=mean(meanminstabLFsub);

%Max to min catch weight HF
nessais2=4;
maxtominstabHF=zeros(nessais2, nparticipants);
maxtominstabHF(1,:)=meanstabGFmatrix(41,:);
maxtominstabHF(2,:)=meanstabGFmatrix(69,:);
maxtominstabHF(3,:)=meanstabGFmatrix(88,:);
maxtominstabHF(4,:)=meanstabGFmatrix(112,:);
meanmaxtominstabHFsub=mean(maxtominstabHF, 2);
meanmaxtominstabHF=mean(meanmaxtominstabHFsub);


%Min HF adaptation
nessais2bis = 18;
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
minstabHF(18,:)=meanstabGFmatrix(115,:);
meanminstabHFsub=mean(minstabHF, 2);
meanminstabHF=mean(meanminstabHFsub);


%% Comparison of max weight trials (for LF and HF)
%%min to max catch weight LF
nessais3=4;
mintomaxstabLF=zeros(nessais3, nparticipants);
mintomaxstabLF(1,:)=meanstabGFmatrix(45,:);
mintomaxstabLF(2,:)=meanstabGFmatrix(58,:);
mintomaxstabLF(3,:)=meanstabGFmatrix(83,:);
mintomaxstabLF(4,:)=meanstabGFmatrix(105,:);
meanmintomaxstabLFsub=mean(mintomaxstabLF, 2);
meanmintomaxstabLF=mean(meanmintomaxstabLFsub);

%max LF adaptation
nessais3bis=21;
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
maxstabLF(21,:)=meanstabGFmatrix(61,:);
meanmaxstabLFsub=mean(maxstabLF, 2);
meanmaxstabLF=mean(meanmaxstabLFsub);

%min to max catch weight HF
nessais4=5;
mintomaxstabHF=zeros(nessais4, nparticipants);
mintomaxstabHF(1,:)=meanstabGFmatrix(21,:);
mintomaxstabHF(2,:)=meanstabGFmatrix(33,:);
mintomaxstabHF(3,:)=meanstabGFmatrix(52,:);
mintomaxstabHF(4,:)=meanstabGFmatrix(101,:);
mintomaxstabHF(5,:)=meanstabGFmatrix(119,:);
meanmintomaxstabHFsub=mean(mintomaxstabHF, 2);
meanmintomaxstabHF=mean(meanmintomaxstabHFsub);

%max HF adaptation
nessais4bis=19;
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
maxstabHF(19,:)=meanstabGFmatrix(37,:);
meanmaxstabHFsub=mean(maxstabHF, 2);
meanmaxstabHF=mean(meanmaxstabHFsub);



%% Plot of the graph
%{
figure
y=[meanminstabLF meanmaxtominstabLF ; meanminstabHF meanmaxtominstabHF ; meanmaxstabLF meanmintomaxstabLF ; meanmaxstabHF meanmintomaxstabHF];
b = bar(y);
set(gca,'XTickLabel',{'Min weight LF';' Min weight HF';'Max weight LF';'Max weight HF'});
b(1).FaceColor = [0 0.4470 0.7410];
b(2).FaceColor = [0.6350 0.0780 0.1840];
legend('Adaptation trials', 'Weight catch trials', 'Location','northeast')
title('Stabilization GF for weight catch and adaptation trials - Elderly participants')
%title('Stabilization GF for weight catch and adaptation trials - Young participants')
ylabel('Mean grip force (N)')
%ylim([0 3])
%}


%% Boxplots
A=reshape(maxtominstabLF,1,[]).';
B=reshape(minstabLF,1,[]).';
C=reshape(maxtominstabHF,1,[]).';
D=reshape(minstabHF,1,[]).';
E=reshape(mintomaxstabLF,1,[]).';
F=reshape(maxstabLF,1,[]).';
G=reshape(mintomaxstabHF,1,[]).';
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
title('Stabilization GF for weight catch and adaptation trials - Elderly participants')
%title('Stabilization GF for weight catch and adaptation trials - Young participants')
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

hleg1 = legend(c(1:2), 'Friction catch trials', 'Adaptation trials' );




end
