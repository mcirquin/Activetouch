function maxLF = maxLFcatchverre(maxLFmatrix, nparticipants)
%Graphe max Load Force for Max weight LF, Max weight HF, Min weight LF, Min weight HF

% Max Load Force catch verres LF
nessais=2;
maxLF=zeros(nessais, nparticipants);
maxLF(1,:)=maxLFmatrix(13,:);
maxLF(2,:)=maxLFmatrix(25,:);
%maxLF(3,:)=maxLFmatrix(73,:);
%maxLF(4,:)=maxLFmatrix(91,:);
meanmaxLFsub=mean(maxLF, 2);
meanmaxLF=mean(meanmaxLFsub);

meanmaxLFparticipants=mean(maxLF);

% Max Load Force catch verres HF
nessaisbis=2;
maxHF=zeros(nessaisbis, nparticipants);
%maxHF(1,:)=maxLFmatrix(67,:);
maxHF(1,:)=maxLFmatrix(85,:);
maxHF(2,:)=maxLFmatrix(109,:);
meanmaxHFsub=mean(maxHF, 2);
meanmaxHF=mean(meanmaxHFsub);

meanmaxHFparticipants=mean(maxHF);

% Min Load Force catch verres LF
nessais3=1;
minLF=zeros(nessais3, nparticipants);
minLF(1,:)=maxLFmatrix(43,:);
%minLF(2,:)=maxLFmatrix(55,:);
%minLF(3,:)=maxLFmatrix(103,:);
meanminLFsub=mean(minLF, 2);
meanminLF=mean(meanminLFsub);
meanminLFparticipants=minLF;
%meanminLFparticipants=mean(minLF);

% Min Load Force catch verres HF
nessais4=3;
minHF=zeros(nessais4, nparticipants);
minHF(1,:)=maxLFmatrix(19,:);
minHF(2,:)=maxLFmatrix(31,:);
%minHF(3,:)=maxLFmatrix(49,:);
minHF(3,:)=maxLFmatrix(97,:);
meanminHFsub=mean(minHF, 2); %moyenne pour tous les sujets
meanminHF=mean(meanminHFsub);%moyenne des moyennes de tous les sujets

meanminHFparticipants=mean(minHF);

%% Plot des bars sur base des moyennes de tous les essais et de tous les participants
figure
y=[meanmaxLF meanmaxHF; meanminLF meanminHF];
b = bar(y);
set(gca,'XTickLabel',{'Maximal weight';'Minimal weight'});
b(1).FaceColor = [0.9290 0.6940 0.1250];
b(2).FaceColor = [0.8500 0.3250 0.0980];
legend({'Low friction', 'High friction'},'Location','northeast')
title('Load force peak magnitude for friction catch trials - Elderly participants')
%title('Load force peak magnitude for friction catch trials - Young participants')
ylabel('Load force peak (N)')
ylim([0 9])

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


%% Plot des lignes correspondant à la moyenne des essais pour chaque participants
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

% Points pour la première barre (maximal weight, low friction)
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

% Points pour la deuxième barre (maximal weight, high friction)

hold on;
xoffset = 0.10; 
plot(xdata(1)+xoffset,B(1:8),'k.','HandleVisibility','off');
hold on 
xoffset = 0.12;
plot(xdata(1)+xoffset,B(9:16),'k.','HandleVisibility','off');
hold on 
xoffset = 0.14; 
plot(xdata(1)+xoffset,B(17:24),'k.','HandleVisibility','off');
hold on 
xoffset = 0.16; 
plot(xdata(1)+xoffset,B(25:32),'k.','HandleVisibility','off');
hold on 
xoffset = 0.18; 
plot(xdata(1)+xoffset,B(32:39),'k.', 'HandleVisibility','off');



% Points pour la troisième barre (minimal weight, low friction)

hold on;
xoffset = -0.10; 
plot(xdata(2)+xoffset,C(1:8),'k.','HandleVisibility','off');
hold on 
xoffset = -0.12; 
plot(xdata(2)+xoffset,C(9:16),'k.','HandleVisibility','off');
hold on 
xoffset = -0.14; 
plot(xdata(2)+xoffset,C(17:24),'k.','HandleVisibility','off');
hold on 
xoffset = -0.16; 
plot(xdata(2)+xoffset,C(25:32),'k.','HandleVisibility','off');
hold on 
xoffset = -0.18; 
plot(xdata(2)+xoffset,C(32:39),'k.', 'HandleVisibility','off');
hold on 

% Points pour la quatrième barre (minimal weight, high friction)

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
%}
%% Code pour avoir tous les points data superposés sur le barplot (Young participants)
%{
% Points pour la première barre (maximal weight, low friction)
hold on;
xoffset = -0.11; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(1:6),'k.','HandleVisibility','off');
hold on 
xoffset = -0.12; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(7:13),'k.','HandleVisibility','off');
hold on 
xoffset = -0.13; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(14:20),'k.','HandleVisibility','off');
hold on 
xoffset = -0.14; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(21:27),'k.','HandleVisibility','off');
hold on 
xoffset = -0.15; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(28:34),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.16; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(35:41),'k.', 'HandleVisibility','off');
hold on
xoffset = -0.17; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(42:48),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.18; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,A(49:60),'k.', 'HandleVisibility','off');
% Points pour la deuxième barre (maximal weight, high friction)
hold on;
xoffset = 0.11; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(1:5),'k.','HandleVisibility','off');
hold on 
xoffset = 0.12; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(6:11),'k.','HandleVisibility','off');
hold on 
xoffset = 0.13; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(12:17),'k.','HandleVisibility','off');
hold on 
xoffset = 0.14; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(18:23),'k.','HandleVisibility','off');
hold on 
xoffset = 0.15; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(24:29),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.16; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(30:35),'k.', 'HandleVisibility','off');
hold on
xoffset = 0.17; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(36:40),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.18; % manual set of get from properties of bar handle
plot(xdata(1)+xoffset,B(41:45),'k.', 'HandleVisibility','off');
% Points pour la troisième barre (minimal weight, low friction)
hold on;
xoffset = -0.11; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(1:5),'k.','HandleVisibility','off');
hold on 
xoffset = -0.12; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(6:11),'k.','HandleVisibility','off');
hold on 
xoffset = -0.13; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(12:17),'k.','HandleVisibility','off');
hold on 
xoffset = -0.14; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(18:23),'k.','HandleVisibility','off');
hold on 
xoffset = -0.15; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(24:29),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.16; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(30:35),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.17; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(36:40),'k.', 'HandleVisibility','off');
hold on 
xoffset = -0.18; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,C(41:45),'k.', 'HandleVisibility','off');
% Points pour la quatrième barre (minimal weight, high friction)
hold on;
xoffset = 0.11; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(1:6),'k.','HandleVisibility','off');
hold on 
xoffset = 0.12; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(7:13),'k.','HandleVisibility','off');
hold on 
xoffset = 0.13; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(14:20),'k.','HandleVisibility','off');
hold on 
xoffset = 0.14; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(21:27),'k.','HandleVisibility','off');
hold on 
xoffset = 0.15; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(28:34),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.16; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(35:41),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.17; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(42:48),'k.', 'HandleVisibility','off');
hold on 
xoffset = 0.18; % manual set of get from properties of bar handle
plot(xdata(2)+xoffset,D(49:60),'k.', 'HandleVisibility','off');
%}


%% Code pour mettre les valeurs des pics de GF au-dessus des bars respectives
% ce code n'est pas utilisé pour le moment
%{
ylim([0 11])
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
