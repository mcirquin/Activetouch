%% Bloc initial: importe l'ensemble des csv de chaque essai pour le sujet et les trie dans l'ordre
sujet = 'ARommel_17_02_2022'
filelist=dir(sujet); 
filelist= filelist(~[filelist.isdir]);
[~,idx] = sort([filelist.datenum]);
filelist = filelist(idx);
nfiles=length(filelist);

name= 'AR';
tsteps = 2759; %dimension de 'allsignals' dépendant du nombre de pas de temps (2760 en général)
matrixsize=tsteps - 1999; %données correspondants au mouvement de lever (extraction des données une fois que le mouvement commence)
threshold = 2; %Valeur threshold pour l'alignement des courbes semon la LF 
k=1;
%% Bloc 3
allsignals=zeros(matrixsize,19);
for i=13:18
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro2,allsignals.GF2,'r:',time-synchro3,allsignals.GF3,'r',time-synchro4,allsignals.GF4,'b',time-synchro5,allsignals.GF5,'b:', time-synchro6,allsignals.GF6,'b:', time-synchro1,allsignals.GF1, 'r:')
title(name + " Block 3 - maximal to minimal manipulandum weight (LF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location', 'best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block3_LFaligned_" + name),'-dpng')
%% Bloc 4
allsignals=zeros(matrixsize,19);
k=1;
for i=19:24
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro1,allsignals.GF1,'b:',time-synchro2,allsignals.GF2,'b', time-synchro3,allsignals.GF3,'r',time-synchro4,allsignals.GF4,'r:',time-synchro5,allsignals.GF5,'r:', time-synchro6,allsignals.GF6,'r:')
title(name + " Block 4 - minimal to maximal manipulandum weight (HF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block4_LFaligned_" + name),'-dpng')

%% Bloc 5
allsignals=zeros(matrixsize,19);
k=1;
for i=25:30
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro3,allsignals.GF3,'r:',time-synchro4,allsignals.GF4,'r',time-synchro5,allsignals.GF5,'b', time-synchro6,allsignals.GF6,'b:', time-synchro1,allsignals.GF1,'r:',time-synchro2,allsignals.GF2,'r:')
title(name + " Block 5 - maximal to minimal manipulandum weight (LF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block5_LFaligned_" + name),'-dpng')

%% Bloc 6
allsignals=zeros(matrixsize,19);
k=1;
for i=31:36
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro1,allsignals.GF1,'b:',time-synchro2,allsignals.GF2,'b', time-synchro3,allsignals.GF3,'r',time-synchro4,allsignals.GF4,'r:',time-synchro5,allsignals.GF5,'r:', time-synchro6,allsignals.GF6,'r:')
title(name + " Block 6 - minimal to maximal manipulandum weight (HF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Force (N)')
print(strcat("Block6_LFaligned_" + name),'-dpng')

%% Bloc 7
allsignals=zeros(matrixsize,19);
k=1;
for i=37:42
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro3,allsignals.GF3,'r:',time-synchro4,allsignals.GF4,'r',time-synchro5,allsignals.GF5,'b', time-synchro6,allsignals.GF6,'b:', time-synchro1,allsignals.GF1,'r:',time-synchro2,allsignals.GF2,'r:')
title(name + " Block 7 - maximal to minimal manipulandum weight (HF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block7_LFaligned_" + name),'-dpng')

%% Bloc 8
allsignals=zeros(matrixsize,19);
k=1;
for i=43:48
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro1,allsignals.GF1,'b:',time-synchro2,allsignals.GF2,'b', time-synchro3,allsignals.GF3,'r',time-synchro4,allsignals.GF4,'r:',time-synchro5,allsignals.GF5,'r:', time-synchro6,allsignals.GF6,'r:')
title(name + " Block 8 - minimal to maximal manipulandum weight (LF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block8_LFaligned_" + name),'-dpng')

