%Boxplots catch weight. Max to min LF, Max to min HF, min to max LF, min to
%max HF
function catchweight = maxGFerrorcatchweight(maxGFmatrix, nparticipants)
% Max to min LF 
nessais=5;
maxtominLF=zeros(nessais, nparticipants);
maxtominLF(1,:)=maxGFmatrix(16,:);
maxtominLF(2,:)=maxGFmatrix(29,:);
maxtominLF(3,:)=maxGFmatrix(63,:);
maxtominLF(4,:)=maxGFmatrix(76,:);
maxtominLF(5,:)=maxGFmatrix(95,:);
meanmaxtominLFsub=mean(maxtominLF, 2);
meanmaxtominLF=mean(meanmaxtominLFsub);

meanmaxtominLFparticipants=mean(maxtominLF);

% Max to min HF 
nessaisbis=4;
maxtominHF=zeros(nessaisbis, nparticipants);
maxtominHF(1,:)=maxGFmatrix(41,:);
maxtominHF(2,:)=maxGFmatrix(69,:);
maxtominHF(3,:)=maxGFmatrix(88,:);
maxtominHF(4,:)=maxGFmatrix(112,:);
meanmaxtominHFsub=mean(maxtominHF, 2);
meanmaxtominHF=mean(meanmaxtominHFsub);

meanmaxtominHFparticipants=mean(maxtominHF);

% Min to max LF 
mintomaxLF=zeros(nessaisbis, nparticipants);
mintomaxLF(1,:)=maxGFmatrix(45,:);
mintomaxLF(2,:)=maxGFmatrix(58,:);
mintomaxLF(3,:)=maxGFmatrix(83,:);
mintomaxLF(4,:)=maxGFmatrix(105,:);
meanmintomaxLFsub=mean(mintomaxLF, 2);
meanmintomaxLF=mean(meanmintomaxLFsub);

meanmintomaxLFparticipants=mean(mintomaxLF);

% Min to max HF 
mintomaxHF=zeros(nessais, nparticipants);
mintomaxHF(1,:)=maxGFmatrix(21,:);
mintomaxHF(2,:)=maxGFmatrix(33,:);
mintomaxHF(3,:)=maxGFmatrix(52,:);
mintomaxHF(4,:)=maxGFmatrix(101,:);
mintomaxHF(5,:)=maxGFmatrix(119,:);
meanmintomaxHFsub=mean(mintomaxHF, 2);
meanmintomaxHF=mean(meanmintomaxHFsub);

meanmintomaxHFparticipants=mean(mintomaxHF);

% Transformation en vecteur des matrices créées ci-dessus
A=reshape(maxtominLF,1,[]).'; % reprend toutes les valeurs de tout le monde
B=reshape(mintomaxLF,1,[]).';
C=reshape(maxtominHF,1,[]).';
D=reshape(mintomaxHF,1,[]).';

size(A);
size(B);
size(C);
size(D);

%Grand vecteur reprenant toutes les données des sous-vecteurs A,B,C,D
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

%% Boxplots 
group = [group1,group2,group3,group4];
positions = [1 1.25 2 2.25];
boxplot(x,group, 'positions', positions);


set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4)) ])
set(gca,'xticklabel',{'Low friction','High friction'})
%title('Grip force peak magnitude for weight catch trials - Elderly participants')
title('Grip force peak magnitude for weight catch trials - Young participants')
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
