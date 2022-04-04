%Graphe max Load Force lors des phases d'adaptation max LF, max HF, min LF, min HF
function maxLF = maxLFadaptation(maxLFmatrix, nparticipants)
%% Max LF adaptation max LF 
nessais1=20;
maxLF=zeros(nessais1, nparticipants);
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
meanmaxLFsub=mean(maxLF, 2);
meanmaxLF=mean(meanmaxLFsub);

meanmaxLFparticipants=mean(maxLF);


%% Max LF adaptation max HF 
nessais2=18;
maxHF=zeros(nessais2, nparticipants);
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
meanmaxHFsub=mean(maxHF, 2);
meanmaxHF=mean(meanmaxHFsub);

meanmaxHFparticipants=mean(maxHF); %moyenne par participants

%% Max LF adaptation min LF 
nessais3 = 16;
minLF=zeros(nessais3, nparticipants);
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
meanminLFsub=mean(minLF, 2);
meanminLF=mean(meanminLFsub);

meanminLFparticipants=mean(minLF);

%% Max LF adaptation min HF 
nessais4 = 17;
minHF=zeros(nessais4, nparticipants);
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
minHF(11,:)=maxLFmatrix(50,:);
minHF(11,:)=maxLFmatrix(51,:);
minHF(12,:)=maxLFmatrix(98,:);
minHF(13,:)=maxLFmatrix(99,:);
minHF(14,:)=maxLFmatrix(100,:);
minHF(15,:)=maxLFmatrix(116,:);
minHF(16,:)=maxLFmatrix(117,:);
minHF(17,:)=maxLFmatrix(118,:);
meanminHFsub=mean(minHF, 2);
meanminHF=mean(meanminHFsub);

meanminHFparticipants=mean(minHF);

%% Plot des bars sur base des moyennes de tous les essais et de tous les participants
figure
y=[meanmaxLF meanmaxHF; meanminLF meanminHF];
b=bar(y);
set(gca,'XTickLabel',{'Maximal weight';'Minimal weight'});
b(1).FaceColor = [0.9290 0.6940 0.1250];
b(2).FaceColor = [0.8500 0.3250 0.0980];
legend('Low friction', 'High friction', 'Location','northeast');
title('Load force peak magnitude for adaptation trials - Elderly participants');
%title('Load force peak magnitude for adaptation trials - Young participants')
ylabel('Load force peak (N)');

xdata= get (b(2),'XData');
ydata= get (b(2),'YData');

A=reshape(maxLF,1,[]);
B=reshape(maxHF,1,[]);
C=reshape(minLF,1,[]);
D=reshape(minHF,1,[]);
size(A)
size(B)
size(C)
size(D)

%% Plot des lignes correspondant ? la moyenne des essais pour chaque participants

hold on

xdata= get (b(2),'XData');
xlim=get(gca,'xlim');
xparticipantmaxLF=[xlim(1)+0.2, xlim(1)+0.47];
y1 = meanmaxLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmaxLF,y1(i)*ones(size(xparticipantmaxLF)), 'k','HandleVisibility','off')
end

hold on

xparticipantmaxHF=[xlim(1)+0.5, xlim(1)+0.75];
y2 = meanmaxHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmaxHF,y2(i)*ones(size(xparticipantmaxHF)), 'k','HandleVisibility','off')
end

xparticipantminLF=[1.52+0.2, 1.52+0.47];
y3 = meanminLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantminLF,y3(i)*ones(size(xparticipantminLF)), 'k','HandleVisibility','off')
end

hold on

xparticipantminHF=[1.52+0.5, 1.52+0.75];
y4 = meanminHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantminHF,y4(i)*ones(size(xparticipantminHF)), 'k','HandleVisibility','off')
end


