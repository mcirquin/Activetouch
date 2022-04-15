function [Rdcatch, Rdstab] = GFcatchfrictionvsbeforetrial(maxGFmatrix, meanstabGFmatrix, nparticipants)
%Barplots of the GF peaks of friction catch trials vs the normal trials
%before the catch
%maxGFmatrix : matrix with all the peak GF values for all the trials of
%all the participants
%Rdcatch, Rdstab : two 4 x nparticipants matrices containing the values of
%the relative differences for the 4 different catches (lines) of each
%participant (columns)

%% 1. GF peaks
%% HF to LF (catch) vs HF normal under minimal weight

%HF to LF catch friction min weight
nessaisbis=3;
mincatchLF=zeros(nessaisbis, nparticipants);
mincatchLF(1,:)=maxGFmatrix(43,:);
mincatchLF(2,:)=maxGFmatrix(55,:);
mincatchLF(3,:)=maxGFmatrix(103,:);
meanmincatchLFsub=mean(mincatchLF, 2);
meanmincatchLF=mean(meanmincatchLFsub);
meanmincatchLFparticipants=mean(mincatchLF);

%Min HF adaptation
nessais2bis = 17;
minHF=zeros(nessais2bis, nparticipants);
minHF(1,:)=maxGFmatrix(42,:);
minHF(2,:)=maxGFmatrix(70,:);
minHF(3,:)=maxGFmatrix(71,:);
minHF(4,:)=maxGFmatrix(72,:);
minHF(5,:)=maxGFmatrix(89,:);
minHF(6,:)=maxGFmatrix(90,:);
minHF(7,:)=maxGFmatrix(113,:);
minHF(8,:)=maxGFmatrix(114,:);
minHF(9,:)=maxGFmatrix(20,:);
minHF(10,:)=maxGFmatrix(32,:);
minHF(11,:)=maxGFmatrix(51,:);
minHF(12,:)=maxGFmatrix(98,:);
minHF(13,:)=maxGFmatrix(99,:);
minHF(14,:)=maxGFmatrix(100,:);
minHF(15,:)=maxGFmatrix(116,:);
minHF(16,:)=maxGFmatrix(117,:);
minHF(17,:)=maxGFmatrix(118,:);
meanminHFsub=mean(minHF, 2);
meanminHF=mean(meanminHFsub);
meanminHFparticipants=mean(minHF);

%% HF to LF (catch) vs HF normal under maximal weight
%HF to LF catch friction max weight
nessais=4;
maxcatchLF=zeros(nessais, nparticipants);
maxcatchLF(1,:)=maxGFmatrix(13,:);
maxcatchLF(2,:)=maxGFmatrix(25,:);
maxcatchLF(3,:)=maxGFmatrix(73,:);
maxcatchLF(4,:)=maxGFmatrix(91,:);
meanmaxcatchLFsub=mean(maxcatchLF, 2);
meanmaxcatchLF=mean(meanmaxcatchLFsub);
meanmaxcatchLFparticipants=mean(maxcatchLF);

nessais4bis=18;
maxHF=zeros(nessais4bis, nparticipants);
maxHF(1,:)=maxGFmatrix(38,:);
maxHF(2,:)=maxGFmatrix(39,:);
maxHF(3,:)=maxGFmatrix(40,:);
maxHF(4,:)=maxGFmatrix(68,:);
maxHF(5,:)=maxGFmatrix(86,:);
maxHF(6,:)=maxGFmatrix(87,:);
maxHF(7,:)=maxGFmatrix(110,:);
maxHF(8,:)=maxGFmatrix(111,:);
maxHF(9,:)=maxGFmatrix(22,:);
maxHF(10,:)=maxGFmatrix(23,:);
maxHF(11,:)=maxGFmatrix(24,:);
maxHF(12,:)=maxGFmatrix(34,:);
maxHF(13,:)=maxGFmatrix(35,:);
maxHF(14,:)=maxGFmatrix(36,:);
maxHF(15,:)=maxGFmatrix(53,:);
maxHF(16,:)=maxGFmatrix(54,:);
maxHF(17,:)=maxGFmatrix(102,:);
maxHF(18,:)=maxGFmatrix(120,:);
meanmaxHFsub=mean(maxHF, 2);
meanmaxHF=mean(meanmaxHFsub);
meanmaxHFparticipants=mean(maxHF);

