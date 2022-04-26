%Plots the friction coefficient means of all the participants on the 
%same graph by looping through the folders of each participant

tsteps = 2759; %number of time steps 
l = 0;
%Define the normal force interval on which the mean friction coefficient is
%calculated
Fmin = 1;  
Fmax = 5;
Fint = [Fmin:Fmax];
l=1;
nparticipants=13; %ou 15
Rdvec=zeros(nparticipants,1);%vector containing the relative difference for each participants
xvec=zeros(nparticipants,1); %vector containing the x coordinates (LF) for each participant
yvec=zeros(nparticipants,1); %vector containing the y coordinates (HF) for each participant

%% For each participant, compute the mean LF and the mean HF friction coeff

D = 'Aged_friction';
S = dir(fullfile(D, '*'));
N = setdiff({S([S.isdir]).name},{'.','..'}); % list of subfolders of D.

for ii = 1:numel(N)  %loop going through the folders 
    filelist = dir(fullfile(D,N{ii},'*.csv')); %improve by specifying the file extension
    filelist= filelist(~[filelist.isdir]);  % classification of folders in good order
    [~,idx] = sort([filelist.datenum]);
    filelist = filelist(idx);
    nfiles=length(filelist);
    C = {filelist(~[filelist.isdir]).name}; %files in subfolder (cell created for the loop)
    [indexglassLF, indexglassHF] = at_frictionplots(N{ii}, filelist, tsteps); %calculates the frictions for LF and HF for the participant
    
    %Mean of the friction coefficient on the Force interval
    meanCF_LF = mean(indexglassLF.k.*Fint.^(indexglassLF.n-1));
    meanCF_HF = mean(indexglassHF.k.*Fint.^(indexglassHF.n-1));
    xvec(l)=meanCF_LF;
    yvec(l)=meanCF_HF;
    %relative difference in friction
    Rd = abs(meanCF_HF-meanCF_LF)/(meanCF_LF)*100;
    Rdvec(l)=Rd;
    l=l+1;
end
x=[1:1:nparticipants].';
[Rdvecsort,I] = sort(Rdvec); %sort Rd min to max
for i = 1:13
    xvecsort(i) = xvec(I(i)).'; %sort yvec in the same way
    yvecsort(i) = yvec(I(i)).';
end

%% Plot des graphes
x=linspace(0,1.6);
y=linspace(0,1.6);
h1=plot(x,y,'Color',[0.2 0.2 0.2]) %identity line (x=y)
hold on
pos1 = [0.1 0.15 0.5 0.7];
alphaelderly=[0.1 0.15 0.20 0.28 0.36 0.44 0.52 0.60 0.68 0.76 0.84 0.92 1]
%alphaelderly=[0.16 0.22 0.28 0.34 0.4 0.46 0.52 0.58 0.64 0.70 0.76 0.82 0.88 0.94 1]
subplot('Position',pos1);
hold on
for i=1:nparticipants
    h2=scatter(xvecsort(i),yvecsort(i), 13, 'r', 'filled');
    h2.MarkerFaceAlpha = alphaelderly(i);
    h1=plot(x,y,'Color',[0.2 0.2 0.2]) %identity line (x=y)
end
%title('Mean coefficient of friction - Young participants')
title('Mean coefficient of friction - Elderly participants')
xlabel('Coefficient of friction - Low [-]')
ylabel('Coefficient of friction - High [-]')
yticks([0 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6]);
xticks([0 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6])

pos2 = [0.7 0.15 0.1 0.7];
subplot('Position',pos2); hold on;

for i=1:nparticipants
    h2=scatter(1, Rdvecsort(i), 13, 'r', 'filled');
    h2.MarkerFaceAlpha = alphaelderly(i);
end
set(gca,'XTick',[])
set(gca, 'YDir','reverse')
ylabel('Relative difference in Friction [%]')

