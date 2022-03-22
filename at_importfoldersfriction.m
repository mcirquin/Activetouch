%Plots all the friction coefficient curves of all the participants on the 
%same graph by looping through the folders of each participant

tsteps = 2759; %number of time steps 
l = 0;

D = 'Data Friction 18-35';
S = dir(fullfile(D, '*'));
N = setdiff({S([S.isdir]).name},{'.','..'}); % list of subfolders of D.
rgb=[254 128 1]/256;
figure(1)
for ii = 1:numel(N)  %loop going through the folders 
    filelist = dir(fullfile(D,N{ii},'*.csv')); %improve by specifying the file extension
    filelist= filelist(~[filelist.isdir]);  % classification of folders in good order
    [~,idx] = sort([filelist.datenum]);
    filelist = filelist(idx);
    nfiles=length(filelist);
    C = {filelist(~[filelist.isdir]).name}; %files in subfolder (cell created for the loop)
    [indexglassLF, indexglassHF] = at_frictionplots(N{ii}, filelist, tsteps) %calculates the frictions for LF and HF for the participant
    
    
    %graph plot
    x=0.2:0.02:15;
    figure(1); hold on;
    h1=plot(x,indexglassLF.k.*x.^(indexglassLF.n-1),'Color',[0.9763 0.9831 0.0538]);
    h(1)=h1(1);
    
    figure(1); hold on;
    h2=plot(x,indexglassHF.k.*x.^(indexglassHF.n-1),'Color', rgb);
    h(2)=h2(1);
    
    h=[h(1);h(2)]
    legend(h, 'Low Friction', 'High Friction')
    title('Comparison of friction - Young participants')
    %title('Comparison of friction - Elderly participants')
    ylabel('TF/NF (-)')
    xlabel('NF (N)')
    ylim([0 3])
    xlim([0 10])
end
    
   