%% LF to HF (catch) vs HF normal under minimal weight
%LF to HF catch friction min weight
nessais=4;
mincatchHF=zeros(nessais, nparticipants);
mincatchHF(1,:)=maxGFmatrix(19,:);
mincatchHF(2,:)=maxGFmatrix(31,:);
mincatchHF(3,:)=maxGFmatrix(49,:);
mincatchHF(4,:)=maxGFmatrix(97,:);
meanmincatchHFsub=mean(mincatchHF, 2); %moyenne pour tous les sujets
meanmincatchHF=mean(meanmincatchHFsub);%moyenne des moyennes de tous les sujets
meanmincatchHFparticipants=mean(mincatchHF);

%min weight LF adaptation 
nessais3 = 16;
minLF=zeros(nessais3, nparticipants);
minLF(1,:)=maxGFmatrix(17,:);
minLF(2,:)=maxGFmatrix(18,:);
minLF(3,:)=maxGFmatrix(30,:);
minLF(4,:)=maxGFmatrix(64,:);
minLF(5,:)=maxGFmatrix(65,:);
minLF(6,:)=maxGFmatrix(66,:);
minLF(7,:)=maxGFmatrix(77,:);
minLF(8,:)=maxGFmatrix(78,:);
minLF(9,:)=maxGFmatrix(96,:);
minLF(10,:)=maxGFmatrix(44,:);
minLF(11,:)=maxGFmatrix(56,:);
minLF(12,:)=maxGFmatrix(57,:);
minLF(13,:)=maxGFmatrix(80,:);
minLF(14,:)=maxGFmatrix(81,:);
minLF(15,:)=maxGFmatrix(82,:);
minLF(16,:)=maxGFmatrix(104,:);
meanminLFsub=mean(minLF, 2);
meanminLF=mean(meanminLFsub);
meanminLFparticipants=mean(minLF);

%% LF to HF (catch) vs HF normal under maximal weight
%LF to HF catch friction max weight
nessaisbis=3;
maxcatchHF=zeros(nessaisbis, nparticipants);
maxcatchHF(1,:)=maxGFmatrix(67,:);
maxcatchHF(2,:)=maxGFmatrix(85,:);
maxcatchHF(3,:)=maxGFmatrix(109,:);
meanmaxcatchHFsub=mean(maxcatchHF, 2);
meanmaxcatchHF=mean(meanmaxcatchHFsub);
meanmaxcatchHFparticipants=mean(maxcatchHF);

%max LF adaptation
nessais3bis=20;
maxLF=zeros(nessais3bis, nparticipants);
maxLF(1,:)=maxGFmatrix(14,:);
maxLF(2,:)=maxGFmatrix(15,:);
maxLF(3,:)=maxGFmatrix(26,:);
maxLF(4,:)=maxGFmatrix(27,:);
maxLF(5,:)=maxGFmatrix(28,:);
maxLF(6,:)=maxGFmatrix(62,:);
maxLF(7,:)=maxGFmatrix(74,:);
maxLF(8,:)=maxGFmatrix(75,:);
maxLF(9,:)=maxGFmatrix(92,:);
maxLF(10,:)=maxGFmatrix(93,:);
maxLF(11,:)=maxGFmatrix(94,:);
maxLF(12,:)=maxGFmatrix(46,:);
maxLF(13,:)=maxGFmatrix(47,:);
maxLF(14,:)=maxGFmatrix(48,:);
maxLF(15,:)=maxGFmatrix(59,:);
maxLF(16,:)=maxGFmatrix(60,:);
maxLF(17,:)=maxGFmatrix(84,:);
maxLF(18,:)=maxGFmatrix(106,:);
maxLF(19,:)=maxGFmatrix(107,:);
maxLF(20,:)=maxGFmatrix(108,:);
meanmaxLFsub=mean(maxLF, 2);
meanmaxLF=mean(meanmaxLFsub);
meanmaxLFparticipants=mean(maxLF);

%% 2. Stabilization GF

%% HF to LF (catch) vs HF normal under minimal weight
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

%HF to LF catch friction min weight

