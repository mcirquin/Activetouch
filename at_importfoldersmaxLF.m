%Creates a matrix (ntrials,nparticipants) containing the max of the LF peak 
%for each trial of each participant

trials = 120;
nparticipants = 10;
tstop = 2500;  %limite de pas de temps pour la recherche du pic de GF
maxLF = zeros(120,nparticipants); %matrice de stockage des pics de GF
k = 1;
l = 0;

D = 'Experimental data 55-75';
S = dir(fullfile(D, '*'));
N = setdiff({S([S.isdir]).name},{'.','..'}); % list of subfolders of D.
for ii = 1:numel(N)    %loop going through each folder
    filelist = dir(fullfile(D,N{ii},'*.csv')); % improve by specifying the file extension
    filelist= filelist(~[filelist.isdir]);  % classification of folders in good order
    [~,idx] = sort([filelist.datenum]);
    filelist = filelist(idx);
    nfiles=length(filelist);
    C = {filelist(~[filelist.isdir]).name}; % files in subfolder (cell created for the loop)
    l = l+1;
    k = 1;
    
    for jj = 1:numel(filelist)   % loop that takes each file of the folder
        F = fullfile(D,N{ii},C{jj});
        x = at_import(F, 'freqFiltForces', 20); %import table for each trial
        x = x(2000:tstop,:);  %extract data corresponding to movement 
        lfmatrix = zeros(tstop - 1999,1);
        lfmatrix(:,1) = x.lf; %extraction of load force for each time step
        maximum=max(lfmatrix); %eaxtract maximal LF peak (if A is a matrix, then max(A) is a row vector containing the maximum value of each column).
        maxLF(k,l) = maximum(1,1); %stores the LF peak value of the trial in the matrix containing all trials
        k = k+1;    
    end
end