function allsignals = at_importblocessai(fpath)
%Retourne un tableau contenant 
%   fpath est le nom du dossier, par exemple 'BDelhaye_24-11-2021'
filelist=dir(fpath); 
filelist= filelist(~[filelist.isdir]);
[~,idx] = sort([filelist.datenum]);
filelist = filelist(idx);
nfiles=length(filelist);
matrixsize=761; %tous sauf JDommisse et BDelhaye
allsignals=zeros(matrixsize,19);
k=1;
for i=19:24
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    allsignals(:,k) = x.gf(2000:end);
    k=k+1;
    allsignals(:,k)=x.lf(2000:end);
    k=k+1;
    allsignals(:,k)=x.pos(2000:end);
    k=k+1;
    allsignals(:,19)=x.time(2000:end);
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'Time'});
%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;
indices = zeros(6,1); %Array to hold the final outputs
threshold = 2; %Threshold value
for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %find function returns array of indices of ... 
    % all the values that are greater than the threshold so 2N for the load
    % force
    indices(i) = greaterThan(1); %We only need the first such index
end
minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;
figure
time=allsignals.Time;
plot(time-synchro1,allsignals.GF1,'b:',time-synchro2,allsignals.GF2,'b', time-synchro3,allsignals.GF3,'r',time-synchro4,allsignals.GF4,'r:',time-synchro5,allsignals.GF5,'r:', time-synchro6,allsignals.GF6,'r:')
title('JD - Block 4 - HF - min to max')
legend('Min weight', 'Before change - min weight', 'After change - max weight', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