nessaisbis=3;
minstabcatchLF=zeros(nessaisbis, nparticipants);
minstabcatchLF(1,:)=meanstabGFmatrix(43,:);
minstabcatchLF(2,:)=meanstabGFmatrix(55,:);
minstabcatchLF(3,:)=meanstabGFmatrix(103,:);
meanminstabcatchLFsub=mean(minstabcatchLF, 2);
meanminstabcatchLF=mean(meanminstabcatchLFsub);
meanminstabcatchLFparticipants=mean(minstabcatchLF);

%% HF to LF (catch) vs HF normal under maximal weight

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

%HF to LF catch friction max weight
nessais=4;
maxstabcatchLF=zeros(nessais, nparticipants);
maxstabcatchLF(1,:)=meanstabGFmatrix(13,:);
maxstabcatchLF(2,:)=meanstabGFmatrix(25,:);
maxstabcatchLF(3,:)=meanstabGFmatrix(73,:);
maxstabcatchLF(4,:)=meanstabGFmatrix(91,:);
meanmaxstabcatchLFsub=mean(maxstabcatchLF, 2);
meanmaxstabcatchLF=mean(meanmaxstabcatchLFsub);
meanmaxstabcatchLFparticipants=mean(maxstabcatchLF);

%% LF to HF (catch) vs LF normal under minimal weight

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
minstabcatchHF=zeros(nessais, nparticipants);
minstabcatchHF(1,:)=meanstabGFmatrix(19,:);
minstabcatchHF(2,:)=meanstabGFmatrix(31,:);
minstabcatchHF(3,:)=meanstabGFmatrix(49,:);
minstabcatchHF(4,:)=meanstabGFmatrix(97,:);
meanminstabcatchHFsub=mean(minstabcatchHF, 2); %moyenne pour tous les sujets
meanminstabcatchHF=mean(meanminstabcatchHFsub);%moyenne des moyennes de tous les sujets
meanminstabcatchHFparticipants=mean(minstabcatchHF);

%% LF to HF (catch) vs LF normal under maximal weight

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
maxstabcatchHF=zeros(nessaisbis, nparticipants);
maxstabcatchHF(1,:)=meanstabGFmatrix(67,:);
maxstabcatchHF(2,:)=meanstabGFmatrix(85,:);
maxstabcatchHF(3,:)=meanstabGFmatrix(109,:);
meanmaxstabcatchHFsub=mean(maxstabcatchHF, 2);
meanmaxstabcatchHF=mean(meanmaxstabcatchHFsub);
meanmaxstabcatchHFparticipants=mean(maxstabcatchHF);

%{
%% Boxplots of GF peaks
A=reshape(minHF,1,[]).'; %normal puis le catch
B=reshape(mincatchLF,1,[]).';
C=reshape(maxHF,1,[]).';
D=reshape(maxcatchLF,1,[]).';
E=reshape(minLF,1,[]).';
F=reshape(mincatchHF,1,[]).';
G=reshape(maxLF,1,[]).';
H=reshape(maxcatchHF,1,[]).';
x1 = [A;B;C;D];
x2=[E;F;G;H];
sizeA=size(A,1);
sizeB=size(B,1);
sizeC=size(C,1);
sizeD=size(D,1);
sizeE=size(E,1);
sizeF=size(F,1);
sizeG=size(G,1);
sizeH=size(H,1);
%Premier subplot
group1=ones(1,sizeA);
group2=ones(1,sizeB)*2;
group3=ones(1,sizeC)*3;
group4=ones(1,sizeD)*4;
group1 = [group1,group2,group3,group4];
%Deuxième subplot
group5=ones(1,sizeE)*1;
group6=ones(1,sizeF)*2;
group7=ones(1,sizeG)*3;
group8=ones(1,sizeH)*4;
group2=[group5,group6,group7,group8];
positions = [1 1.25 2 2.25]; %les positions sont les mêmes dans les deux cas
%Figure
figure;
subplot(1,4,1)
boxplot(x1,group1, 'positions', positions);
set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4))])
set(gca,'xticklabel',{'Minimal weight','Maximal weight'})
ylabel('Grip force peak (N)')
ylim([0 30])
blue=[0 0.4470 0.7410];
bordeau=[0.6350 0.0780 0.1840];
lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
set(lines, 'LineWidth',1, 'Color', [0 0 0]);
color = [([0.6350 0.0780 0.1840]);([0 0.4470 0.7410]);([0.6350 0.0780 0.1840]);([0 0.4470 0.7410]);];
h = findobj(gca,'Tag','Box');
for j=1:length(h)
   patch(get(h(j),'XData'),get(h(j),'YData'),color(j,:),'FaceAlpha',0.85);
