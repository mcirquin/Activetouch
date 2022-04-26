%Plots relative difference in friction vs relative
%difference in GF for friction catch trials 

nparticipants = 8; %number of participants 

%Define the normal force interval on which the mean friction coefficient is
%calculated
Fmin = 1;  
Fmax = 5;
Fint = [Fmin:Fmax];
Rdvector = [];

axis = 40; %limits of the plot
x = linspace(0,axis); %Axis limits for the plot of x=y line
y = linspace(0,axis);

[Rdfrictionpeak,Rdfrictionstab]=GFcatchfrictionvsbeforetrial(maxGF, meanstabGF, nparticipants); %import of Relative differences for friction catch trials 
meanRdfpeak = mean(abs(Rdfrictionpeak)); %absolute value of the relative differences to observe tendency
meanRdfstab = mean(abs(Rdfrictionstab));


D = 'Data Friction 18-35 (friction group)';
S = dir(fullfile(D, '*'));
N = setdiff({S([S.isdir]).name},{'.','..'}); % list of subfolders of D.

figure(5);
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
    Rdvector(ii) = Rd;
end

C = {'k','b','r','g',[1 0.9 0.1],[.5 .6 .7],[.8 .2 .6],[0.7 0.5 0.9],'c','m',[0.9 0.4 1],[0.2 0.8 0.7],[0.7 0.4 0.1],[0.4 0.55 0.8],[0.3 0.6 0.3]}; % Cell array of colors.
for i = 1:nparticipants   
    %graph plots
    subplot(1,2,1)
    figure(5); hold on;
    plot(x,y,'Color',[0.2 0.2 0.2]) %identity line
    figure(5);hold on;
    plot(Rdvector(i),meanRdfpeak(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('Relative difference in friction coefficient [%]')
    ylabel('Relative difference in GF for friction catch trials [%]')
    xlim([0 axis])
    ylim([0 axis])
    %xticks(0:1:axis)
    title('Grip force peaks')
    
    subplot(1,2,2)
    figure(5); hold on;
    plot(x,y,'Color',[0.2 0.2 0.2]) %identity line
    figure(5);hold on;
    plot(Rdvector(i),meanRdfstab(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('Relative difference in friction coefficient [%]')
    ylabel('Relative difference in GF for friction catch trials [%]')
    xlim([0 axis])
    ylim([0 axis])
    %xticks(0:1:axis)
    title('Grip force during stabilization')  
end