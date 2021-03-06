%Boxplots pour essais ctach friction
function stabLF = stabGFerrorcatchverre(meanstabGFmatrix, nparticipants)
%% Max LF catch verres
nessais=2;
maxstabLF=zeros(nessais, nparticipants);
maxstabLF(1,:)=meanstabGFmatrix(13,:);
maxstabLF(2,:)=meanstabGFmatrix(25,:);
%maxstabLF(3,:)=meanstabGFmatrix(73,:);
%maxstabLF(4,:)=meanstabGFmatrix(91,:);
meanmaxstabLFsub=mean(maxstabLF,2);%donne un tableau de 2 résultats donc moyennes des 2 essais
meanmaxstabLF=mean(meanmaxstabLFsub);

meanmaxstabLFparticipant = mean(maxstabLF);


%% Max HF catch verres
nessaisbis=2;
maxstabHF=zeros(nessaisbis, nparticipants);
%maxstabHF(1,:)=meanstabGFmatrix(67,:);
maxstabHF(1,:)=meanstabGFmatrix(85,:);
maxstabHF(2,:)=meanstabGFmatrix(109,:);
meanmaxstabHFsub=mean(maxstabHF,2);
meanmaxstabHF=mean(meanmaxstabHFsub);

meanmaxstabHFparticipant = mean(maxstabHF);

%% Min LF catch verres
nessais3=1;
minstabLF=zeros(nessais3, nparticipants);
minstabLF(1,:)=meanstabGFmatrix(43,:);
%minstabLF(2,:)=meanstabGFmatrix(55,:);
%minstabLF(3,:)=meanstabGFmatrix(103,:);
meanminstabLFsub=mean(minstabLF, 2);
meanminstabLF=mean(meanminstabLFsub);
meanminstabLFparticipant=minstabLF;
%meanminstabLFparticipant = mean(minstabLF);

%% Min HF catch verres
nessais4=3;
minstabHF=zeros(nessais4, nparticipants);
minstabHF(1,:)=meanstabGFmatrix(19,:);
minstabHF(2,:)=meanstabGFmatrix(31,:);
%minstabHF(3,:)=meanstabGFmatrix(49,:);
minstabHF(3,:)=meanstabGFmatrix(97,:);
meanminstabHFsub=mean(minstabHF, 2); %moyenne pour tous les sujets
meanminstabHF=mean(meanminstabHFsub);%moyenne des moyennes de tous les sujets

meanminstabHFparticipant = mean(minstabHF);


A=reshape(maxstabLF,1,[]).';
B=reshape(maxstabHF,1,[]).';
C=reshape(minstabLF,1,[]).';
D=reshape(minstabHF,1,[]).';

x = [A;B;C;D];


%% All participants
group1=ones(1,size(A,1));
group2=ones(1,size(B,1))*2;
group3=ones(1,size(C,1))*3;
group4=ones(1,size(D,1))*4;


%% Boxplots
group = [group1,group2,group3,group4];
positions = [1 1.25 2 2.25];
boxplot(x,group, 'positions', positions);

set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4)) ])
set(gca,'xticklabel',{'Maximal weight','Minimal weight'})
%title('Mean grip force during stabilization for friction catch trials - Elderly participants')
title('Mean grip force during stabilization for friction catch trials - Young participants')
ylabel('Grip force peak (N)')
%ylim([0,20]);

yellow=[0.8500, 0.3250, 0.0980]	;
orange=[0.9290, 0.6940, 0.1250];
lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
set(lines, 'LineWidth',1, 'Color', [0 0 0]);
color = [([0.8500, 0.3250, 0.0980]);([0.9290, 0.6940, 0.1250]);([0.8500, 0.3250, 0.0980]);([0.9290, 0.6940, 0.1250])];
h = findobj(gca,'Tag','Box');
for j=1:length(h)
   patch(get(h(j),'XData'),get(h(j),'YData'),color(j,:),'FaceAlpha',0.85);
end

c = get(gca, 'Children');

hleg1 = legend(c(1:2), 'Low Friction', 'High Friction' );