end
c = get(gca, 'Children');
hleg1 = legend(c(1:2), 'High friction normal', 'Low friction catch', 'Location', 'north' );
subplot(1,4,2)
boxplot(x2,group2, 'positions', positions);
set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4))])
set(gca,'xticklabel',{'Minimal weight','Maximal weight'})
ylabel('Grip force peak (N)');
ylim([0 30])
blue=[0 0.4470 0.7410];
bordeau=[0.6350 0.0780 0.1840];
lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
set(lines, 'LineWidth',1, 'Color', [0 0 0]);
color = [([0 0.4470 0.7410]);([0.6350 0.0780 0.1840]);([0 0.4470 0.7410]);([0.6350 0.0780 0.1840])];
h = findobj(gca,'Tag','Box');
for j=1:length(h)
   patch(get(h(j),'XData'),get(h(j),'YData'),color(j,:),'FaceAlpha',0.85);
end
c = get(gca, 'Children');
hleg1 = legend(c(1:2), 'Low friction normal', 'High friction catch', 'Location', 'north');
text(-0.75, 31,{'Comparison of GF peaks for friction catch and normal trials';''}, 'FontSize', 14)
%% Boxplots of GF during stabilization
I=reshape(minstabHF,1,[]).';
J=reshape(minstabcatchLF,1,[]).';
K=reshape(maxstabHF,1,[]).';
L=reshape(maxstabcatchLF,1,[]).';
M=reshape(minstabLF,1,[]).';
N=reshape(minstabcatchHF,1,[]).';
O=reshape(maxstabLF,1,[]).';
P=reshape(maxstabcatchHF,1,[]).';
x3=[I;J;K;L];
x4 = [M;N;O;P];
sizeI=size(I,1);
sizeJ=size(J,1);
sizeK=size(K,1);
sizeL=size(L,1);
sizeM=size(M,1);
sizeN=size(N,1);
sizeO=size(O,1);
sizeP=size(P,1);
%Troisième subplot
group9=ones(1,sizeI);
group10=ones(1,sizeJ)*2;
group11=ones(1,sizeK)*3;
group12=ones(1,sizeL)*4;
group3 = [group9,group10,group11,group12];
%Quatrième subplot
group13=ones(1,sizeM)*1;
group14=ones(1,sizeN)*2;
group15=ones(1,sizeO)*3;
group16=ones(1,sizeP)*4;
group4=[group13,group14,group15,group16];
positions = [1 1.25 2 2.25];
subplot(1,4,3)
boxplot(x3,group3, 'positions', positions);
set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4))])
set(gca,'xticklabel',{'Minimal weight','Maximal weight'})
ylabel('Grip force (N)')
ylim([0 30])
blue=[0 0.4470 0.7410];
bordeau=[0.6350 0.0780 0.1840];
lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
set(lines, 'LineWidth',1, 'Color', [0 0 0]);
color = [([0.6350 0.0780 0.1840]);([0 0.4470 0.7410]);([0.6350 0.0780 0.1840]);([0 0.4470 0.7410]);];
h = findobj(gca,'Tag','Box');
for j=1:length(h)
   patch(get(h(j),'XData'),get(h(j),'YData'),color(j,:),'FaceAlpha',0.85);
end
c = get(gca, 'Children');
hleg1 = legend(c(1:2), 'High friction normal', 'Low friction catch', 'Location', 'north' );
subplot(1,4,4)
boxplot(x4,group4, 'positions', positions);
set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4))])
set(gca,'xticklabel',{'Minimal weight','Maximal weight'})
ylabel('Grip force (N)');
ylim([0 30])
blue=[0 0.4470 0.7410];
bordeau=[0.6350 0.0780 0.1840];
lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
set(lines, 'LineWidth',1, 'Color', [0 0 0]);
color = [([0 0.4470 0.7410]);([0.6350 0.0780 0.1840]);([0 0.4470 0.7410]);([0.6350 0.0780 0.1840])];
h = findobj(gca,'Tag','Box');
for j=1:length(h)
   patch(get(h(j),'XData'),get(h(j),'YData'),color(j,:),'FaceAlpha',0.85);
