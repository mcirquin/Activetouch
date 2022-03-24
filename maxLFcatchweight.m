%Graphes pic de Load Force catch weight. Max to min LF, Max to min HF, min 
%to max LF, min to max HF
function catchweight = maxLFcatchweight(maxLFmatrix, nparticipants)

% Max to min LF 
nessais=5;
maxtominLF=zeros(nessais, nparticipants);
maxtominLF(1,:)=maxLFmatrix(16,:);
maxtominLF(2,:)=maxLFmatrix(29,:);
maxtominLF(3,:)=maxLFmatrix(63,:);
maxtominLF(4,:)=maxLFmatrix(76,:);
maxtominLF(5,:)=maxLFmatrix(95,:);
meanmaxtominLFsub=mean(maxtominLF, 2);
meanmaxtominLF=mean(meanmaxtominLFsub);

meanmaxtominLFparticipants=mean(maxtominLF);

% Max to min HF 
nessaisbis=4;
maxtominHF=zeros(nessaisbis, nparticipants);
maxtominHF(1,:)=maxLFmatrix(41,:);
maxtominHF(2,:)=maxLFmatrix(69,:);
maxtominHF(3,:)=maxLFmatrix(88,:);
maxtominHF(4,:)=maxLFmatrix(112,:);
meanmaxtominHFsub=mean(maxtominHF, 2);
meanmaxtominHF=mean(meanmaxtominHFsub);

meanmaxtominHFparticipants=mean(maxtominHF);

% Min to max LF 
mintomaxLF=zeros(nessaisbis, nparticipants);
mintomaxLF(1,:)=maxLFmatrix(45,:);
mintomaxLF(2,:)=maxLFmatrix(58,:);
mintomaxLF(3,:)=maxLFmatrix(83,:);
mintomaxLF(4,:)=maxLFmatrix(105,:);
meanmintomaxLFsub=mean(mintomaxLF, 2);
meanmintomaxLF=mean(meanmintomaxLFsub);

meanmintomaxLFparticipants=mean(mintomaxLF);

% Min to max HF 
mintomaxHF=zeros(nessais, nparticipants);
mintomaxHF(1,:)=maxLFmatrix(21,:);
mintomaxHF(2,:)=maxLFmatrix(33,:);
mintomaxHF(3,:)=maxLFmatrix(52,:);
mintomaxHF(4,:)=maxLFmatrix(101,:);
mintomaxHF(5,:)=maxLFmatrix(119,:);
meanmintomaxHFsub=mean(mintomaxHF, 2);
meanmintomaxHF=mean(meanmintomaxHFsub);

meanmintomaxHFparticipants=mean(mintomaxHF);

%% Plot des bars reprenant les moyennes de tous les participants et de tous les essais
figure
y=[meanmaxtominLF meanmintomaxLF; meanmaxtominHF meanmintomaxHF];
b = bar(y);
set(gca,'XTickLabel',{'Low friction';'High friction'});
b(1).FaceColor = 'b';
b(2).FaceColor = 'r';
legend('Maximal to minimal weight', 'Minimal to maximal weight', 'Location','northeast')
title('Load force peak magnitude for weight catch trials - Elderly participants')
%title('Load force peak magnitude for weight catch trials - Young participants')
ylabel('Load force peak (N)')

xdata= get (b(2),'XData');
ydata= get (b(2),'YData');

A=reshape(maxtominLF,1,[]);
B=reshape(mintomaxLF,1,[]);
C=reshape(maxtominHF,1,[]);
D=reshape(mintomaxHF,1,[]);
size(A)
size(B)
size(C)
size(D)

%% Plot des lignes correspondant ? la moyenne des essais pour chaque participants

hold on

xdata= get (b(2),'XData');
xlim=get(gca,'xlim');
xparticipantmaxtominLF=[xlim(1)+0.2, xlim(1)+0.47];
y1 = meanmaxtominLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmaxtominLF,y1(i)*ones(size(xparticipantmaxtominLF)), 'k','HandleVisibility','off')
end

hold on

xparticipantmintomaxLF=[xlim(1)+0.5, xlim(1)+0.75];
y2 = meanmintomaxLFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmintomaxLF,y2(i)*ones(size(xparticipantmintomaxLF)), 'k','HandleVisibility','off')
end

xparticipantmaxtominHF=[1.52+0.2, 1.52+0.47];
y3 = meanmaxtominHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmaxtominHF,y3(i)*ones(size(xparticipantmaxtominHF)), 'k','HandleVisibility','off')
end

hold on

xparticipantmintomaxHF=[1.52+0.5, 1.52+0.75];
y4 = meanmintomaxHFparticipants;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmintomaxHF,y4(i)*ones(size(xparticipantmintomaxHF)), 'k','HandleVisibility','off')
end

%% Code pour avoir tous les points data superposés sur le barplot (Elderly participants)
%{
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
%}
%% Code pour avoir tous les points data superposés sur le barplot (Young participants)
%{
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


%% Code permettant d'avoir les valeurs au-dessus des bars
% Code non utilisé pour le moment
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