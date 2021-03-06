%Barplots mean GF lors des phases d'adaptation max LF, max HF, min LF, min HF
function stabLF = stabGFadaptation(meanstabGFmatrix, nparticipants)
%% stab GF adaptation max LF 
nessais1=20;
maxstabLF=zeros(nessais1, nparticipants);
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


%% Stab GF adaptation max HF 
nessais2=18;
maxstabHF=zeros(nessais2, nparticipants);
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

%% Stab GF adaptation min LF 
nessais3 = 16;
minstabLF=zeros(nessais3, nparticipants);
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

%% Stab GF adaptation min HF 
nessais4 = 17;
minstabHF=zeros(nessais4, nparticipants);
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

%% Plot des bars sur base des moyennes de tous les essais et de tous les participants

figure
%plot des bars
y=[meanmaxstabLF meanmaxstabHF; meanminstabLF meanminstabHF];
b=bar(y);
set(gca,'XTickLabel',{'Maximal weight';'Minimal weight'});
b(1).FaceColor = [0.9290 0.6940 0.1250];
b(2).FaceColor = [0.8500 0.3250 0.0980];
legend('Low friction', 'High friction', 'Location','northeast')
%title('Mean grip force during stabilization for adaptation trials - Elderly participants');
title('Mean grip force during stabilization for adaptation trials  - Young participants')
ylabel('Mean grip force(N)')

%% Plot des lignes correspondant ?? la moyenne des essais pour chaque participants
%{
hold on

xdata= get (b(2),'XData');
xlim=get(gca,'xlim');
xparticipantmaxLF=[xlim(1)+0.2, xlim(1)+0.47];
y1 = meanmaxstabLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmaxLF,y1(i)*ones(size(xparticipantmaxLF)), 'k','HandleVisibility','off')
end

hold on

xparticipantmaxHF=[xlim(1)+0.5, xlim(1)+0.75];
y2 = meanmaxstabHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmaxHF,y2(i)*ones(size(xparticipantmaxHF)), 'k','HandleVisibility','off')
end

xparticipantminLF=[1.52+0.2, 1.52+0.47];
y3 = meanminstabLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantminLF,y3(i)*ones(size(xparticipantminLF)), 'k','HandleVisibility','off')
end

hold on

xparticipantminHF=[1.52+0.5, 1.52+0.75];
y4 = meanminstabHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantminHF,y4(i)*ones(size(xparticipantminHF)), 'k','HandleVisibility','off')
end

%}
%% Barplots with subject slopes
%color cell (Suppress colors if less participants)
C = {'k','b','r','g','y',[.5 .6 .7],[.8 .2 .6],[0.7 0.5 0.9],'c','m',[0.4 0.5 0.6],[0.2 0.8 0.7],[0.1 0.3 0.5],[0.8 0.2 0.4],[0.3 0.3 0.3]}; % Cell array of colros.

hold on

xdata= get (b(2),'XData');
xoffset1 = -0.14;
xoffset2 = 0.14; 

y1 = meanmaxstabLFparticipants;
y2 = meanmaxstabHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(1)+xoffset1,y1(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(1)+xoffset2,y2(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(1)+xoffset1,xdata(1)+xoffset2], [y1(i), y2(i)], 'Color', C{i},'HandleVisibility','off')
end

hold on
y3 = meanminstabLFparticipants;
y4 = meanminstabHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xdata(2)+xoffset1,y3(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')

    hold on
    figure(1); hold on;
    plot(xdata(2)+xoffset2,y4(i),'.', 'MarkerSize',15,'color',C{i},'HandleVisibility','off')
    
    line([xdata(2)+xoffset1,xdata(2)+xoffset2], [y3(i), y4(i)], 'Color', C{i},'HandleVisibility','off')
end

%% Code pour avoir tous les points data superpos??s sur le barplot (Elderly participants)
%{
xdata= get (b(2),'XData');
ydata= get (b(2),'YData');

A=reshape(maxstabLF,1,[]);
B=reshape(maxstabHF,1,[]);
C=reshape(minstabLF,1,[]);
D=reshape(minstabHF,1,[]);
size(A)
size(B)
size(C)
size(D)

% Points pour la premi??re barre

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

% Points pour la deuxi??me barre

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


% Points pour la troisi??me barre

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

% Points pour la quatri??me barre

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
%% Code pour avoir tous les points data superpos??s sur le barplot (Young participants)
%{
%Points premi??re barre
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
%Points deuxi??me barre
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
%Points troisi??me barre
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
%Points quatri??me barre
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


%% Code pour mettre les valeurs des pics de GF au-dessus des bars respectives
% ce code n'est pas utilis?? pour le moment
%{
ytips1= get (b(2),'YData')
y1right = ytips1(1)
y2right = ytips1(2)
labels2 = string(y1right);
labels3 = string(y2right);
text(1.14,y1right,labels2,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')
text(2.14,y2right,labels3,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')
ytips2= get (b(1),'YData')
y1left = ytips2(1)
y2left = ytips2(2)
labels4 = string(y1left);
labels5 = string(y2left);
text(0.86,y1left,labels4,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')
text(1.86,y2left,labels5,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')
%}