end
c = get(gca, 'Children');
hleg1 = legend(c(1:2), 'Low friction normal', 'High friction catch', 'Location', 'north');
text(-1.2, 31,{'Comparison of GF during stabilization for friction catch and normal trials';''}, 'FontSize', 14)
%text(-2.4, -3.2,{'Elderly participants';''}, 'FontSize', 20)
%}


%% Mean bars + slopes
%color cell 
C = {'k','b','r','g',[1 0.9 0.1],[.5 .6 .7],[.8 .2 .6],[0.7 0.5 0.9],'c','m',[0.9 0.4 1],[0.2 0.8 0.7],[0.7 0.4 0.1],[0.4 0.55 0.8],[0.3 0.6 0.3]}; % Cell array of colros.
%{
baraxis=9;% axis limits of the plots

% Premier subplot
subplot(1,4,1)
y=[meanminHF meanmincatchLF; meanmaxHF meanmaxcatchLF];% ;meanminLF meanmincatchHF ; meanmaxLF meanmaxcatchHF];
b = bar(y);
set(gca,'XTickLabel',{'Minimal weight';' Maximal weight'})%;'Max weight LF';'Max weight HF'});
b(1).FaceColor = 'b';
b(2).FaceColor = 'r';
b(2).LineStyle = '--';
b(2).LineWidth = 1.5;
b(2).FaceAlpha = 0.7;
b(1).FaceAlpha = 0.7;
legend('High friction normal','Low friction catch', 'Location','north')
%title('Stabilization GF for friction catch and adaptation trials - Elderly participants')
%title('Stabilization GF for friction catch and adaptation trials - Young participants')
ylabel('Grip force peak (N)')
ylim([0 baraxis])

xdata= get (b(2),'XData');
xoffset1 = -0.14;
xoffset2 = 0.14;


hold on
y1 = meanminHFparticipants;
y2 = meanmincatchLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(1)+xoffset1,y1(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(1)+xoffset2,y2(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(1)+xoffset1,xdata(1)+xoffset2], [y1(i), y2(i)], 'Color', C{i},'HandleVisibility','off')
end

hold on
y3 = meanmaxHFparticipants;
y4 = meanmaxcatchLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(2)+xoffset1,y3(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(2)+xoffset2,y4(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(2)+xoffset1,xdata(2)+xoffset2], [y3(i), y4(i)], 'Color', C{i},'HandleVisibility','off')
end

%Deuxième subplot

subplot(1,4,2)
ysecond=[meanminLF meanmincatchHF ; meanmaxLF meanmaxcatchHF];
b = bar(ysecond);
set(gca,'XTickLabel',{'Minimal weight';' Maximal weight'})%;'Max weight LF';'Max weight HF'});
b(1).FaceColor = 'r';
b(2).FaceColor = 'b';
b(2).LineStyle = '--';
b(2).LineWidth = 1.5;
b(2).FaceAlpha = 0.7;
b(1).FaceAlpha = 0.7;
legend('Low friction normal','High friction catch', 'Location','north')
%title('Stabilization GF for friction catch and adaptation trials - Elderly participants')
%title('Stabilization GF for friction catch and adaptation trials - Young participants')
ylabel('Grip force peak (N)')
ylim([0 baraxis])

hold on
y5 = meanminLFparticipants;
y6 = meanmincatchHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(1)+xoffset1,y5(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(1)+xoffset2,y6(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(1)+xoffset1,xdata(1)+xoffset2], [y5(i), y6(i)], 'Color', C{i},'HandleVisibility','off')
end

hold on
y7 = meanmaxLFparticipants;
y8 = meanmaxcatchHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(2)+xoffset1,y7(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(2)+xoffset2,y8(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(2)+xoffset1,xdata(2)+xoffset2], [y7(i), y8(i)], 'Color', C{i},'HandleVisibility','off')
end

