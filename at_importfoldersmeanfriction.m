%Plots the friction coefficient means of all the participants on the 
%same graph by looping through the folders of each participant

tsteps = 2759; %number of time steps 
l = 0;
%Define the normal force interval on which the mean friction coefficient is
%calculated
Fmin = 1;  
Fmax = 5;
Fint = [Fmin:Fmax];

k=1; %loop parameter
Rdlim = 10; %limit for acceptable relative difference between the 2 friction coefficients
pnames = string.empty; %array to store names of participants with Rd below limit

D = 'Data Friction 18-35';
S = dir(fullfile(D, '*'));
N = setdiff({S([S.isdir]).name},{'.','..'}); % list of subfolders of D.

x=linspace(0,1.6);
y=linspace(0,1.6);
h1=plot(x,y,'Color',[0.2 0.2 0.2]); %identity line (x=y)

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
    Rd = abs(meanCF_HF-meanCF_LF)/min(meanCF_HF,meanCF_LF)*100;
    
    %Identification of participants with relative difference in friction
    %lower than 10%
    
    if Rd < Rdlim
        pnames(k)=string(N{ii});
        k = k+1;
    end
    
    
    %graph plots
    pos1 = [0.1 0.15 0.5 0.7];
    subplot('Position',pos1);
    hold on;
    C = {'k','b','r','g',[1 0.9 0.1],[.5 .6 .7],[.8 .2 .6],[0.7 0.5 0.9],'c','m',[0.9 0.4 1],[0.2 0.8 0.7],[0.7 0.4 0.1],[0.4 0.55 0.8],[0.3 0.6 0.3]}; % Cell array of colors.
    h2= plot(meanCF_LF,meanCF_HF,'.', 'MarkerSize',10,'Color', C{ii});
    h1=plot(x,y,'Color',[0.2 0.2 0.2]); %identity line (x=y)
    h(2)=h2(1);   
    h=[h(1);h(2)];
    
    %title('Mean coefficient of friction - Young participants')
    title('Mean coefficient of friction - Elderly participants')
    xlabel('Coefficient of friction - Low [-]')
    ylabel('Coefficient of friction - High [-]')
    yticks([0 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6]);
    
    pos2 = [0.7 0.15 0.1 0.7];
    subplot('Position',pos2); hold on;
    h1 = plot(1,Rd,'.', 'MarkerSize',10,'Color', C{ii});
    set(gca,'XTick',[])
    set(gca, 'YDir','reverse')
    ylabel('Relative difference in Friction [%]')  
end
