function output = GFcatchweightvsbeforetrial(maxGFmatrix, meanstabGFmatrix, nparticipants)
%Barplots of the GF peaks of catch weight trials vs the adaptation trials 
%maxGFmatrix : matrix with all the peak GF values for all the trials of
%all the participants

%% 1. GF peaks

%% Max to Min (catch) vs max normal under low friction

%max to min catch weight LF
nessais=5;
maxtominLF=zeros(nessais, nparticipants);
maxtominLF(1,:)=maxGFmatrix(16,:);
maxtominLF(2,:)=maxGFmatrix(29,:);
maxtominLF(3,:)=maxGFmatrix(63,:);
maxtominLF(4,:)=maxGFmatrix(76,:);
maxtominLF(5,:)=maxGFmatrix(95,:);
meanmaxtominLFsub=mean(maxtominLF, 2);
meanmaxtominLF=mean(meanmaxtominLFsub);
meanmaxtominLFparticipants = mean(maxtominLF);

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
meanmaxLFparticipants = mean(maxLF);

%% Max to Min (catch) vs max normal under high friction
%Max to min catch weight HF
nessais2=4;
maxtominHF=zeros(nessais2, nparticipants);
maxtominHF(1,:)=maxGFmatrix(41,:);
maxtominHF(2,:)=maxGFmatrix(69,:);
maxtominHF(3,:)=maxGFmatrix(88,:);
maxtominHF(4,:)=maxGFmatrix(112,:);
meanmaxtominHFsub=mean(maxtominHF, 2);
meanmaxtominHF=mean(meanmaxtominHFsub);
meanmaxtominHFparticipants = mean(maxtominHF);

%max HF adaptation
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
meanmaxHFparticipants = mean(maxHF);

%% Min to max (catch) vs min normal under low friction
%%min to max catch weight LF
nessais3=4;
mintomaxLF=zeros(nessais3, nparticipants);
mintomaxLF(1,:)=maxGFmatrix(45,:);
mintomaxLF(2,:)=maxGFmatrix(58,:);
mintomaxLF(3,:)=maxGFmatrix(83,:);
mintomaxLF(4,:)=maxGFmatrix(105,:);
meanmintomaxLFsub=mean(mintomaxLF, 2);
meanmintomaxLF=mean(meanmintomaxLFsub);
meanmintomaxLFparticipants = mean(mintomaxLF);

%min LF adaptation
nessaisbis = 16;
minLF=zeros(nessaisbis, nparticipants);
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
meanminLFparticipants = mean(minLF);

%% Min to max (catch) vs min normal under high friction
%min to max catch weight HF
nessais4=5;
mintomaxHF=zeros(nessais4, nparticipants);
mintomaxHF(1,:)=maxGFmatrix(21,:);
mintomaxHF(2,:)=maxGFmatrix(33,:);
mintomaxHF(3,:)=maxGFmatrix(52,:);
mintomaxHF(4,:)=maxGFmatrix(101,:);
mintomaxHF(5,:)=maxGFmatrix(119,:);
meanmintomaxHFsub=mean(mintomaxHF, 2);
meanmintomaxHF=mean(meanmintomaxHFsub);
meanmintomaxHFparticipants = mean(mintomaxHF);

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
meanminHFparticipants = mean(minHF);

%% 2. Stabilization GF

%% Max to Min (catch) vs max normal under low friction
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
meanmaxstabLFparticipants = mean(maxstabLF);

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
meanmaxtominstabLFparticipants = mean(maxtominstabLF);

%% Max to Min (catch) vs max normal under high friction

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
meanmaxstabHFparticipants = mean(maxstabHF);

%Max to min catch weight HF
nessais2=4;
maxtominstabHF=zeros(nessais2, nparticipants);
maxtominstabHF(1,:)=meanstabGFmatrix(41,:);
maxtominstabHF(2,:)=meanstabGFmatrix(69,:);
maxtominstabHF(3,:)=meanstabGFmatrix(88,:);
maxtominstabHF(4,:)=meanstabGFmatrix(112,:);
meanmaxtominstabHFsub=mean(maxtominstabHF, 2);
meanmaxtominstabHF=mean(meanmaxtominstabHFsub);
meanmaxtominstabHFparticipants = mean(maxtominstabHF);