text(-1.7, 31,{'Comparison of GF peaks for friction catch and normal trials';''}, 'FontSize', 14)
% Troisième subplot
subplot(1,4,3)
ythird=[meanminstabHF meanminstabcatchLF; meanmaxstabHF meanmaxstabcatchLF];% ;meanminLF meanmincatchHF ; meanmaxLF meanmaxcatchHF];
b = bar(ythird);
set(gca,'XTickLabel',{'Minimal weight';' Maximal weight'})%;'Max weight LF';'Max weight HF'});
b(1).FaceColor = 'b';
b(2).FaceColor = 'r';
b(2).LineStyle = '--';
b(2).LineWidth = 1.5;
b(2).FaceAlpha = 0.7;
b(1).FaceAlpha = 0.7;
legend('High friction normal','Low friction catch', 'Location','north')
%title('Stabilization GF for friction catch and adaptation trials - Elderly participants')
%title('Stabilization GF for friction catch and adaptation trials - Young participants')
ylabel('Mean grip force (N)')
ylim([0 baraxis])


hold on
y9 = meanminstabHFparticipants;
y10 = meanminstabcatchLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(1)+xoffset1,y9(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(1)+xoffset2,y10(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(1)+xoffset1,xdata(1)+xoffset2], [y9(i), y10(i)], 'Color', C{i},'HandleVisibility','off')
end

hold on
y11 = meanmaxstabHFparticipants;
y12 = meanmaxstabcatchLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(2)+xoffset1,y11(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(2)+xoffset2,y12(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(2)+xoffset1,xdata(2)+xoffset2], [y11(i), y12(i)], 'Color', C{i},'HandleVisibility','off')
end

%Quatrième subplot

subplot(1,4,4)
yforth=[meanminstabLF meanminstabcatchHF ; meanmaxstabLF meanmaxstabcatchHF];
b = bar(yforth);
set(gca,'XTickLabel',{'Minimal weight';' Maximal weight'})%;'Max weight LF';'Max weight HF'});
b(1).FaceColor = 'r';
b(2).FaceColor = 'b';
b(2).LineStyle = '--';
b(2).LineWidth = 1.5;
b(2).FaceAlpha = 0.7;
b(1).FaceAlpha = 0.7;
legend('Low friction normal','High friction catch', 'Location','north')
%title('Stabilization GF for friction catch and adaptation trials - Elderly participants')
%title('Stabilization GF for friction catch and adaptation trials - Young participants')
ylabel('Mean grip force (N)')
ylim([0 baraxis])

hold on
y13 = meanminstabLFparticipants;
y14 = meanminstabcatchHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(1)+xoffset1,y13(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(1)+xoffset2,y14(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(1)+xoffset1,xdata(1)+xoffset2], [y13(i), y14(i)], 'Color', C{i},'HandleVisibility','off')
end

hold on
y15 = meanmaxstabLFparticipants;
y16 = meanmaxstabcatchHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(2)+xoffset1,y15(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(2)+xoffset2,y16(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(2)+xoffset1,xdata(2)+xoffset2], [y15(i), y16(i)], 'Color', C{i},'HandleVisibility','off')
end

text(-2.3, 31,{'Comparison of GF during stabilization for friction catch and normal trials';''}, 'FontSize', 14)
%}
%% Quantification GF of LF friction catch with respect to normal trials (GF peaks and stabilization)
%Computation of mean relative differences for weight cactches (one vector
%for catches and one for stabilization)
Rdcatch = [];
Rdstab = [];

axis=10;% axis limits of the plots
xfriction1=linspace(0,axis);
yfriction1=linspace(0,axis);
Rdvector = []; %vector saving the relative differnce values for each participant

figure(2);

