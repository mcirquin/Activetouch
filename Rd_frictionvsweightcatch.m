%Computes the mean values of relative differences for weight cacthes and
%for friction catches for each participant and plots them

nparticipants = 8; %number of participants
axis = 70; %limits of the plot
x = linspace(0,axis); %Axis limits for the plot of x=y line
y = linspace(0,axis);
C = {'k','b','r','g',[1 0.9 0.1],[.5 .6 .7],[.8 .2 .6],[0.7 0.5 0.9],'c','m',[0.9 0.4 1],[0.2 0.8 0.7],[0.7 0.4 0.1],[0.4 0.55 0.8],[0.3 0.6 0.3]}; % Cell array of colors.

%Rdvectors = 4 x nparticipants vectors, each line correspond to a type of
%catch and each column corresponds to a subject 
[Rdfrictionpeak,Rdfrictionstab]=GFcatchfrictionvsbeforetrial(maxGF, meanstabGF, nparticipants);
[Rdweightpeak,Rdweightstab]=GFcatchweightvsbeforetrial(maxGF, meanstabGF, nparticipants);
%Rd peak for the peak GF relative differences and stab for the stab GF
%relative differences

%computations of mean values of relative difference for each subject
meanRdfpeak = mean(Rdfrictionpeak);
meanRdfstab = mean(Rdfrictionstab);
meanRdwpeak = mean(Rdweightpeak);
meanRdwstab = mean(Rdweightstab);

%plots
figure(9)
for i = 1:nparticipants 
    subplot(1,2,1)
    figure(9); hold on;
    plot(x,y,'Color',[0.2 0.2 0.2]) %identity line
    figure(9);hold on;
    plot(meanRdfpeak(i),meanRdwpeak(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('Relative difference in GF for friction catch trials [%]')
    ylabel('Relative difference in GF for weight catch trials [%]')
    xlim([0 axis])
    ylim([0 axis])
    %xticks(0:1:axis)
    title('Grip force peaks')
    
    subplot(1,2,2)
    figure(9); hold on;
    plot(x,y,'Color',[0.2 0.2 0.2]) %identity line
    figure(9);hold on;
    plot(meanRdfstab(i),meanRdwstab(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('Relative difference in GF for friction catch trials [%]')
    ylabel('Relative difference in GF for weight catch trials [%]')
    xlim([0 axis])
    ylim([0 axis])
    %xticks(0:1:axis)
    title('Grip force during stabilization')
end
