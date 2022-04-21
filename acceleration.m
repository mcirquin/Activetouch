%Creates 3 tables (position, velocity and acceleration) containing the data
%for each trial of each participant

trials = 108;
nparticipants = 13;
tstart = 2000;
tsteps = 2759;  %nombre de pas de temps 
shiftmatrix = shiftmatrix;%même matrice que celle utilisée pour aligné les load forces dans le code at_importalignedfolders
dt=0.005; %pas de temps entre chaque mesure (en secondes)
postable = zeros(tsteps-tstart+1,nparticipants*trials); %matrice reprenant toutes les données de position pour chaque essai pour chaque participant
l = 1;
 

D = 'Aged_participants';
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
        x = at_import(F, 'freqFiltPos', 20); %import table for each trial
        postable(:,l)=x.pos(tstart:tsteps); %extraction et stockage des données de positions
        postable(:,l)= postable(1,l)- postable(:,l);
        l = l+1;
    end
end

for j = 1:(nparticipants*trials) 
    posvector = circshift(postable(:,j),-(shiftmatrix(j)));
    alignedpostable(:,j)= posvector;
end

reducedalignedpostable = squeeze(mean(reshape(alignedpostable,[10,76,nparticipants*trials]),1));%moyene à chaque fois sur 10 valeurs
alignedveltable = diff(reducedalignedpostable)/(dt*10); %vitesse en cm/s, 10 car regroupement de 10 valeurs
alignedacctable= diff(alignedveltable)/(dt*10); %acc en cm/s^2
