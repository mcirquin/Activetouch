%Graphes catch weight. Max to min LF, Max to min HF, min to max LF, min to
%max HF
function stabcatchweight = stabGFcatchweight(meanstabGFmatrix, nparticipants)
% Max to min LF 
nessais=5;
maxtominstabLF=zeros(nessais, nparticipants);
maxtominstabLF(1,:)=meanstabGFmatrix(16,:);
maxtominstabLF(2,:)=meanstabGFmatrix(29,:);
maxtominstabLF(3,:)=meanstabGFmatrix(63,:);
maxtominstabLF(4,:)=meanstabGFmatrix(76,:);
maxtominstabLF(5,:)=meanstabGFmatrix(95,:);
meanmaxtominstabLFsub=mean(maxtominstabLF, 2);
meanmaxtominstabLF=mean(meanmaxtominstabLFsub);

meanmaxtominstabLFparticipants=mean(maxtominstabLF);

% Max to min HF 
nessaisbis=4;
maxtominstabHF=zeros(nessaisbis, nparticipants);
maxtominstabHF(1,:)=meanstabGFmatrix(41,:);
maxtominstabHF(2,:)=meanstabGFmatrix(69,:);
maxtominstabHF(3,:)=meanstabGFmatrix(88,:);
maxtominstabHF(4,:)=meanstabGFmatrix(112,:);
meanmaxtominstabHFsub=mean(maxtominstabHF, 2);
meanmaxtominstabHF=mean(meanmaxtominstabHFsub);

meanmaxtominstabHFparticipants=mean(maxtominstabHF);

% Min to max LF 
mintomaxstabLF=zeros(nessaisbis, nparticipants);
mintomaxstabLF(1,:)=meanstabGFmatrix(45,:);
mintomaxstabLF(2,:)=meanstabGFmatrix(58,:);
mintomaxstabLF(3,:)=meanstabGFmatrix(83,:);
mintomaxstabLF(4,:)=meanstabGFmatrix(105,:);
meanmintomaxstabLFsub=mean(mintomaxstabLF, 2);
meanmintomaxstabLF=mean(meanmintomaxstabLFsub);

meanmintomaxstabLFparticipants=mean(mintomaxstabLF);

% Min to max HF 
mintomaxstabHF=zeros(nessais, nparticipants);
mintomaxstabHF(1,:)=meanstabGFmatrix(21,:);
mintomaxstabHF(2,:)=meanstabGFmatrix(33,:);
mintomaxstabHF(3,:)=meanstabGFmatrix(52,:);
mintomaxstabHF(4,:)=meanstabGFmatrix(101,:);
mintomaxstabHF(5,:)=meanstabGFmatrix(119,:);
meanmintomaxstabHFsub=mean(mintomaxstabHF, 2);
meanmintomaxstabHF=mean(meanmintomaxstabHFsub);

meanmintomaxstabHFparticipants=mean(mintomaxstabHF);

%% Plot des bars sur base des moyennes de tous les essais et de tous les participants
figure
y=[meanmaxtominstabLF meanmintomaxstabLF; meanmaxtominstabHF meanmintomaxstabHF];
b = bar(y);
set(gca,'XTickLabel',{'Low friction';'High friction'});
b(1).FaceColor = 'b';
b(2).FaceColor = 'r';
legend('Maximal to minimal weight', 'Minimal to maximal weight', 'Location','northeast')
title('Mean grip force during stabilization for weight catch trials - Elderly participants')
%title('Grip force peak magnitude for weight catch trials - Young participants')
ylabel('Mean grip force (N)')

%% Plot des lignes correspondant ŕ la moyenne des essais pour chaque participants

hold on

xdata= get (b(2),'XData');
xlim=get(gca,'xlim');
xparticipantmaxtominLF=[xlim(1)+0.2, xlim(1)+0.47];
y1 = meanmaxtominstabLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmaxtominLF,y1(i)*ones(size(xparticipantmaxtominLF)), 'k','HandleVisibility','off')
end

hold on

xparticipantmintomaxLF=[xlim(1)+0.5, xlim(1)+0.75];
y2 = meanmintomaxstabLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmintomaxLF,y2(i)*ones(size(xparticipantmintomaxLF)), 'k','HandleVisibility','off')
end

xparticipantmaxtominHF=[1.52+0.2, 1.52+0.47];
y3 = meanmaxtominstabHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmaxtominHF,y3(i)*ones(size(xparticipantmaxtominHF)), 'k','HandleVisibility','off')
end

hold on

xparticipantmintomaxHF=[1.52+0.5, 1.52+0.75];
y4 = meanmintomaxstabHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmintomaxHF,y4(i)*ones(size(xparticipantmintomaxHF)), 'k','HandleVisibility','off')
end


%% Code pour avoir tous les points data superposés sur le barplot (Elderly participants)

xdata= get (b(2),'XData');
ydata= get (b(2),'YData');

A=reshape(maxtominstabLF,1,[]);
C=reshape(maxtominstabHF,1,[]);
B=reshape(mintomaxstabLF,1,[]);
D=reshape(mintomaxstabHF,1,[]);
size(A)
size(B)
size(C)
size(D)

% Points pour la premičre barre

