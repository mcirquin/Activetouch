%Graphe max GF vs Max weight LF, Max weight HF, Min weight LF, Min weight HF
function stabLF = stabGFcatchverre(meanstabGFmatrix, nparticipants)
%% Max LF catch verres
nessais=4;
maxstabLF=zeros(nessais, nparticipants);
maxstabLF(1,:)=meanstabGFmatrix(13,:);
maxstabLF(2,:)=meanstabGFmatrix(25,:);
maxstabLF(3,:)=meanstabGFmatrix(73,:);
maxstabLF(4,:)=meanstabGFmatrix(91,:);
meanmaxstabLFsub=mean(maxstabLF,2);%donne un tableau de 4 résultats donc moyennes des 4 essais
meanmaxstabLF=mean(meanmaxstabLFsub);

meanmaxstabLFparticipant = mean(maxstabLF);


%% Max HF catch verres
nessaisbis=3;
maxstabHF=zeros(nessaisbis, nparticipants);
maxstabHF(1,:)=meanstabGFmatrix(67,:);
maxstabHF(2,:)=meanstabGFmatrix(85,:);
maxstabHF(3,:)=meanstabGFmatrix(109,:);
meanmaxstabHFsub=mean(maxstabHF,2);
meanmaxstabHF=mean(meanmaxstabHFsub);

meanmaxstabHFparticipant = mean(maxstabHF);

%% Min LF catch verres
minstabLF=zeros(nessaisbis, nparticipants);
minstabLF(1,:)=meanstabGFmatrix(43,:);
minstabLF(2,:)=meanstabGFmatrix(55,:);
minstabLF(3,:)=meanstabGFmatrix(103,:);
meanminstabLFsub=mean(minstabLF, 2);
meanminstabLF=mean(meanminstabLFsub);

meanminstabLFparticipant = mean(minstabLF);

%% Min HF catch verres
minstabHF=zeros(nessais, nparticipants);
minstabHF(1,:)=meanstabGFmatrix(19,:);
minstabHF(2,:)=meanstabGFmatrix(31,:);
minstabHF(3,:)=meanstabGFmatrix(49,:);
minstabHF(4,:)=meanstabGFmatrix(97,:);
meanminstabHFsub=mean(minstabHF, 2); %moyenne pour tous les sujets
meanminstabHF=mean(meanminstabHFsub);%moyenne des moyennes de tous les sujets

meanminstabHFparticipant = mean(minstabHF);

%% Plot des bars sur base des moyennes de tous les essais et de tous les participants
figure(1)
y=[meanmaxstabLF meanmaxstabHF; meanminstabLF meanminstabHF];
b = bar(y);
set(gca,'XTickLabel',{'Maximal weight';'Minimal weight'});
b(1).FaceColor = [0.9290 0.6940 0.1250];
b(2).FaceColor = [0.8500 0.3250 0.0980];
legend({'Low friction', 'High friction'},'Location','northeast')
title('Mean grip force during stabilization for friction catch trials - Elderly participants')
%title('Grip force peak magnitude for friction catch trials - Young participants')
ylabel('Mean grip force(N)')


%% Plot des lignes correspondant à la moyenne des essais pour chaque participants
hold on

xdata= get (b(2),'XData');
xlim=get(gca,'xlim');

xparticipantmaxLF=[xlim(1)+0.2, xlim(1)+0.47];
y1 = meanmaxstabLFparticipant;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmaxLF,y1(i)*ones(size(xparticipantmaxLF)), 'k','HandleVisibility','off')
end

hold on

xparticipantmaxHF=[xlim(1)+0.5, xlim(1)+0.75];
y2 = meanmaxstabHFparticipant;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantmaxHF,y2(i)*ones(size(xparticipantmaxHF)), 'k','HandleVisibility','off')
end

xparticipantminLF=[1.52+0.2, 1.52+0.47];
y3 = meanminstabLFparticipant;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantminLF,y3(i)*ones(size(xparticipantminLF)), 'k','HandleVisibility','off')
end

hold on

xparticipantminHF=[1.52+0.5, 1.52+0.75];
y4 = meanminstabHFparticipant;
for i=1:nparticipants
    figure(1); hold on;
    plot(xparticipantminHF,y4(i)*ones(size(xparticipantminHF)), 'k','HandleVisibility','off')
end



%% Code pour avoir tous les points data superposés sur le barplot (Elderly participants)


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



%plot a point on second bar from second group
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

%% Code pour avoir tous les points data superposés sur le barplot (Young participants)
% A compléter



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