%Plots the friction coefficient means of all the participants on the 
%same graph by looping through the folders of each participant

tsteps = 2759; %number of time steps 
l = 0;
%Define the normal force interval on which the mean friction coefficient is
%calculated
Fmin = 1;  
Fmax = 5;
Fint = [Fmin:Fmax];

D = 'Data Friction 55-75';
S = dir(fullfile(D, '*'));
N = setdiff({S([S.isdir]).name},{'.','..'}); % list of subfolders of D.

x=linspace(0,1.6);
y=linspace(0,1.6);
figure(1); hold on;
h1=plot(x,y,'Color',[0.2 0.2 0.2]) %identity line (x=y)
h(1)=h1(1);

figure(2);

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
    
    %relative difference in friction
    Rd = (abs(meanCF_HF-meanCF_LF)/min(meanCF_LF,meanCF_HF))*100;
    
    %graph plots
    figure(1); hold on;
    C = {'k','b','r','g',[1 0.9 0.1],[.5 .6 .7],[.8 .2 .6],[0.7 0.5 0.9],'c','m',[0.9 0.4 1],[0.2 0.8 0.7],[0.7 0.4 0.1],[0.4 0.55 0.8],[0.3 0.6 0.3]}; % Cell array of colors.
    h2= plot(meanCF_LF,meanCF_HF,'.', 'MarkerSize',10,'Color', C{ii});
    h(2)=h2(1);   
    h=[h(1);h(2)]
    
    %title('Mean coefficient of friction - Young participants')
    title('Mean coefficient of friction - Elderly participants')
    xlabel('Coefficient of friction - Low [-]')
    ylabel('Coefficient of friction - High [-]')
    yticks([0 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6])
    
    figure(2); hold on;
    h1 = plot(1,Rd,'.', 'MarkerSize',10,'Color', C{ii});
    set(gca,'XTick',[])
    set(gca, 'YDir','reverse')
    ylabel('Relative difference in Friction [%]')
    
    
end