for i= 1:nparticipants
    %GF peaks: Comparison friction under min weight
    pos1 = [0.1 0.6 0.25 0.35];
    subplot('Position',pos1);
    figure(2); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(2); hold on;
    plot(meanmincatchLFparticipants(i),meanminHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction catch [N]')
    ylabel('GF - High friction normal [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Min weight')
    
    %relative difference 
    pos2 = [0.4 0.6 0.05 0.35];
    subplot('Position',pos2);
    Rd1 = (abs(meanmincatchLFparticipants(i)-meanminHFparticipants(i))/min(meanmincatchLFparticipants(i),meanminHFparticipants(i)))*100;
    Rdvector(1,i) = Rd1;
    Rdcatch(1,i) = Rd1;
    figure(2); hold on;
    plot(0.5,Rd1,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    set(gcf,'position',[0,0,200,500])
    ylabel('Relative change in GF [%]')
     if i == nparticipants
        figure(2);hold on;
        errorbar(0.5,mean(Rdvector(1,:),2),std(Rdvector(1,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end

    %GF peaks: Comparison friction under max weight
    pos3 = [0.1 0.1 0.25 0.35];
    subplot('Position',pos3); hold on;
    figure(2); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(2); hold on;
    plot(meanmaxcatchLFparticipants(i),meanmaxHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction catch [N]')
    ylabel('GF - High friction normal [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Max weight')
    
    %relative difference
    pos4 = [0.4 0.1 0.05 0.35];
    subplot('Position',pos4);
    Rd2 = (abs(meanmaxcatchLFparticipants(i) - meanmaxHFparticipants(i))/min(meanmaxcatchLFparticipants(i),meanmaxHFparticipants(i)))*100;
    Rdvector(2,i) = Rd2;
    Rdcatch(2,i) = Rd2;
    figure(2); hold on;
    plot(0.5,Rd2,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    set(gcf,'position',[0,0,200,500])
    ylabel('Relative change in GF [%]')
    if i == nparticipants
        figure(2);hold on;
        errorbar(0.5,mean(Rdvector(2,:),2),std(Rdvector(2,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end

end
%suptitle('Grip Force magnitude of GF peaks for low friction catch trials');

figure(3);
for i= 1:nparticipants
    %Stab: Comparison friction under min weight
    pos1 = [0.1 0.6 0.25 0.35];
    subplot('Position',pos1);
    figure(3); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(3); hold on;
    plot(meanminstabcatchLFparticipants(i),meanminstabHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction catch [N]')
    ylabel('GF - High friction normal [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Min weight')
    
    %relative difference 
    pos2 = [0.4 0.6 0.05 0.35];
    subplot('Position',pos2);
    Rd1stab = (abs(meanminstabcatchLFparticipants(i)-meanminstabHFparticipants(i))/min(meanminstabcatchLFparticipants(i),meanminstabHFparticipants(i)))*100;
    Rdvector(3,i) = Rd1stab;
    Rdstab(1,i) = Rd1stab;
    figure(3); hold on;
    plot(0.5,Rd1stab,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    set(gcf,'position',[0,0,200,500])
    ylabel('Relative change in GF [%]')
    if i == nparticipants
        figure(3);hold on;
        errorbar(0.5,mean(Rdvector(3,:),2),std(Rdvector(3,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end

    %stab: Comparison friction under max weight
    pos3 = [0.1 0.1 0.25 0.35];
    subplot('Position',pos3); hold on;
    figure(3); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(3); hold on;
    plot(meanmaxstabcatchLFparticipants(i),meanmaxstabHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction catch [N]')
    ylabel('GF - High friction normal [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Max weight')
    
    %relative difference 
    pos4 = [0.4 0.1 0.05 0.35];
    subplot('Position',pos4);
    Rd2stab = (abs(meanmaxstabcatchLFparticipants(i) - meanmaxstabHFparticipants(i))/min(meanmaxstabcatchLFparticipants(i),meanmaxstabHFparticipants(i)))*100;
    Rdvector(4,i) = Rd2stab;
    Rdstab(2,i) = Rd2stab;
    figure(3); hold on;
    plot(0.5,Rd2stab,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    set(gcf,'position',[0,0,200,500])
    ylabel('Relative change in GF [%]')
    if i == nparticipants
        figure(3);hold on;
        errorbar(0.5,mean(Rdvector(4,:),2),std(Rdvector(4,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
end
%suptitle('Grip Force magnitude during stabilization for low friction catch trials');


%% Quantification GF of HF friction catch with respect to normal trials (GF peaks and stabilization)

figure(4);

for i= 1:nparticipants
    %GF peaks: Comparison friction under min weight
    pos1 = [0.1 0.6 0.25 0.35];
    subplot('Position',pos1);
    figure(4); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(4); hold on;
    plot(meanminLFparticipants(i),meanmincatchHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction normal [N]')
    ylabel('GF - High friction catch [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Min weight')
    
    %relative difference 
    pos2 = [0.4 0.6 0.05 0.35];
    subplot('Position',pos2);
    Rd3 = (abs(meanminLFparticipants(i)-meanmincatchHFparticipants(i))/min(meanminLFparticipants(i),meanmincatchHFparticipants(i)))*100;
    Rdvector(5,i) = Rd3;
    Rdcatch(3,i) = Rd3;
    figure(4); hold on;
    plot(0.5,Rd3,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    set(gcf,'position',[0,0,200,500])
    ylabel('Relative change in GF [%]') 
    if i == nparticipants
        figure(4);hold on;
        errorbar(0.5,mean(Rdvector(5,:),2),std(Rdvector(5,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end

    %GF peaks: Comparison friction under max weight
    pos3 = [0.1 0.1 0.25 0.35];
    subplot('Position',pos3); hold on;
    figure(4); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(4); hold on;
    plot(meanmaxLFparticipants(i),meanmaxcatchHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction normal [N]')
    ylabel('GF - High friction catch [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Max weight')
    
    %relative difference 
    pos4 = [0.4 0.1 0.05 0.35];
    subplot('Position',pos4);
    Rd4 = (abs(meanmaxLFparticipants(i)-meanmaxcatchHFparticipants(i))/min(meanmaxLFparticipants(i),meanmaxcatchHFparticipants(i)))*100;
    Rdvector(6,i) = Rd4;
    Rdcatch(4,i) = Rd4;
    figure(4); hold on;
    plot(0.5,Rd4,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    set(gcf,'position',[0,0,200,500])
    ylabel('Relative change in GF [%]') 
    if i == nparticipants
        figure(4);hold on;
        errorbar(0.5,mean(Rdvector(6,:),2),std(Rdvector(6,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end

end
%suptitle('Grip Force magnitude of GF peaks for high friction catch trials');

figure(5);
for i= 1:nparticipants
    %Stab: Comparison friction under min weight
    pos1 = [0.1 0.6 0.25 0.35];
    subplot('Position',pos1);
    figure(5); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(5); hold on;
    plot(meanminstabLFparticipants(i),meanminstabcatchHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction normal [N]')
    ylabel('GF - High friction catch [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Min weight')
    
    %relative difference 
    pos2 = [0.4 0.6 0.05 0.35];
    subplot('Position',pos2);
    Rd3stab = (abs(meanminstabLFparticipants(i)-meanminstabcatchHFparticipants(i))/min(meanminstabLFparticipants(i),meanminstabcatchHFparticipants(i)))*100;
    Rdvector(7,i) = Rd3stab;
    Rdstab(3,i) = Rd3stab;
    figure(5); hold on;
    plot(0.5,Rd3stab,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    set(gcf,'position',[0,0,200,500])
    ylabel('Relative change in GF [%]') 
    if i == nparticipants
        figure(5);hold on;
        errorbar(0.5,mean(Rdvector(7,:),2),std(Rdvector(7,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end

    %stab: Comparison friction under max weight
    pos3 = [0.1 0.1 0.25 0.35];
    subplot('Position',pos3); hold on;
    figure(5); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(5); hold on;
    plot(meanmaxstabLFparticipants(i),meanmaxstabcatchHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction normal [N]')
    ylabel('GF - High friction catch [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Max weight')
    
    %relative difference 
    pos4 = [0.4 0.1 0.05 0.35];
    subplot('Position',pos4);
    Rd4stab = (abs(meanmaxstabLFparticipants(i)-meanmaxstabcatchHFparticipants(i))/min(meanmaxstabLFparticipants(i),meanmaxstabcatchHFparticipants(i)))*100;
    Rdvector(8,i) = Rd4stab;
    Rdstab(4,i) = Rd4stab;
    figure(5); hold on;
    plot(0.5,Rd4stab,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    set(gcf,'position',[0,0,200,500])
    ylabel('Relative change in GF [%]') 
    if i == nparticipants
        figure(5);hold on;
        errorbar(0.5,mean(Rdvector(8,:),2),std(Rdvector(8,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
end
%suptitle('Grip Force magnitude during stabilization for high friction catch trials');
end
