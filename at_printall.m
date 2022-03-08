%% Bloc initial: importe l'ensemble des csv de chaque essai pour le sujet et les trie dans l'ordre
sujet = 'ARommel_17_02_2022'
filelist=dir(sujet); 
filelist= filelist(~[filelist.isdir]);
[~,idx] = sort([filelist.datenum]);
filelist = filelist(idx);
nfiles=length(filelist);

name= 'AR';
tsteps = 2759; %dimension de la allsignals dépendant du nombre de pas de temps (2760 en général)
k=1;


%% Bloc 3
allsignals=zeros(tsteps,19);
for i=13:18
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
figure
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos1','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
plot(allsignals.time(2000:end),allsignals.GF2(2000:end),'r:',allsignals.time(2000:end),allsignals.GF3(2000:end),'r', allsignals.time(2000:end),allsignals.GF4(2000:end),'b',allsignals.time(2000:end),allsignals.GF5(2000:end),'b:',allsignals.time(2000:end),allsignals.GF6(2000:end),'b:', allsignals.time(2000:end),allsignals.GF1(2000:end),'r:')
title(name + " Block 3 - maximal to minimal manipulandum weight (LF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location', 'best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block3_" + name),'-dpng')
%% Bloc 4
allsignals=zeros(tsteps,19);
k=1;
for i=19:24
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos1','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF1(2000:end),'b:',allsignals.time(2000:end),allsignals.GF2(2000:end),'b', allsignals.time(2000:end), allsignals.GF3(2000:end),'r',allsignals.time(2000:end),allsignals.GF4(2000:end),'r:',allsignals.time(2000:end),allsignals.GF5(2000:end),'r:', allsignals.time(2000:end),allsignals.GF6(2000:end),'r:')
title(name + " Block 4 - minimal to maximal manipulandum weight (HF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block4_" + name),'-dpng')
%% Bloc 5
allsignals=zeros(tsteps,19);
k=1;
for i=25:30
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF3(2000:end),'r:',allsignals.time(2000:end),allsignals.GF4(2000:end),'r',allsignals.time(2000:end),allsignals.GF5(2000:end),'b', allsignals.time(2000:end),allsignals.GF6(2000:end),'b:', allsignals.time(2000:end),allsignals.GF1(2000:end),'r:',allsignals.time(2000:end),allsignals.GF2(2000:end),'r:')
title(name + " Block 5 - maximal to minimal manipulandum weight (LF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block5_" + name),'-dpng')
%% Bloc 6
allsignals=zeros(tsteps,19);
k=1;
for i=31:36
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF1(2000:end),'b:',allsignals.time(2000:end),allsignals.GF2(2000:end),'b', allsignals.time(2000:end),allsignals.GF3(2000:end),'r',allsignals.time(2000:end),allsignals.GF4(2000:end),'r:',allsignals.time(2000:end),allsignals.GF5(2000:end),'r:', allsignals.time(2000:end),allsignals.GF6(2000:end),'r:')
title(name + " Block 6 - minimal to maximal manipulandum weight (HF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Force (N)')
print(strcat("Block6_" + name),'-dpng')
%% Bloc 7
allsignals=zeros(tsteps,19);
k=1;
for i=37:42
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF3(2000:end),'r:',allsignals.time(2000:end),allsignals.GF4(2000:end),'r',allsignals.time(2000:end),allsignals.GF5(2000:end),'b', allsignals.time(2000:end),allsignals.GF6(2000:end),'b:', allsignals.time(2000:end),allsignals.GF1(2000:end),'r:',allsignals.time(2000:end),allsignals.GF2(2000:end),'r:')
title(name + " Block 7 - maximal to minimal manipulandum weight (HF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block7_" + name),'-dpng')
%% Bloc 8
allsignals=zeros(tsteps,19);
k=1;
for i=43:48
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF1(2000:end),'b:',allsignals.time(2000:end),allsignals.GF2(2000:end),'b', allsignals.time(2000:end),allsignals.GF3(2000:end),'r',allsignals.time(2000:end),allsignals.GF4(2000:end),'r:',allsignals.time(2000:end),allsignals.GF5(2000:end),'r:', allsignals.time(2000:end),allsignals.GF6(2000:end),'r:')
title(name + " Block 8 - minimal to maximal manipulandum weight (LF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block8_" + name),'-dpng')
%% Bloc 9
allsignals=zeros(tsteps,19);
k=1;
for i=49:54
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF2(2000:end),'b:',allsignals.time(2000:end),allsignals.GF3(2000:end),'b', allsignals.time(2000:end),allsignals.GF4(2000:end),'r',allsignals.time(2000:end),allsignals.GF5(2000:end),'r:',allsignals.time(2000:end),allsignals.GF6(2000:end),'r:', allsignals.time(2000:end),allsignals.GF1(2000:end),'b:')
title(name + " Block 9 - minimal to maximal manipulandum weight (HF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block9_" + name),'-dpng')
%% Bloc 10
allsignals=zeros(tsteps,19);
k=1;
for i=55:60
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF2(2000:end),'b:',allsignals.time(2000:end),allsignals.GF3(2000:end),'b',allsignals.time(2000:end),allsignals.GF4(2000:end),'r', allsignals.time(2000:end),allsignals.GF5(2000:end),'r:', allsignals.time(2000:end),allsignals.GF6(2000:end),'r:',allsignals.time(2000:end),allsignals.GF1(2000:end),'b:')
title(name + " Block 10 - minimal to maximal manipulandum weight (LF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block10_" + name),'-dpng')
%% Bloc 11
allsignals=zeros(tsteps,19);
k=1;
for i=61:66
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF1(2000:end),'r:',allsignals.time(2000:end),allsignals.GF2(2000:end),'r', allsignals.time(2000:end),allsignals.GF3(2000:end),'b',allsignals.time(2000:end),allsignals.GF4(2000:end),'b:',allsignals.time(2000:end),allsignals.GF5(2000:end),'b:', allsignals.time(2000:end),allsignals.GF6(2000:end),'b:')
title(name + " Block 11 - maximal to minimal manipulandum weight (LF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block11_" + name),'-dpng')
%% Bloc 12
allsignals=zeros(tsteps,19);
k=1;
for i=67:72
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF1(2000:end),'r:',allsignals.time(2000:end),allsignals.GF2(2000:end),'r', allsignals.time(2000:end),allsignals.GF3(2000:end),'b',allsignals.time(2000:end),allsignals.GF4(2000:end),'b:',allsignals.time(2000:end),allsignals.GF5(2000:end),'b:', allsignals.time(2000:end),allsignals.GF6(2000:end),'b:')
title(name + " Block 12 - maximal to minimal manipulandum weight (HF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block12_" + name),'-dpng')
%% Bloc 13
allsignals=zeros(tsteps,19);
k=1;
for i=73:78
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF2(2000:end),'r:', allsignals.time(2000:end),allsignals.GF3(2000:end),'r',allsignals.time(2000:end),allsignals.GF4(2000:end),'b',allsignals.time(2000:end),allsignals.GF5(2000:end),'b:', allsignals.time(2000:end),allsignals.GF6(2000:end),'b:', allsignals.time(2000:end),allsignals.GF1(2000:end),'r:')
title(name + " Block 13 - maximal to minimal manipulandum weight (LF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block13_" + name),'-dpng')
%% Bloc 14
allsignals=zeros(tsteps,19);
k=1;
for i=79:84
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF3(2000:end),'b:',allsignals.time(2000:end),allsignals.GF4(2000:end),'b',allsignals.time(2000:end),allsignals.GF5(2000:end),'r', allsignals.time(2000:end),allsignals.GF6(2000:end),'r:', allsignals.time(2000:end),allsignals.GF1(2000:end),'b:',allsignals.time(2000:end),allsignals.GF2(2000:end),'b:')
title(name + " Block 14 - minimal to maximal manipulandum weight (LF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block14_" + name),'-dpng')
%% Bloc 15
allsignals=zeros(tsteps,19);
k=1;
for i=85:90
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF2(2000:end),'r:', allsignals.time(2000:end),allsignals.GF3(2000:end),'r',allsignals.time(2000:end),allsignals.GF4(2000:end),'b',allsignals.time(2000:end),allsignals.GF5(2000:end),'b:', allsignals.time(2000:end),allsignals.GF6(2000:end),'b:', allsignals.time(2000:end),allsignals.GF1(2000:end),'r:')
title(name + " Block 15 - maximal to minimal manipulandum weight (HF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block15_" + name),'-dpng')
%% Bloc 16
allsignals=zeros(tsteps,19);
k=1;
for i=91:96
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF3(2000:end),'r:',allsignals.time(2000:end),allsignals.GF4(2000:end),'r',allsignals.time(2000:end),allsignals.GF5(2000:end),'b', allsignals.time(2000:end),allsignals.GF6(2000:end),'b:', allsignals.time(2000:end),allsignals.GF1(2000:end),'r:',allsignals.time(2000:end),allsignals.GF2(2000:end),'r:')
title(name + " Block 16 - maximal to minimal manipulandum weight (LF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block16_" + name),'-dpng')
%% Bloc 17
allsignals=zeros(tsteps,19);
k=1;
for i=97:102
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF3(2000:end),'b:',allsignals.time(2000:end),allsignals.GF4(2000:end),'b',allsignals.time(2000:end),allsignals.GF5(2000:end),'r', allsignals.time(2000:end),allsignals.GF6(2000:end),'r:', allsignals.time(2000:end),allsignals.GF1(2000:end),'b:',allsignals.time(2000:end),allsignals.GF2(2000:end),'b:')
title(name + " Block 17 - minimal to maximal manipulandum weight (HF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block17_" + name),'-dpng')
%% Bloc 18
allsignals=zeros(tsteps,19);
k=1;
for i=103:108
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF1(2000:end),'b:',allsignals.time(2000:end),allsignals.GF2(2000:end),'b', allsignals.time(2000:end),allsignals.GF3(2000:end),'r',allsignals.time(2000:end),allsignals.GF4(2000:end),'r:',allsignals.time(2000:end),allsignals.GF5(2000:end),'r:', allsignals.time(2000:end),allsignals.GF6(2000:end),'r:')
title(name + " Block 18 - minimal to maximal manipulandum weight (LF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block18_" + name),'-dpng')
%% Bloc 19
allsignals=zeros(tsteps,19);
k=1;
for i=109:114
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF2(2000:end),'r:', allsignals.time(2000:end),allsignals.GF3(2000:end),'r',allsignals.time(2000:end),allsignals.GF4(2000:end),'b',allsignals.time(2000:end),allsignals.GF5(2000:end),'b:', allsignals.time(2000:end),allsignals.GF6(2000:end),'b:', allsignals.time(2000:end),allsignals.GF1(2000:end),'r:')
title(name + " Block 19 - maximal to minimal manipulandum weight (HF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block19_" + name),'-dpng')
%% Bloc 20
allsignals=zeros(tsteps,19);
k=1;
for i=115:120
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(1:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});
figure
plot(allsignals.time(2000:end),allsignals.GF3(2000:end),'b:',allsignals.time(2000:end),allsignals.GF4(2000:end),'b',allsignals.time(2000:end),allsignals.GF5(2000:end),'r', allsignals.time(2000:end),allsignals.GF6(2000:end),'r:', allsignals.time(2000:end),allsignals.GF1(2000:end),'b:',allsignals.time(2000:end),allsignals.GF2(2000:end),'b:')
title(name + " Block 20 - minimal to maximal manipulandum weight (HF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block20_" + name),'-dpng')