%% Bloc 9
allsignals=zeros(matrixsize,19);
k=1;
for i=49:54
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro2,allsignals.GF2,'b:',time-synchro3,allsignals.GF3,'b',time-synchro4,allsignals.GF4,'r',time-synchro5,allsignals.GF5,'r:',time-synchro6,allsignals.GF6,'r:',time-synchro1,allsignals.GF1,'b:')
title(name + " Block 9 - minimal to maximal manipulandum weight (HF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block9_LFaligned_" + name),'-dpng')

%% Bloc 10
allsignals=zeros(matrixsize,19);
k=1;
for i=55:60
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro2,allsignals.GF2,'b:',time-synchro3,allsignals.GF3,'b',time-synchro4,allsignals.GF4,'r',time-synchro5,allsignals.GF5,'r:',time-synchro6,allsignals.GF6,'r:',time-synchro1,allsignals.GF1,'b:')
title(name + " Block 10 - minimal to maximal manipulandum weight (LF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block10_LFaligned_" + name),'-dpng')

%% Bloc 11
allsignals=zeros(matrixsize,19);
k=1;
for i=61:66
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro1,allsignals.GF1,'r:',time-synchro2,allsignals.GF2,'r', time-synchro3,allsignals.GF3,'b',time-synchro4,allsignals.GF4,'b:',time-synchro5,allsignals.GF5,'b:', time-synchro6,allsignals.GF6,'b:')
title(name + " Block 11 - maximal to minimal manipulandum weight (LF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block11_LFaligned_" + name),'-dpng')

%% bloc 12
allsignals=zeros(matrixsize,19);
k=1;
for i=67:72
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro1,allsignals.GF1,'r:',time-synchro2,allsignals.GF2,'r', time-synchro3,allsignals.GF3,'b',time-synchro4,allsignals.GF4,'b:',time-synchro5,allsignals.GF5,'b:', time-synchro6,allsignals.GF6,'b:')
title(name + " Block 12 - maximal to minimal manipulandum weight (HF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block12_LFaligned_" + name),'-dpng')

%% bloc 13
allsignals=zeros(matrixsize,19);
k=1;
for i=73:78
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro2,allsignals.GF2,'r:', time-synchro3,allsignals.GF3,'r',time-synchro4,allsignals.GF4,'b',time-synchro5,allsignals.GF5,'b:', time-synchro6,allsignals.GF6,'b:', time-synchro1,allsignals.GF1,'r:')
title(name + " Block 13 - maximal to minimal manipulandum weight (LF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block13_LFaligned_" + name),'-dpng')

%% Bloc 14
allsignals=zeros(matrixsize,19);
k=1;
for i=79:84
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro3,allsignals.GF3,'b:',time-synchro4,allsignals.GF4,'b',time-synchro5,allsignals.GF5,'r', time-synchro6,allsignals.GF6,'r:', time-synchro1,allsignals.GF1,'b:',time-synchro2,allsignals.GF2,'b:')
title(name + " Block 14 - minimal to maximal manipulandum weight (LF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block14_LFaligned_" + name),'-dpng')

%% Bloc 15
allsignals=zeros(matrixsize,19);
k=1;
for i=85:90
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro2,allsignals.GF2,'r:', time-synchro3,allsignals.GF3,'r',time-synchro4,allsignals.GF4,'b',time-synchro5,allsignals.GF5,'b:',time-synchro6,allsignals.GF6,'b:',time-synchro1,allsignals.GF1,'r:')
title(name + " Block 15 - maximal to minimal manipulandum weight (HF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block15_LFaligned_" + name),'-dpng')

%% Bloc 16
allsignals=zeros(matrixsize,19);
k=1;
for i=91:96
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro3,allsignals.GF3,'r:',time-synchro4,allsignals.GF4,'r',time-synchro5,allsignals.GF5,'b', time-synchro6,allsignals.GF6,'b:', time-synchro1,allsignals.GF1,'r:',time-synchro2,allsignals.GF2,'r:')
title(name + " Block 16 - maximal to minimal manipulandum weight (LF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block16_LFaligned_" + name),'-dpng')

