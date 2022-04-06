%Creates 2 tables (GF and LF) containing the alligned data
%for each trial of one participant 
%!!!use data files without the 2 first blocks!!!

trials = 108;
nparticipants = 1;
threshold = 2; %Valeur threshold pour l'alignement des courbes semon la LF 
tstart = 2000;
tsteps = 2759;  %nombre de pas de temps 
GFtable = zeros(tsteps-tstart+1,nparticipants*trials); %matrice reprenant toutes les données de GF pour chaque essai pour chaque participant
LFtable = zeros(tsteps-tstart+1,nparticipants*trials); %matrice reprenant toutes les données de LF pour chaque essai pour chaque participant
l = 1;
 

sujet = 'PLefèvre_14_02_2022'
filelist=dir(sujet); 
filelist= filelist(~[filelist.isdir]);
[~,idx] = sort([filelist.datenum]);
filelist = filelist(idx);
nfiles=length(filelist);
   
for i=1:108
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    GFtable(:,l)=x.gf(tstart:tsteps); %extraction et stockage données de GF pour l'essai dans la matrice globale
    LFtable(:,l)=x.lf(tstart:tsteps); %extraction et stockage données de LF pour l'essai dans la matrice globale
    l = l+1;
end

indices = zeros(nparticipants*trials,1); %Vecteur reprenant les outputs finaux

for i = 1:(nparticipants*trials)   %loop going through every column of the matrix   
    greaterThan = find(LFtable(:,i) >= threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

alignedGFtableone = zeros(tsteps-tstart+1,nparticipants*trials);
alignedLFtableone = zeros(tsteps-tstart+1,nparticipants*trials);
minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base pour aligner

shiftmatrix=zeros(nparticipants*trials,1);
shiftmatrix=indices-minimum;
shiftmatrix=shiftmatrix.';


for j = 1:(nparticipants*trials) 
    LFvector = circshift(LFtable(:,j),-(shiftmatrix(j)));
    alignedLFtableone(:,j)= LFvector;
    GFvector = circshift(GFtable(:,j),-(shiftmatrix(j)));
    alignedGFtableone(:,j)= GFvector;    
end
