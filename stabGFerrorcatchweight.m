%Boxplots stab GF catch weight. Max to min LF, Max to min HF, min to max LF, min to
%max HF
function stabcatchweight = stabGFerrorcatchweight(meanstabGFmatrix, nparticipants)
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

A=reshape(maxtominstabLF,1,[]).'; % reprend toutes les valeurs de tout le monde
B=reshape(mintomaxstabLF,1,[]).';
C=reshape(maxtominstabHF,1,[]).';
D=reshape(mintomaxstabHF,1,[]).';

x = [A;B;C;D];

%% Elderly participants
%{
group1=ones(1,65); %taille matrice A
group2=ones(1,52)*2; %taille matrice B
group3=ones(1,52)*3; %taille matrice C
group4=ones(1,65)*4; %%taille matrice D
%}

%% Young participants
group1=ones(1,75);
group2=ones(1,60)*2;
group3=ones(1,60)*3;
group4=ones(1,75)*4;

%% Boxplot
group = [group1,group2,group3,group4];
positions = [1 1.25 2 2.25];
boxplot(x,group, 'positions', positions);

set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4)) ])
set(gca,'xticklabel',{'Low friction','High friction'})
title('Mean grip force during stabilization for weight catch trials - Elderly participants')
%title('Mean grip force during stabilization for weight catch trials - Young participants')
ylabel('Grip force peak (N)');
%ylim([0,20]);

yellow=[0.8500, 0.3250, 0.0980]	;
orange=[0.9290, 0.6940, 0.1250];
lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
set(lines, 'LineWidth',1, 'Color', [0 0 0]);
color = ['r';'b';'r';'b'];
h = findobj(gca,'Tag','Box');
for j=1:length(h)
   patch(get(h(j),'XData'),get(h(j),'YData'),color(j,:),'FaceAlpha',0.85);
end

c = get(gca, 'Children');

hleg1 = legend(c(1:2), 'Maximal to minimal weight', 'Minimal to maximal weight' );
