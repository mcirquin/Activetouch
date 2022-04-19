%Graphe mean stab GF vs Max weight LF, Max weight HF, Min weight LF, Min weight HF
function stabGF = stabGFcatchverre(meanstabGFmatrix, nparticipants)
%% GF LF catch verres
nessais=2;
maxstabLF=zeros(nessais, nparticipants);
maxstabLF(1,:)=meanstabGFmatrix(13,:);
maxstabLF(2,:)=meanstabGFmatrix(25,:);
%maxstabLF(3,:)=meanstabGFmatrix(73,:);
%maxstabLF(4,:)=meanstabGFmatrix(91,:);
meanmaxstabLFsub=mean(maxstabLF,2);%donne un tableau de 2 résultats donc moyennes des 2 essais
meanmaxstabLF=mean(meanmaxstabLFsub);

meanmaxstabLFparticipants = mean(maxstabLF);


%% GF HF catch verres
nessaisbis=2;
maxstabHF=zeros(nessaisbis, nparticipants);
%maxstabHF(1,:)=meanstabGFmatrix(67,:);
maxstabHF(1,:)=meanstabGFmatrix(85,:);
maxstabHF(2,:)=meanstabGFmatrix(109,:);
meanmaxstabHFsub=mean(maxstabHF,2);
meanmaxstabHF=mean(meanmaxstabHFsub);

meanmaxstabHFparticipants = mean(maxstabHF);

%% GF LF catch verres
nessais3=1;
minstabLF=zeros(nessais3, nparticipants);
minstabLF(1,:)=meanstabGFmatrix(43,:);
%minstabLF(2,:)=meanstabGFmatrix(55,:);
%minstabLF(3,:)=meanstabGFmatrix(103,:);
meanminstabLFsub=mean(minstabLF, 2);
meanminstabLF=mean(meanminstabLFsub);
meanminstabLFparticipants=minstabLF;
%meanminstabLFparticipants = mean(minstabLF);

%% GF HF catch verres
nessais4=3;
minstabHF=zeros(nessais4, nparticipants);
minstabHF(1,:)=meanstabGFmatrix(19,:);
minstabHF(2,:)=meanstabGFmatrix(31,:);
%minstabHF(3,:)=meanstabGFmatrix(49,:);
minstabHF(3,:)=meanstabGFmatrix(97,:);
meanminstabHFsub=mean(minstabHF, 2); %moyenne pour tous les sujets
meanminstabHF=mean(meanminstabHFsub);%moyenne des moyennes de tous les sujets

meanminstabHFparticipants = mean(minstabHF);

%% Plot des bars sur base des moyennes de tous les essais et de tous les participants
figure(1)
y=[meanmaxstabLF meanmaxstabHF; meanminstabLF meanminstabHF];
b = bar(y);
set(gca,'XTickLabel',{'Maximal weight';'Minimal weight'});
b(1).FaceColor = [0.9290 0.6940 0.1250];
b(2).FaceColor = [0.8500 0.3250 0.0980];
legend({'Low friction', 'High friction'},'Location','northeast')
%title('Mean grip force during stabilization for friction catch trials - Elderly participants')
title('Mean grip force during stabilization for friction catch trials - Young participants')
ylabel('Mean grip force(N)')


%% Plot des lignes correspondant à la moyenne des essais pour chaque participants
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
%color cell (suppress colors if less participants!)
C = {'k','b','r','g',[1 0.9 0.1],[.5 .6 .7],[.8 .2 .6],[0.7 0.5 0.9],'c','m',[0.9 0.4 1],[0.2 0.8 0.7],[0.7 0.4 0.1],[0.4 0.55 0.8],[0.3 0.6 0.3]}; % Cell array of colros.
xdata= get (b(2),'XData');
xoffset1 = -0.14;
xoffset2 = 0.14;

hold on
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

%% Code pour avoir tous les points data superposés sur le barplot (Elderly participants)
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
%}
%% Code pour avoir tous les points data superposés sur le barplot (Young participants)
%{
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