hold on;
xoffset = -0.10;
plot(xdata(1)+xoffset,A(1:10),'k.','HandleVisibility','off');
hold on 
xoffset = -0.12; 
plot(xdata(1)+xoffset,A(11:20),'k.','HandleVisibility','off');
hold on 
xoffset = -0.14; 
plot(xdata(1)+xoffset,A(21:30),'k.','HandleVisibility','off');
hold on 
xoffset = -0.16; 
plot(xdata(1)+xoffset,A(31:40),'k.','HandleVisibility','off');
hold on 
xoffset = -0.18;
plot(xdata(1)+xoffset,A(41:52),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.2; 
plot(xdata(1)+xoffset,A(53:65),'k.', 'HandleVisibility','off');

% Points pour la deuxičme barre

hold on;
xoffset = 0.12; 
plot(xdata(1)+xoffset,B(1:10),'k.','HandleVisibility','off');
hold on 
xoffset = 0.14; 
plot(xdata(1)+xoffset,B(11:20),'k.','HandleVisibility','off');
hold on 
xoffset = 0.16; 
plot(xdata(1)+xoffset,B(21:30),'k.','HandleVisibility','off');
hold on 
xoffset = 0.18; 
plot(xdata(1)+xoffset,B(31:41),'k.','HandleVisibility','off');
hold on
xoffset = 0.2; 
plot(xdata(1)+xoffset,B(42:52),'k.','HandleVisibility','off');

% Points pour la troisičme barre
hold on;
xoffset = -0.12; 
plot(xdata(2)+xoffset,C(1:10),'k.','HandleVisibility','off');
hold on 
xoffset = -0.14; 
plot(xdata(2)+xoffset,C(11:20),'k.','HandleVisibility','off');
hold on 
xoffset = -0.16; 
plot(xdata(2)+xoffset,C(21:30),'k.','HandleVisibility','off');
hold on 
xoffset = -0.18; 
plot(xdata(2)+xoffset,C(31:40),'k.','HandleVisibility','off');
hold on
xoffset = -0.2;
plot(xdata(1)+xoffset,C(42:52),'k.','HandleVisibility','off');

% Points pour la quatričme  barre
hold on;
xoffset = 0.10; 
plot(xdata(2)+xoffset,D(1:10),'k.','HandleVisibility','off');
hold on 
xoffset = 0.12;
plot(xdata(2)+xoffset,D(11:20),'k.','HandleVisibility','off');
hold on 
xoffset = 0.14; 
plot(xdata(2)+xoffset,D(21:30),'k.','HandleVisibility','off');
hold on 
xoffset = 0.16; 
plot(xdata(2)+xoffset,D(31:40),'k.','HandleVisibility','off');
hold on 
xoffset = 0.18; 
plot(xdata(2)+xoffset,D(41:52),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.2; 
plot(xdata(2)+xoffset,D(43:65),'k.', 'HandleVisibility','off');

%% Code pour avoir tous les points data superposés sur le barplot (Young participants)
%{

%Points première barre
hold on;
xoffset = -0.11; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(1:8),'k.','HandleVisibility','off');
hold on 
xoffset = -0.12; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(9:17),'k.','HandleVisibility','off');
hold on 
xoffset = -0.13; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(18:26),'k.','HandleVisibility','off');
hold on 
xoffset = -0.14; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(27:35),'k.','HandleVisibility','off');
hold on 
xoffset = -0.15; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(36:44),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.16; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(45:53),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.17; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(54:62),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.18; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(63:70),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.19; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(71:75),'k.', 'HandleVisibility','off');

%points deuxième barre
hold on;
xoffset = 0.11; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(1:6),'k.','HandleVisibility','off');
hold on 
xoffset = 0.12; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(7:13),'k.','HandleVisibility','off');
hold on 
xoffset = 0.13; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(14:20),'k.','HandleVisibility','off');
hold on 
xoffset = 0.14; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(21:27),'k.','HandleVisibility','off');
hold on 
xoffset = 0.15; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(28:34),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.16; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(35:41),'k.', 'HandleVisibility','off');
hold on
xoffset = 0.17; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(42:48),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.18; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(49:60),'k.', 'HandleVisibility','off');


%Points troisième barre
hold on;
xoffset = -0.11; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(1:6),'k.','HandleVisibility','off');
hold on 
xoffset = -0.12; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(7:13),'k.','HandleVisibility','off');
hold on 
xoffset = -0.13; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(14:20),'k.','HandleVisibility','off');
hold on 
xoffset = -0.14; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(21:27),'k.','HandleVisibility','off');
hold on 
xoffset = -0.15; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(28:34),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.16; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(35:41),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.17; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(42:48),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.18; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(49:60),'k.', 'HandleVisibility','off');

%Points quatrième barre
hold on;
xoffset = 0.11; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(1:8),'k.','HandleVisibility','off');
hold on 
xoffset = 0.12; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(9:17),'k.','HandleVisibility','off');
hold on 
xoffset = 0.13; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(18:26),'k.','HandleVisibility','off');
hold on 
xoffset = 0.14; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(27:35),'k.','HandleVisibility','off');
hold on 
xoffset = 0.15; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(36:44),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.16; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(45:53),'k.', 'HandleVisibility','off');
hold on
xoffset = 0.17; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(54:62),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.18; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(63:70),'k.', 'HandleVisibility','off');
hold on
xoffset = 0.19; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(71:75),'k.', 'HandleVisibility','off');
%}


%% Code pour mettre les valeurs des pics de GF au-dessus des bars respectives
% ce code n'est pas utilisé pour le moment
%{
ylim([0 10.5])
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