%% Min to Max (catch) vs min normal under low friction
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
meanminstabLFparticipants = mean(minstabLF);

%min to max catch weight LF
nessais3=4;
mintomaxstabLF=zeros(nessais3, nparticipants);
mintomaxstabLF(1,:)=meanstabGFmatrix(45,:);
mintomaxstabLF(2,:)=meanstabGFmatrix(58,:);
mintomaxstabLF(3,:)=meanstabGFmatrix(83,:);
mintomaxstabLF(4,:)=meanstabGFmatrix(105,:);
meanmintomaxstabLFsub=mean(mintomaxstabLF, 2);
meanmintomaxstabLF=mean(meanmintomaxstabLFsub);
meanmintomaxstabLFparticipants = mean(mintomaxstabLF);

%% Min to Max (catch) vs min normal under high friction

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
meanminstabHFparticipants = mean(minstabHF);

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
meanmintomaxstabHFparticipants = mean(mintomaxstabHF);

%% Boxplots GF peaks

A=reshape(maxLF,1,[]).';
B=reshape(maxtominLF,1,[]).';
C=reshape(maxHF,1,[]).';
D=reshape(maxtominHF,1,[]).';
E=reshape(minLF,1,[]).';
F=reshape(mintomaxLF,1,[]).';
G=reshape(minHF,1,[]).';
H=reshape(mintomaxHF,1,[]).';
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

positions = [1 1.25 2 2.25];

%Figure

figure;
subplot(1,4,1);
boxplot(x1,group1, 'positions', positions);

set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4))])
set(gca,'xticklabel',{'Low friction','High friction'})
ylabel('Grip force peak (N)')
ylim([0 30])
set(gca,'YTick',0:5:30)

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
hleg1 = legend(c(1:2), 'Maximal weight normal', 'Minimal weight catch', 'Location', 'north' );


subplot(1,4,2)
boxplot(x2,group2, 'positions', positions);

set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4))])
set(gca,'xticklabel',{'Low friction','High friction'})
ylabel('Grip force peak (N)');
ylim([0 30])
set(gca,'YTick',0:5:30)

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
hleg1 = legend(c(1:2), 'Minimal weight normal', 'Maximal weight catch', 'Location', 'north');

text(-0.75, 31,{'Comparison of GF peaks for weight catch and normal trials';''}, 'FontSize', 14)


%% Boxplots GF stab

I=reshape(maxstabLF,1,[]).';
J=reshape(maxtominstabLF,1,[]).';
K=reshape(maxstabHF,1,[]).';
L=reshape(maxtominstabHF,1,[]).';
M=reshape(minstabLF,1,[]).';
N=reshape(mintomaxstabLF,1,[]).';
O=reshape(minstabHF,1,[]).';
P=reshape(mintomaxstabHF,1,[]).';
x3 = [I;J;K;L];
x4=[M;N;O;P];
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

%Quatrième subplot
group13=ones(1,sizeM)*1;
group14=ones(1,sizeN)*2;
group15=ones(1,sizeO)*3;
group16=ones(1,sizeP)*4;

group3 = [group9,group10,group11,group12];
group4=[group13,group14,group15,group16];
positions = [1 1.25 2 2.25];

% Plots des deux derniers graphes

subplot(1,4,3);
boxplot(x3,group3, 'positions', positions);

set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4))])
set(gca,'xticklabel',{'Low friction','High friction'})
ylabel('Grip force (N)')
ylim([0 30])
set(gca,'YTick',0:5:30)

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
hleg1 = legend(c(1:2), 'Maximal weight normal', 'Minimal weight catch', 'Location', 'north' );


subplot(1,4,4)
boxplot(x4,group4, 'positions', positions);

set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4))])
set(gca,'xticklabel',{'Low friction','High friction'})
ylabel('Grip force (N)');
ylim([0 30])
set(gca,'YTick',0:5:30)

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
hleg1 = legend(c(1:2), 'Minimal weight normal', 'Maximal weight catch', 'Location', 'north');

text(-1.2, 31,{'Comparison of GF during stabilization for weight catch and normal trials';''}, 'FontSize', 14)




end