%% Code pour avoir tous les points data superposés sur le barplot (Elderly participants)
%{
% Points pour la premičre barre (maximal weight, low friction)
hold on;
xoffset = -0.08; 
plot(xdata(1)+xoffset,A(1:21),'k.','HandleVisibility','off');
hold on 
xoffset = -0.09; 
plot(xdata(1)+xoffset,A(22:43),'k.','HandleVisibility','off');
hold on 
xoffset = -0.1; 
plot(xdata(1)+xoffset,A(44:65),'k.','HandleVisibility','off');
hold on 
xoffset = -0.11; 
plot(xdata(1)+xoffset,A(66:87),'k.','HandleVisibility','off');
hold on 
xoffset = -0.12; 
plot(xdata(1)+xoffset,A(88:109),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.13; 
plot(xdata(1)+xoffset,A(110:131),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.14; 
plot(xdata(1)+xoffset,A(132:153),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.15; 
plot(xdata(1)+xoffset,A(154:175),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.16; 
plot(xdata(1)+xoffset,A(176:197),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.17; 
plot(xdata(1)+xoffset,A(198:219),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.18; 
plot(xdata(1)+xoffset,A(220:241),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.19; 
plot(xdata(1)+xoffset,A(242:255),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.2; 
plot(xdata(1)+xoffset,A(256:273),'k.', 'HandleVisibility','off');
hold on;

% Points pour la deuxičme barre (maximal weight, high friction)

xoffset = 0.1; 
plot(xdata(1)+xoffset,B(1:21),'k.','HandleVisibility','off');
hold on 
xoffset = 0.11; 
plot(xdata(1)+xoffset,B(22:42),'k.','HandleVisibility','off');
hold on 
xoffset = 0.12; 
plot(xdata(1)+xoffset,B(43:63),'k.','HandleVisibility','off');
hold on 
xoffset = 0.13; 
plot(xdata(1)+xoffset,B(64:84),'k.','HandleVisibility','off');
hold on 
xoffset = 0.14; 
plot(xdata(1)+xoffset,B(85:105),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.15; 
plot(xdata(1)+xoffset,B(106:126),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.16;
plot(xdata(1)+xoffset,B(127:147),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.17; 
plot(xdata(1)+xoffset,B(148:168),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.18; 
plot(xdata(1)+xoffset,B(169:189),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.19; 
plot(xdata(1)+xoffset,B(190:210),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.2;
plot(xdata(1)+xoffset,B(210:230),'k.', 'HandleVisibility','off');
hold on
xoffset = 0.08; 
plot(xdata(1)+xoffset,B(231:247),'k.', 'HandleVisibility','off');

% Points pour la troisičme barre (minimal weight, low friction)

hold on;
xoffset = -0.1; 
plot(xdata(2)+xoffset,C(1:21),'k.','HandleVisibility','off');
hold on 
xoffset = -0.11; 
plot(xdata(2)+xoffset,C(22:43),'k.','HandleVisibility','off');
hold on 
xoffset = -0.12; 
plot(xdata(2)+xoffset,C(44:65),'k.','HandleVisibility','off');
hold on 
xoffset = -0.13; 
plot(xdata(2)+xoffset,C(66:87),'k.','HandleVisibility','off');
hold on 
xoffset = -0.14; 
plot(xdata(2)+xoffset,C(88:109),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.15; 
plot(xdata(2)+xoffset,C(110:131),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.16; 
plot(xdata(2)+xoffset,C(132:153),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.17;
plot(xdata(2)+xoffset,C(154:175),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.18; 
plot(xdata(2)+xoffset,C(176:197),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.19; 
plot(xdata(2)+xoffset,C(198:221),'k.', 'HandleVisibility','off');


% Points pour la quatričme barre (minimal weight, high friction)
hold on;
xoffset = 0.1; 
plot(xdata(2)+xoffset,D(1:23),'k.','HandleVisibility','off');
hold on 
xoffset = 0.11; 
plot(xdata(2)+xoffset,D(23:45),'k.','HandleVisibility','off');
hold on 
xoffset = 0.12; 
plot(xdata(2)+xoffset,D(46:68),'k.','HandleVisibility','off');
hold on 
xoffset = 0.13; 
plot(xdata(2)+xoffset,D(69:91),'k.','HandleVisibility','off');
hold on 
xoffset = 0.14; 
plot(xdata(2)+xoffset,D(92:114),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.15; 
plot(xdata(2)+xoffset,D(115:137),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.16; 
plot(xdata(2)+xoffset,D(138:160),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.17; 
plot(xdata(2)+xoffset,D(161:183),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.18; 
plot(xdata(2)+xoffset,D(184:206),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.19; 
plot(xdata(2)+xoffset,D(207:234),'k.', 'HandleVisibility','off');
%}
%% Code pour avoir tous les points data superposés sur le barplot (Young participants)

%{
% Points pour la premičre barre (maximal weight, low friction)
hold on;
xoffset = -0.11; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(1:29),'k.','HandleVisibility','off');
hold on 
xoffset = -0.12; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(30:59),'k.','HandleVisibility','off');
hold on 
xoffset = -0.13; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(60:89),'k.','HandleVisibility','off');
hold on 
xoffset = -0.14; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(90:119),'k.','HandleVisibility','off');
hold on 
xoffset = -0.15; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(120:149),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.16; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(150:179),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.17; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(180:209),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.18; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(210:249),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.19; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(250:289),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.2; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(290:315),'k.', 'HandleVisibility','off');
% Points pour la deuxičme barre (maximal weight, high friction)
hold on;
xoffset = 0.11; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(1:29),'k.','HandleVisibility','off');
hold on 
xoffset = 0.12; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(30:59),'k.','HandleVisibility','off');
hold on 
xoffset = 0.13; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(60:89),'k.','HandleVisibility','off');
hold on 
xoffset = 0.14; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(90:119),'k.','HandleVisibility','off');
hold on 
xoffset = 0.15; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(120:149),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.16; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(150:179),'k.', 'HandleVisibility','off');
hold on
xoffset = 0.17; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(180:209),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.18; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(210:249),'k.', 'HandleVisibility','off');
hold on
xoffset = 0.19; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(250:285),'k.', 'HandleVisibility','off');
% Points pour la troisičme barre (minimal weight, low friction)
hold on;
xoffset = -0.11; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(1:29),'k.','HandleVisibility','off');
hold on 
xoffset = -0.12; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(30:59),'k.','HandleVisibility','off');
hold on 
xoffset = -0.13; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(60:89),'k.','HandleVisibility','off');
hold on 
xoffset = -0.14; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(90:119),'k.','HandleVisibility','off');
hold on 
xoffset = -0.15; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(120:149),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.16; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(150:179),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.17; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(180:209),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.18; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(210:255),'k.', 'HandleVisibility','off');
% Points pour la quatričme barre (minimal weight, high friction)
hold on;
xoffset = 0.11; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(1:29),'k.','HandleVisibility','off');
hold on 
xoffset = 0.12; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(30:59),'k.','HandleVisibility','off');
hold on 
xoffset = 0.13; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(60:89),'k.','HandleVisibility','off');
hold on 
xoffset = 0.14; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(90:119),'k.','HandleVisibility','off');
hold on 
xoffset = 0.15; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(120:149),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.16; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(150:179),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.17; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(180:209),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.18; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(210:249),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.19; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(250:270),'k.', 'HandleVisibility','off');
%}
