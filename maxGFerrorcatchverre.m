
function maxLFerror = maxGFerrorcatchverre(maxGFmatrix, nparticipants)
% Max LF catch verres
nessais=4;
maxLF=zeros(nessais, nparticipants);
maxLF(1,:)=maxGFmatrix(13,:);
maxLF(2,:)=maxGFmatrix(25,:);
maxLF(3,:)=maxGFmatrix(73,:);
maxLF(4,:)=maxGFmatrix(91,:);
meanmaxLFsub=mean(maxLF, 2);
meanmaxLF=mean(meanmaxLFsub);
meanmaxLFparticipants=mean(maxLF);

A=reshape(maxLF,1,[]).'; % reprend toutes les valeurs de tout le monde
size(A);
S = std(A); %calcule la standard deviation
error=S;%/(nessais*nparticipants)


nessaisbis=3;
maxHF=zeros(nessaisbis, nparticipants);
maxHF(1,:)=maxGFmatrix(67,:);
maxHF(2,:)=maxGFmatrix(85,:);
maxHF(3,:)=maxGFmatrix(109,:);
meanmaxHFsub=mean(maxHF, 2);
meanmaxHF=mean(meanmaxHFsub);

meanmaxHFparticipants=mean(maxHF);

B=reshape(maxHF,1,[]).';
size(B)
% Min LF catch verres
minLF=zeros(nessaisbis, nparticipants);
minLF(1,:)=maxGFmatrix(43,:);
minLF(2,:)=maxGFmatrix(55,:);
minLF(3,:)=maxGFmatrix(103,:);
meanminLFsub=mean(minLF, 2);
meanminLF=mean(meanminLFsub);

meanminLFparticipants=mean(minLF);

C=reshape(minLF,1,[]).';

% Min HF catch verres
minHF=zeros(nessais, nparticipants);
minHF(1,:)=maxGFmatrix(19,:);
minHF(2,:)=maxGFmatrix(31,:);
minHF(3,:)=maxGFmatrix(49,:);
minHF(4,:)=maxGFmatrix(97,:);
meanminHFsub=mean(minHF, 2); %moyenne pour tous les sujets
meanminHF=mean(meanminHFsub);%moyenne des moyennes de tous les sujets

meanminHFparticipants=mean(minHF);

% Transformation en vecteur des matrices créées ci-dessus
D=reshape(minHF,1,[]).';

%Grand vecteur reprenant toutes les données des sous-vecteurs A,B,C,D
x = [A;B;C;D];

%% Elderly participants
group1=ones(1,52); %taille matrice A
group2=ones(1,39)*2; %taille matrice B
group3=ones(1,39)*3; %taille matrice C
group4=ones(1,52)*4; %taille matrice D

%% Young participants
group1=ones(1,60); %taille matrice A
group2=ones(1,45)*2; %taille matrice B
group3=ones(1,45)*3; %taille matrice C
group4=ones(1,60)*4; %taille matrice D

%% Boxplots

group = [group1,group2,group3,group4];
positions = [1 1.25 2 2.25];
boxplot(x,group, 'positions', positions);

set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4)) ])
set(gca,'xticklabel',{'Maximal weight','Minimal weight'})
%title('Grip force peak magnitude for friction catch trials - Elderly participants')
title('Grip force peak magnitude for friction catch trials - Young participants')
ylabel('Grip force peak (N)')
%ylim([0,12]);

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


