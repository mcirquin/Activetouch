%Plots relative difference in friction vs relative
%difference in GF for friction catch trials 

nparticipants = 13; %number of participants 

%Define the normal force interval on which the mean friction coefficient is
%calculated
Fmin = 1;  
Fmax = 5;
Fint = [Fmin:Fmax];
Rdvector = [];

axis = 150; %limits of the plot
x = linspace(0,axis); %Axis limits for the plot of x=y line
y = linspace(0,axis);

[Rdfrictionpeak,Rdfrictionstab]=GFcatchfrictionvsbeforetrial(maxGF, meanstabGF, nparticipants, shiftRd); %import of Relative differences for friction catch trials 
meanRdfpeak = mean(abs(Rdfrictionpeak)); %absolute value of the relative differences to observe tendency
meanRdfstab = mean(abs(Rdfrictionstab));

Rdvector=Rdvecsort;
colors={[0 0 1], [0.0833 0 0.9167], [0.1667 0 0.8333], [0.25 0 0.75], [0.3333 0 0.6667], [0.4167 0 0.5833], [0.5 0 0.5], [0.5833 0 0.4167], [0.6667 0 0.3333], [0.75 0 0.25], [0.8333 0 0.1667], [0.9167 0 0.0833], [1 0 0]}; %for elderly participants
%colors={[0 0 1], [0.0714 0 0.9286], [0.1429 0 0.8571], [0.2143 0 0.7857],
%[0.2857 0 0.7143], [0.3571 0 0.6429], [0.4286 0 0.5714], [0.5 0 0.5],
%[0.5714 0 0.4286], [0.6429 0 0.3571], [0.7143 0 0.2857], [0.7857 0
%0.2143], [0.85 0 0.1429], [0.9286 0 0.0714], [1 0 0]}; %for young
%participants
colors=flip(colors);
for i = 1:nparticipants   
    %graph plots
    subplot(1,2,1)
    figure(5); hold on;
    plot(x,y,'Color',[0.2 0.2 0.2]) %identity line
    figure(5);hold on;
    plot(Rdvector(i),meanRdfpeak(i),'.', 'MarkerSize',10,'Color', colors{i});
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
    plot(Rdvector(i),meanRdfstab(i),'.', 'MarkerSize',10,'Color', colors{i});
    xlabel('Relative difference in friction coefficient [%]')
    ylabel('Relative difference in GF for friction catch trials [%]')
    xlim([0 axis])
    ylim([0 axis])
    %xticks(0:1:axis)
    title('Grip force during stabilization')  
end
