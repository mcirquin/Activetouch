function allsignals = at_importallsubjecttest(fpath)
%Retourne un tableau contenant 
%   fpath est le nom du dossier, par exemple 'BDelhaye_24-11-2021'
filelist=dir(fpath); 
filelist= filelist(~[filelist.isdir]);
[~,idx] = sort([filelist.datenum]);
filelist = filelist(idx);
nfiles=length(filelist);
allsignals=zeros(2840,18);
k=1;
for i=1:6 
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6'});