%% Bloc 17
allsignals=zeros(matrixsize,19);
k=1;
for i=97:102
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro3,allsignals.GF3,'b:',time-synchro4,allsignals.GF4,'b',time-synchro5,allsignals.GF5,'r', time-synchro6,allsignals.GF6,'r:', time-synchro1,allsignals.GF1,'b:',time-synchro2,allsignals.GF2,'b:')
title(name + " Block 17 - minimal to maximal manipulandum weight (HF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block17_LFaligned_" + name),'-dpng')

%% Bloc 18
allsignals=zeros(matrixsize,19);
k=1;
for i=103:108
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro1,allsignals.GF1,'b:',time-synchro2,allsignals.GF2,'b', time-synchro3,allsignals.GF3,'r',time-synchro4,allsignals.GF4,'r:',time-synchro5,allsignals.GF5,'r:', time-synchro6,allsignals.GF6,'r:')
title(name + " Block 18 - minimal to maximal manipulandum weight (LF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block18_LFaligned_" + name),'-dpng')

%% Bloc 19
allsignals=zeros(matrixsize,19);
k=1;
for i=109:114
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro2,allsignals.GF2,'r:', time-synchro3,allsignals.GF3,'r',time-synchro4,allsignals.GF4,'b',time-synchro5,allsignals.GF5,'b:',time-synchro6,allsignals.GF6,'b:',time-synchro1,allsignals.GF1,'r:')
title(name + " Block 19 - maximal to minimal manipulandum weight (HF)")
legend('Max weight', 'Max weight - before change', 'Min weight - after change', 'Min weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block19_LFaligned_" + name),'-dpng')

%% Bloc 20
allsignals=zeros(matrixsize,19);
k=1;
for i=115:120
    x = at_import(filelist(i).name, 'freqFiltForces', 20);
    x = x(2000:tsteps,:);
    allsignals(:,k) = x.gf;
    k=k+1;
    allsignals(:,k)=x.lf;
    k=k+1;
    allsignals(:,k)=x.pos;
    k=k+1;
    allsignals(:,19)=x.time;
end
allsignals = array2table(allsignals,'VariableNames',{'GF1','LF1','Pos','GF2','LF2','Pos2','GF3','LF3','Pos3','GF4','LF4','Pos4','GF5','LF5','Pos5','GF6','LF6','Pos6', 'time'});

%création d'un tableau reprenant les LF des 6 essais afin de pouvoir
%synchroniser les courbes quand LF>2N
loadforces=zeros(matrixsize,6);
loadforces(:,1)=allsignals.LF1;
loadforces(:,2)=allsignals.LF2;
loadforces(:,3)=allsignals.LF3;
loadforces(:,4)=allsignals.LF4;
loadforces(:,5)=allsignals.LF5;
loadforces(:,6)=allsignals.LF6;

indices = zeros(6,1); %Vecteur reprenant les outputs finaux

for i=1:6
    greaterThan = find(loadforces(:,i) > threshold); %fonction find: retourne 
    %vecteur avec les indices de toutes les valeurs qui sont plus grandes que
    %le treshold (2N pour la load force)
    indices(i) = greaterThan(1); %On prend le premier indice 
end

minimum=min(indices); %prend le minimum des indices, c'est sur celui ci qu'on se base
synchro1=(indices(1)-minimum)*0.005;
synchro2=(indices(2)-minimum)*0.005;
synchro3=(indices(3)-minimum)*0.005;
synchro4=(indices(4)-minimum)*0.005;
synchro5=(indices(5)-minimum)*0.005;
synchro6=(indices(6)-minimum)*0.005;

%plot
figure
time=allsignals.time;
plot(time-synchro3,allsignals.GF3,'b:',time-synchro4,allsignals.GF4,'b',time-synchro5,allsignals.GF5,'r', time-synchro6,allsignals.GF6,'r:', time-synchro1,allsignals.GF1,'b:',time-synchro2,allsignals.GF2,'b:')
title(name + " Block 20 - minimal to maximal manipulandum weight (HF)")
legend('Min weight', 'Min weight - before change', 'Max weight - after change', 'Max weight', 'Location','best')
xlabel('Time (s)')
ylabel('Grip force (N)')
print(strcat("Block20_LFaligned_" + name),'-dpng')

