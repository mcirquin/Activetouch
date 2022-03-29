%Creates 2 tables (GF and LF) containing the alligned data
%for each trial of each participant

trials = 120;
nparticipants = 15;
threshold = 2; %Valeur threshold pour l'alignement des courbes semon la LF 
tstart = 2000;
tsteps = 2759;  %nombre de pas de temps 
GFtable = zeros(tsteps-tstart+1,nparticipants*trials); %matrice reprenant toutes les données de GF pour chaque essai pour chaque participant
LFtable = zeros(tsteps-tstart+1,nparticipants*trials); %matrice reprenant toutes les données de LF pour chaque essai pour chaque participant
l = 1;


D = 'Experimental data 18-35';
S = dir(fullfile(D, '*'));
N = setdiff({S([S.isdir]).name},{'.','..'}); % list of subfolders of D.
for ii = 1:numel(N)    %loop going through each folder
    filelist = dir(fullfile(D,N{ii},'*.csv')); % improve by specifying the file extension
    filelist= filelist(~[filelist.isdir]);  % classification of folders in good order
    [~,idx] = sort([filelist.datenum]);
    filelist = filelist(idx);
    nfiles=length(filelist);
    C = {filelist(~[filelist.isdir]).name}; % files in subfolder (cell created for the loop)
    
    for jj = 1:numel(filelist)   % loop that takes each file of the folder
        F = fullfile(D,N{ii},C{jj});
        x = at_import(F, 'freqFiltForces', 20); %import table for each trial
        GFtable(:,l)=x.gf(tstart:tsteps); %extraction et stockage données de GF pour l'essai dans la matrice globale
        LFtable(:,l)=x.lf(tstart:tsteps); %extraction et stockage données de LF pour l'essai dans la matrice globale
        l = l+1;
    end
end

indices = zeros(nparticipants*trials,1); %Vecteur reprenant les outputs finaux
for i = 1:nparticipants*trials   %loop going through every column of the matrix   
    greaterThan = find(LFtable(:,i) >= threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

alignedGFtable = zeros(tsteps-tstart+1,nparticipants*trials);
alignedLFtable = zeros(tsteps-tstart+1,nparticipants*trials);
minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base pour aligner

shiftmatrix=zeros(nparticipants*trials,1)
shiftmatrix=indices-minimum;
shiftmatrix=shiftmatrix.'
disp(shiftmatrix)

for j = 1:(nparticipants*trials) 
    LFvector = circshift(LFtable(:,j),-(shiftmatrix(j)));
    alignedLFtable(:,j)= LFvector;
    GFvector = circshift(GFtable(:,j),-(shiftmatrix(j)));
    alignedGFtable(:,j)= GFvector;    
end

figure
plot(alignedLFtable(:,25),'r')
hold on 
plot(alignedLFtable(:,32),'b') 
hold on
plot(alignedLFtable(:,68),'k') 
hold on
plot(alignedLFtable(:,89),'g') 
hold on
plot(alignedLFtable(:,120),'y')        
