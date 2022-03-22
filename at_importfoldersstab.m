%Creates two matrices (1 max weight matrix and 1 min weight matric)containing 
%the GF values for the stabilisation phase of each trial for each participant

tstart = 2300;  %limite de début de pas de temps pour la recherche des GF de stabilisation
tstop = 2550; %limite de pas de temps pour la recherche des GF de stabilisation
tsteps = 2759;
trials = 120;
tresholdmin = 0.95; %seuil inférieur de détermination de stabilisation: min valeur de LF = 95% du poids
%tresholdmax = 1.15; %seuil supérieur de détermination de stabilisation:max valeur de LF = 115% du poids
nparticipants = 15;
meanstabGF = zeros(120,nparticipants);   %crétaion matrice de stockage des moyennes de GF de stabilisation

k = 1;
essai = 1;
l = 0;

D = 'Experimental data 18-35';
S = dir(fullfile(D, '*'));
N = setdiff({S([S.isdir]).name},{'.','..'}); % list of subfolders of D.
for ii = 1:numel(N)  %loop going through folders
    filelist = dir(fullfile(D,N{ii},'*.csv')); % improve by specifying the file extension
    filelist= filelist(~[filelist.isdir]);  % classification of folders in good order
    [~,idx] = sort([filelist.datenum]);
    filelist = filelist(idx);
    nfiles=length(filelist);
    C = {filelist(~[filelist.isdir]).name}; % files in subfolder (cell created for the loop)
    l = l+1;
    k = 1;
    
    for jj = 1:numel(filelist)  %loop taking each file of the folder
        F = fullfile(D,N{ii},C{jj});
        %appel de la fonction (renvoyant la GF moyenne de stabilisation pour l'essai) pour poids min ou max dépendant de l'essai
        if ismember(essai, [13,25,73,91,67,85,109,45,58,83,105,21,33,52,101,119,14,15,26,27,28,62,74,75,92,93,94,46,47,48,59,60,84,106,107,108,61,38,39,40,68,86,87,110,111,22,23,24,34,35,36,53,54,102,120,37])
            GFstab = at_importmaxstabilisation(F,tstart,tstop,tresholdmin,tresholdmax); 
        else
            GFstab = at_importminstabilisation(F,tstart,tstop,tresholdmin,tresholdmax);
        end
        meanstabGF(k,l) = GFstab; %stockage des mean GF dans matrice reprenant tous les essais de tous les participants
        k = k+1;
        essai = essai + 1;
    end
end