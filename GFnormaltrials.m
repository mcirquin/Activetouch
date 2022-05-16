function output = GFnormaltrials(maxGFmatrix, meanstabGFmatrix, nparticipants, shiftRd)
%Comparison of the GF values during peak & stabilization for normal (adaptation) trials 
%maxGFmatrix : matrix with all the peak GF values for all the trials of
%all the participants
%meanstabGFmatrix : matrix with the mean GF values of stabilization of participants

%To modify in function of number of participants
%colors={[0 0 1], [0.0833 0 0.9167], [0.1667 0 0.8333], [0.25 0 0.75], [0.3333 0 0.6667], [0.4167 0 0.5833], [0.5 0 0.5], [0.5833 0 0.4167], [0.6667 0 0.3333], [0.75 0 0.25], [0.8333 0 0.1667], [0.9167 0 0.0833], [1 0 0]}; %for elderly participants
colors={[0 0 1], [0.0714 0 0.9286], [0.1429 0 0.8571], [0.2143 0 0.7857],[0.2857 0 0.7143], [0.3571 0 0.6429], [0.4286 0 0.5714], [0.5 0 0.5],[0.5714 0 0.4286], [0.6429 0 0.3571], [0.7143 0 0.2857], [0.7857 0 0.2143], [0.85 0 0.1429], [0.9286 0 0.0714], [1 0 0]}; %for young
%participants
colors=flip(colors);

excludedpoints=5; %nb of participants with relative difference in friction below 10%
%% 1. Computation of GF peaks

%Min LF normal
nessais3 = 16;
minLF=zeros(nessais3, nparticipants);
minLF(1,:)=maxGFmatrix(17,:);
minLF(2,:)=maxGFmatrix(18,:);
minLF(3,:)=maxGFmatrix(30,:);
minLF(4,:)=maxGFmatrix(64,:);
minLF(5,:)=maxGFmatrix(65,:);
minLF(6,:)=maxGFmatrix(66,:);
minLF(7,:)=maxGFmatrix(77,:);
minLF(8,:)=maxGFmatrix(78,:);
minLF(9,:)=maxGFmatrix(96,:);
minLF(10,:)=maxGFmatrix(44,:);
minLF(11,:)=maxGFmatrix(56,:);
minLF(12,:)=maxGFmatrix(57,:);
minLF(13,:)=maxGFmatrix(80,:);
minLF(14,:)=maxGFmatrix(81,:);
minLF(15,:)=maxGFmatrix(82,:);
minLF(16,:)=maxGFmatrix(104,:);
meanminLFsub=mean(minLF, 2);
meanminLF=mean(meanminLFsub);
meanminLFparticipants=mean(minLF);


%Min HF normal
nessais2bis = 17;
minHF=zeros(nessais2bis, nparticipants);
minHF(1,:)=maxGFmatrix(42,:);
minHF(2,:)=maxGFmatrix(70,:);
minHF(3,:)=maxGFmatrix(71,:);
minHF(4,:)=maxGFmatrix(72,:);
minHF(5,:)=maxGFmatrix(89,:);
minHF(6,:)=maxGFmatrix(90,:);
minHF(7,:)=maxGFmatrix(113,:);
minHF(8,:)=maxGFmatrix(114,:);
minHF(9,:)=maxGFmatrix(20,:);
minHF(10,:)=maxGFmatrix(32,:);
minHF(11,:)=maxGFmatrix(51,:);
minHF(12,:)=maxGFmatrix(98,:);
minHF(13,:)=maxGFmatrix(99,:);
minHF(14,:)=maxGFmatrix(100,:);
minHF(15,:)=maxGFmatrix(116,:);
minHF(16,:)=maxGFmatrix(117,:);
minHF(17,:)=maxGFmatrix(118,:);
meanminHFsub=mean(minHF, 2);
meanminHF=mean(meanminHFsub);
meanminHFparticipants=mean(minHF);


%Max LF normal
nessais3bis=20;
maxLF=zeros(nessais3bis, nparticipants);
maxLF(1,:)=maxGFmatrix(14,:);
maxLF(2,:)=maxGFmatrix(15,:);
maxLF(3,:)=maxGFmatrix(26,:);
maxLF(4,:)=maxGFmatrix(27,:);
maxLF(5,:)=maxGFmatrix(28,:);
maxLF(6,:)=maxGFmatrix(62,:);
maxLF(7,:)=maxGFmatrix(74,:);
maxLF(8,:)=maxGFmatrix(75,:);
maxLF(9,:)=maxGFmatrix(92,:);
maxLF(10,:)=maxGFmatrix(93,:);
maxLF(11,:)=maxGFmatrix(94,:);
maxLF(12,:)=maxGFmatrix(46,:);
maxLF(13,:)=maxGFmatrix(47,:);
maxLF(14,:)=maxGFmatrix(48,:);
maxLF(15,:)=maxGFmatrix(59,:);
maxLF(16,:)=maxGFmatrix(60,:);
maxLF(17,:)=maxGFmatrix(84,:);
maxLF(18,:)=maxGFmatrix(106,:);
maxLF(19,:)=maxGFmatrix(107,:);
maxLF(20,:)=maxGFmatrix(108,:);
meanmaxLFsub=mean(maxLF, 2);
meanmaxLF=mean(meanmaxLFsub);
meanmaxLFparticipants=mean(maxLF);


%Max HF normal
nessais4bis=18;
maxHF=zeros(nessais4bis, nparticipants);
maxHF(1,:)=maxGFmatrix(38,:);
maxHF(2,:)=maxGFmatrix(39,:);
maxHF(3,:)=maxGFmatrix(40,:);
maxHF(4,:)=maxGFmatrix(68,:);
maxHF(5,:)=maxGFmatrix(86,:);
maxHF(6,:)=maxGFmatrix(87,:);
maxHF(7,:)=maxGFmatrix(110,:);
maxHF(8,:)=maxGFmatrix(111,:);
maxHF(9,:)=maxGFmatrix(22,:);
maxHF(10,:)=maxGFmatrix(23,:);
maxHF(11,:)=maxGFmatrix(24,:);
maxHF(12,:)=maxGFmatrix(34,:);
maxHF(13,:)=maxGFmatrix(35,:);
maxHF(14,:)=maxGFmatrix(36,:);
maxHF(15,:)=maxGFmatrix(53,:);
maxHF(16,:)=maxGFmatrix(54,:);
maxHF(17,:)=maxGFmatrix(102,:);
maxHF(18,:)=maxGFmatrix(120,:);
meanmaxHFsub=mean(maxHF, 2);
meanmaxHF=mean(meanmaxHFsub);
meanmaxHFparticipants=mean(maxHF);



%% 2. Stabilization GF
%Min LF adaptation 
nessaisbis = 16;
minstabLF=zeros(nessaisbis, nparticipants);
minstabLF(1,:)=meanstabGFmatrix(17,:);
minstabLF(2,:)=meanstabGFmatrix(18,:);
minstabLF(3,:)=meanstabGFmatrix(30,:);
minstabLF(4,:)=meanstabGFmatrix(64,:);
minstabLF(5,:)=meanstabGFmatrix(65,:);
minstabLF(6,:)=meanstabGFmatrix(66,:);
minstabLF(7,:)=meanstabGFmatrix(77,:);
minstabLF(8,:)=meanstabGFmatrix(78,:);
minstabLF(9,:)=meanstabGFmatrix(96,:);
minstabLF(10,:)=meanstabGFmatrix(44,:);
minstabLF(11,:)=meanstabGFmatrix(56,:);
minstabLF(12,:)=meanstabGFmatrix(57,:);
minstabLF(13,:)=meanstabGFmatrix(80,:);
minstabLF(14,:)=meanstabGFmatrix(81,:);
minstabLF(15,:)=meanstabGFmatrix(82,:);
minstabLF(16,:)=meanstabGFmatrix(104,:);
meanminstabLFsub=mean(minstabLF, 2);
meanminstabLF=mean(meanminstabLFsub);
meanminstabLFparticipants=mean(minstabLF);

%Min HF adaptation
nessais2bis = 17;
minstabHF=zeros(nessais2bis, nparticipants);
minstabHF(1,:)=meanstabGFmatrix(42,:);
minstabHF(2,:)=meanstabGFmatrix(70,:);
minstabHF(3,:)=meanstabGFmatrix(71,:);
minstabHF(4,:)=meanstabGFmatrix(72,:);
minstabHF(5,:)=meanstabGFmatrix(89,:);
minstabHF(6,:)=meanstabGFmatrix(90,:);
minstabHF(7,:)=meanstabGFmatrix(113,:);
minstabHF(8,:)=meanstabGFmatrix(114,:);
minstabHF(9,:)=meanstabGFmatrix(20,:);
minstabHF(10,:)=meanstabGFmatrix(32,:);
minstabHF(11,:)=meanstabGFmatrix(50,:);
minstabHF(11,:)=meanstabGFmatrix(51,:);
minstabHF(12,:)=meanstabGFmatrix(98,:);
minstabHF(13,:)=meanstabGFmatrix(99,:);
minstabHF(14,:)=meanstabGFmatrix(100,:);
minstabHF(15,:)=meanstabGFmatrix(116,:);
minstabHF(16,:)=meanstabGFmatrix(117,:);
minstabHF(17,:)=meanstabGFmatrix(118,:);
meanminstabHFsub=mean(minstabHF, 2);
meanminstabHF=mean(meanminstabHFsub);
meanminstabHFparticipants=mean(minstabHF);


%Max LF adaptation
nessais3bis=20;
maxstabLF=zeros(nessais3bis, nparticipants);
maxstabLF(1,:)=meanstabGFmatrix(14,:);
maxstabLF(2,:)=meanstabGFmatrix(15,:);
maxstabLF(3,:)=meanstabGFmatrix(26,:);
maxstabLF(4,:)=meanstabGFmatrix(27,:);
maxstabLF(5,:)=meanstabGFmatrix(28,:);
maxstabLF(6,:)=meanstabGFmatrix(62,:);
maxstabLF(7,:)=meanstabGFmatrix(74,:);
maxstabLF(8,:)=meanstabGFmatrix(75,:);
maxstabLF(9,:)=meanstabGFmatrix(92,:);
maxstabLF(10,:)=meanstabGFmatrix(93,:);
maxstabLF(11,:)=meanstabGFmatrix(94,:);
maxstabLF(12,:)=meanstabGFmatrix(46,:);
maxstabLF(13,:)=meanstabGFmatrix(47,:);
maxstabLF(14,:)=meanstabGFmatrix(48,:);
maxstabLF(15,:)=meanstabGFmatrix(59,:);
maxstabLF(16,:)=meanstabGFmatrix(60,:);
maxstabLF(17,:)=meanstabGFmatrix(84,:);
maxstabLF(18,:)=meanstabGFmatrix(106,:);
maxstabLF(19,:)=meanstabGFmatrix(107,:);
maxstabLF(20,:)=meanstabGFmatrix(108,:);
meanmaxstabLFsub=mean(maxstabLF, 2);
meanmaxstabLF=mean(meanmaxstabLFsub);
meanmaxstabLFparticipants=mean(maxstabLF);

%Max HF adaptation
nessais4bis=18;
maxstabHF=zeros(nessais4bis, nparticipants);
maxstabHF(1,:)=meanstabGFmatrix(38,:);
maxstabHF(2,:)=meanstabGFmatrix(39,:);
maxstabHF(3,:)=meanstabGFmatrix(40,:);
maxstabHF(4,:)=meanstabGFmatrix(68,:);
maxstabHF(5,:)=meanstabGFmatrix(86,:);
maxstabHF(6,:)=meanstabGFmatrix(87,:);
maxstabHF(7,:)=meanstabGFmatrix(110,:);
maxstabHF(8,:)=meanstabGFmatrix(111,:);
maxstabHF(9,:)=meanstabGFmatrix(22,:);
maxstabHF(10,:)=meanstabGFmatrix(23,:);
maxstabHF(11,:)=meanstabGFmatrix(24,:);
maxstabHF(12,:)=meanstabGFmatrix(34,:);
maxstabHF(13,:)=meanstabGFmatrix(35,:);
maxstabHF(14,:)=meanstabGFmatrix(36,:);
maxstabHF(15,:)=meanstabGFmatrix(53,:);
maxstabHF(16,:)=meanstabGFmatrix(54,:);
maxstabHF(17,:)=meanstabGFmatrix(102,:);
maxstabHF(18,:)=meanstabGFmatrix(120,:);
meanmaxstabHFsub=mean(maxstabHF, 2);
meanmaxstabHF=mean(meanmaxstabHFsub);
meanmaxstabHFparticipants=mean(maxstabHF);

%{
%% Boxplots comparison of GF peaks vs stabilization friction comparison
%Boxplots of GF peaks
A=reshape(minLF,1,[]).';
B=reshape(minHF,1,[]).'; 
C=reshape(maxLF,1,[]).';
D=reshape(maxHF,1,[]).';
x1 = [A;B;C;D];
sizeA=size(A,1);
sizeB=size(B,1);
sizeC=size(C,1);
sizeD=size(D,1);
%subplot
group1=ones(1,sizeA);
group2=ones(1,sizeB)*2;
group3=ones(1,sizeC)*3;
group4=ones(1,sizeD)*4;
group1 = [group1,group2,group3,group4];
positions = [1 1.25 2 2.25]; 
%Figure plot
figure(1);
subplot(1,2,1)
boxplot(x1,group1, 'positions', positions);
set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4))])
set(gca,'xticklabel',{'Minimal weight','Maximal weight'})
ylabel('Grip force peak (N)')
ylim([0 10.5])
lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
set(lines, 'LineWidth',1, 'Color', [0 0 0]);
color = [('b');('r');('b');('r');];
h = findobj(gca,'Tag','Box');
for j=1:length(h)
   patch(get(h(j),'XData'),get(h(j),'YData'),color(j,:),'FaceAlpha',0.85);
end
c = get(gca, 'Children');
hleg1 = legend(c(1:2), 'Low Friction normal', 'High Friction normal', 'Location', 'north' );
%boxplots of stabilization GF 
E=reshape(minstabLF,1,[]).';
F=reshape(minstabHF,1,[]).';
J=reshape(maxstabLF,1,[]).';
K=reshape(maxstabHF,1,[]).';
x2=[E;F;J;K];
sizeE=size(E,1);
sizeF=size(F,1);
sizeJ=size(J,1);
sizeK=size(K,1);
%subplot
group5=ones(1,sizeE);
group6=ones(1,sizeF)*2;
group7=ones(1,sizeJ)*3;
group8=ones(1,sizeK)*4;
group5 = [group5,group6,group7,group8];
positions = [1 1.25 2 2.25];
subplot(1,2,2)
boxplot(x2,group5, 'positions', positions);
set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4))])
set(gca,'xticklabel',{'Minimal weight','Maximal weight'})
ylabel('Mean grip force (N)')
ylim([0 10.5])
lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
set(lines, 'LineWidth',1, 'Color', [0 0 0]);
color = [('b');('r');('b');('r');];
h = findobj(gca,'Tag','Box');
for j=1:length(h)
   patch(get(h(j),'XData'),get(h(j),'YData'),color(j,:),'FaceAlpha',0.85);
end
c = get(gca, 'Children');
hleg1 = legend(c(1:2), 'Low Friction normal', 'High Friction normal', 'Location', 'north' );
suptitle('Grip Force magnitude for GF peaks and stabilization of normal trials');
%% Boxplots comparison of GF peaks vs stabilization weight comparison
%Boxplots of GF peaks
Abis=reshape(minLF,1,[]).';
Bbis=reshape(maxLF,1,[]).';
Cbis=reshape(minHF,1,[]).';
Dbis=reshape(maxHF,1,[]).';
x1bis = [Abis;Bbis;Cbis;Dbis];
sizeAbis=size(Abis,1);
sizeBbis=size(Bbis,1);
sizeCbis=size(Cbis,1);
sizeDbis=size(Dbis,1);
%subplot
group1bis=ones(1,sizeAbis);
group2bis=ones(1,sizeBbis)*2;
group3bis=ones(1,sizeCbis)*3;
group4bis=ones(1,sizeDbis)*4;
group1bis = [group1bis,group2bis,group3bis,group4bis];
positions = [1 1.25 2 2.25]; 
%Figure plot
figure(2);
subplot(1,2,1)
boxplot(x1bis,group1bis, 'positions', positions);
set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4))])
set(gca,'xticklabel',{'Low friction','High friction'})
ylabel('Grip force peak (N)')
ylim([0 10.5])
lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
set(lines, 'LineWidth',1, 'Color', [0 0 0]);
color = [('r');('b');('r');('b');];
h = findobj(gca,'Tag','Box');
for j=1:length(h)
   patch(get(h(j),'XData'),get(h(j),'YData'),color(j,:),'FaceAlpha',0.85);
end
c = get(gca, 'Children');
hleg1 = legend(c(1:2), 'Min weight normal', 'Max weight normal', 'Location', 'north' );
%boxplots of stabilization GF 
Ebis=reshape(minstabLF,1,[]).';
Fbis=reshape(maxstabLF,1,[]).';
Jbis=reshape(minstabHF,1,[]).';
Kbis=reshape(maxstabHF,1,[]).';
x2bis=[Ebis;Fbis;Jbis;Kbis];
sizeEbis=size(Ebis,1);
sizeFbis=size(Fbis,1);
sizeJbis=size(Jbis,1);
sizeKbis=size(Kbis,1);
%subplot
group5bis=ones(1,sizeEbis);
group6bis=ones(1,sizeFbis)*2;
group7bis=ones(1,sizeJbis)*3;
group8bis=ones(1,sizeKbis)*4;
group5bis = [group5bis,group6bis,group7bis,group8bis];
positions = [1 1.25 2 2.25];
subplot(1,2,2)
boxplot(x2bis,group5bis, 'positions', positions);
set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4))])
set(gca,'xticklabel',{'Low friction','High friction'})
ylabel('Mean grip force (N)')
ylim([0 10.5])
lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
set(lines, 'LineWidth',1, 'Color', [0 0 0]);
color = [('r');('b');('r');('b');];
h = findobj(gca,'Tag','Box');
for j=1:length(h)
   patch(get(h(j),'XData'),get(h(j),'YData'),color(j,:),'FaceAlpha',0.85);
end
c = get(gca, 'Children');
hleg1 = legend(c(1:2), 'Min weight normal', 'Max weight normal', 'Location', 'north' );
suptitle('Grip Force magnitude for GF peaks and stabilization of normal trials');
%}
%{
%% Quantification GF normal for HF and LF (GF peaks and stabilization)
C = {'k','b','r','g',[1 0.9 0.1],[.5 .6 .7],[.8 .2 .6],[0.7 0.5 0.9],'c','m',[0.9 0.4 1],[0.2 0.8 0.7],[0.7 0.4 0.1],[0.4 0.55 0.8],[0.3 0.6 0.3]}; % Cell array of colors.
axis=10;% axis limits of the plots
xfriction1=linspace(0,axis);
yfriction1=linspace(0,axis);
Rdvector = []; %vector saving the relative differnce values for each participant
figure(3);
for i= 1:nparticipants
    %GF peaks: Comparison friction under min weight
    pos1 = [0.1 0.6 0.25 0.35];
    subplot('Position',pos1);
    figure(3); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(3); hold on;
    plot(meanminLFparticipants(i),meanminHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction normal [N]')
    ylabel('GF - High friction normal [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Min weight')
    
    %relative difference 
    pos2 = [0.4 0.6 0.05 0.35];
    subplot('Position',pos2);
    Rd1 = ((meanminLFparticipants(i)-meanminHFparticipants(i))/min(meanminLFparticipants(i),meanminHFparticipants(i)))*100;
    Rdvector(1,i) = Rd1;
    figure(3); hold on;
    plot(0.5,Rd1,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    set(gcf,'position',[0,0,200,500])
    ylabel('Relative change in GF [%]')
    if i == nparticipants
        figure(3);hold on;
        errorbar(0.5,mean(Rdvector(1,:),2),std(Rdvector(1,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
    
    %GF peaks: Comparison friction under max weight
    pos3 = [0.1 0.1 0.25 0.35];
    subplot('Position',pos3); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(3); hold on;
    plot(meanmaxLFparticipants(i),meanmaxHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction normal [N]')
    ylabel('GF - High friction normal [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Max weight')   
    
    %relative difference 
    pos4 = [0.4 0.1 0.05 0.35];
    subplot('Position',pos4);
    Rd2 = ((meanmaxLFparticipants(i)-meanmaxHFparticipants(i))/min(meanmaxHFparticipants(i),meanmaxLFparticipants(i)))*100;
    Rdvector(2,i) = Rd2;
    figure(3); hold on;
    plot(0.5,Rd2,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    set(gcf,'position',[0,0,200,500])
    ylabel('Relative change in GF [%]')
    if i == nparticipants
        figure(3);hold on;
        errorbar(0.5,mean(Rdvector(2,:),2),std(Rdvector(2,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
end
%suptitle('Grip Force magnitude of GF peaks for normal trials');
figure(4);
for i= 1:nparticipants
    %Stab: Comparison friction under min weight
    pos1 = [0.1 0.6 0.25 0.35];
    subplot('Position',pos1);
    figure(4); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(4); hold on;
    plot(meanminstabLFparticipants(i),meanminstabHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction normal [N]')
    ylabel('GF - High friction normal [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Min weight')
    
    %relative difference
    pos2 = [0.4 0.6 0.05 0.35];
    subplot('Position',pos2);
    Rd1stab = ((meanminstabLFparticipants(i)-meanminstabHFparticipants(i))/min(meanminstabLFparticipants(i),meanminstabHFparticipants(i)))*100;
    Rdvector(3,i) = Rd1stab;
    figure(4); hold on;
    plot(0.5,Rd1stab,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    ylabel('Relative change in GF [%]')
    if i == nparticipants
        figure(4);hold on;
        errorbar(0.5,mean(Rdvector(3,:),2),std(Rdvector(3,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
    
    %stab: Comparison friction under max weight
    pos3 = [0.1 0.1 0.25 0.35];
    subplot('Position',pos3); hold on;
    figure(4); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(4); hold on;
    plot(meanmaxstabLFparticipants(i),meanmaxstabHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction normal [N]')
    ylabel('GF - High friction normal [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Max weight')
    
    %relative difference 
    pos4 = [0.4 0.1 0.05 0.35];
    subplot('Position',pos4);
    Rd2stab = ((meanmaxstabLFparticipants(i)-meanmaxstabHFparticipants(i))/min(meanmaxstabLFparticipants(i),meanmaxstabHFparticipants(i)))*100;
    Rdvector(4,i) = Rd2stab;
    figure(4); hold on;
    plot(0.5,Rd2stab,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    ylabel('Relative change in GF [%]')
    if i == nparticipants
        figure(4);hold on;
        errorbar(0.5,mean(Rdvector(4,:),2),std(Rdvector(4,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
end
%suptitle('Grip Force magnitude during stabilization for normal trials');
%% Quantification GF normal for Min & Max weights(GF peaks and stabilization)
figure(5);
for i= 1:nparticipants
    %GF peaks: Comparison weight under low friction
    pos1 = [0.1 0.6 0.25 0.35];
    subplot('Position',pos1);
    figure(5); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(5); hold on;
    plot(meanminLFparticipants(i),meanmaxLFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Min weight normal [N]')
    ylabel('GF - Max weight normal [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Low friction')
    
    %relative difference 
    pos2 = [0.4 0.6 0.05 0.35];
    subplot('Position',pos2);
    Rd3 = ((meanmaxLFparticipants(i)-meanminLFparticipants(i))/min(meanminLFparticipants(i),meanmaxLFparticipants(i)))*100;
    Rdvector(5,i) = Rd3;
    figure(5); hold on;
    plot(0.5,Rd3,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    ylabel('Relative change in GF [%]')
    if i == nparticipants
        figure(5);hold on;
        errorbar(0.5,mean(Rdvector(5,:),2),std(Rdvector(5,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
    
    %GF peaks: Comparison weight under high friction
    pos3 = [0.1 0.1 0.25 0.35];
    subplot('Position',pos3); hold on;
    figure(5); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(5); hold on;
    plot(meanminHFparticipants(i),meanmaxHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Min weight normal [N]')
    ylabel('GF - Max weight normal [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('High friction')
    
    %relative difference 
    pos4 = [0.4 0.1 0.05 0.35];
    subplot('Position',pos4);
    Rd4 = ((meanmaxHFparticipants(i)-meanminHFparticipants(i))/min(meanminHFparticipants(i),meanmaxHFparticipants(i)))*100;
    Rdvector(6,i) = Rd4;
    figure(5); hold on;
    plot(0.5,Rd4,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    ylabel('Relative change in GF [%]')
    if i == nparticipants
        figure(5);hold on;
        errorbar(0.5,mean(Rdvector(6,:),2),std(Rdvector(6,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
end
%suptitle('Grip Force magnitude of GF peaks for normal trials');
figure(6);
for i= 1:nparticipants
    %Stab: Comparison weight under low friction
    pos1 = [0.1 0.6 0.25 0.35];
    subplot('Position',pos1);
    figure(6); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(6); hold on;
    plot(meanminstabLFparticipants(i),meanmaxstabLFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Min weight normal [N]')
    ylabel('GF - Max weight normal [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('Low friction')
    
    %relative difference 
    pos2 = [0.4 0.6 0.05 0.35];
    subplot('Position',pos2);
    Rd3stab = ((meanmaxstabLFparticipants(i)-meanminstabLFparticipants(i))/min(meanminstabLFparticipants(i),meanmaxstabLFparticipants(i)))*100;
    Rdvector(7,i) = Rd3stab;
    figure(6); hold on;
    plot(0.5,Rd3stab,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    ylabel('Relative change in GF [%]')
    if i == nparticipants
        figure(6);hold on;
        errorbar(0.5,mean(Rdvector(7,:),2),std(Rdvector(7,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
    
    %stab: Comparison weight under high friction
    pos3 = [0.1 0.1 0.25 0.35];
    subplot('Position',pos3); hold on;
    figure(6); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(6); hold on;
    plot(meanminstabHFparticipants(i),meanmaxstabHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Min weight normal [N]')
    ylabel('GF - Max weight normal [N]')
    xlim([0 axis])
    ylim([0 axis])
    xticks(0:1:axis)
    title('High friction')
    
    %relative difference 
    pos4 = [0.4 0.1 0.05 0.35];
    subplot('Position',pos4);
    Rd4stab = ((meanmaxstabHFparticipants(i)-meanminstabHFparticipants(i))/min(meanminstabHFparticipants(i),meanmaxstabHFparticipants(i)))*100;
    Rdvector(8,i) = Rd4stab;
    figure(6); hold on;
    plot(0.5,Rd4stab,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    ylabel('Relative change in GF [%]')
    if i == nparticipants
        figure(6);hold on;
        errorbar(0.5,mean(Rdvector(8,:),2),std(Rdvector(8,:),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
end
%suptitle('Grip Force magnitude during stabilization for normal trials');
%}

%% Comparaison GF-GF_same colors

Rdcatch = [];
Rdstab = [];

axis=6;% axis limits of the plots
xfriction1=linspace(0,axis);
yfriction1=linspace(0,axis);
Rdvector = []; %vector saving the relative difference values for each participant
xscatter1 = 0.22 + (0.3-0.22)*randn(nparticipants,1); %random x values to plot Rd between 0.2 and 0.3
xscatter2 = 0.7 + (0.8-0.7)*randn(nparticipants,1); 
xticks=5;


for i = 1:nparticipants %sort the vector in the same order than the relative difference in friction
    meanminLFparticipantssort(i) = meanminLFparticipants(shiftRd(i)); %sort xvec in the same way
    meanminHFparticipantssort(i) = meanminHFparticipants(shiftRd(i));
    meanmaxLFparticipantssort(i) = meanmaxLFparticipants(shiftRd(i));
    meanmaxHFparticipantssort(i) =  meanmaxHFparticipants(shiftRd(i));
    meanminstabLFparticipantssort(i) = meanminstabLFparticipants(shiftRd(i));
    meanminstabHFparticipantssort(i) = meanminstabHFparticipants(shiftRd(i));
    meanmaxstabLFparticipantssort(i) = meanmaxstabLFparticipants(shiftRd(i));
    meanmaxstabHFparticipantssort(i) = meanmaxstabHFparticipants(shiftRd(i));   
end

Rd1 = zeros(1,nparticipants);
Rd2 = zeros(1,nparticipants);
Rd3 = zeros(1,nparticipants);
Rd4 = zeros(1,nparticipants);
Rd1stab = zeros(1,nparticipants);
Rd2stab = zeros(1,nparticipants);
Rd3stab = zeros(1,nparticipants);
Rd4stab = zeros(1,nparticipants);

for i = 1:nparticipants
    Rd1(i) = ((meanminLFparticipantssort(i)-meanminHFparticipantssort(i))/min(meanminLFparticipantssort(i),meanminHFparticipantssort(i)))*100;
    Rd2(i) = ((meanmaxLFparticipantssort(i)-meanmaxHFparticipantssort(i))/min(meanmaxHFparticipantssort(i),meanmaxLFparticipantssort(i)))*100;
    Rd3(i) = ((meanmaxLFparticipantssort(i)-meanminLFparticipantssort(i))/min(meanminLFparticipantssort(i),meanmaxLFparticipantssort(i)))*100;
    Rd4(i) = ((meanmaxHFparticipantssort(i)-meanminHFparticipantssort(i))/min(meanminHFparticipantssort(i),meanmaxHFparticipantssort(i)))*100;
    Rd1stab(i) = ((meanminstabLFparticipantssort(i)-meanminstabHFparticipantssort(i))/min(meanminstabLFparticipantssort(i),meanminstabHFparticipantssort(i)))*100;
    Rd2stab(i) = ((meanmaxstabLFparticipantssort(i)-meanmaxstabHFparticipantssort(i))/min(meanmaxstabLFparticipantssort(i),meanmaxstabHFparticipantssort(i)))*100;
    Rd3stab(i) = ((meanmaxstabLFparticipantssort(i)-meanminstabLFparticipantssort(i))/min(meanminstabLFparticipantssort(i),meanmaxstabLFparticipantssort(i)))*100;
    Rd4stab(i) = ((meanmaxstabHFparticipantssort(i)-meanminstabHFparticipantssort(i))/min(meanminstabHFparticipantssort(i),meanmaxstabHFparticipantssort(i)))*100;
end

figure(3); hold on;
pos1 = [0.1 0.6 0.25 0.35];
subplot('Position',pos1);
hold on;
for i=1:nparticipants
    if i <= nparticipants-excludedpoints
        plot(meanminLFparticipantssort(i),meanminHFparticipantssort(i), '.', 'MarkerSize', 12, 'color', colors{i}); 
        %h2.MarkerFaceAlpha = alphaelderly(i);
        p=plot(meanmaxLFparticipantssort(i),meanmaxHFparticipantssort(i), '^', 'MarkerSize', 3, 'color', colors{i}); 
        p.MarkerFaceColor = colors{i};
        %h2.MarkerFaceAlpha = alphaelderly(i);
    else
        plot(meanminLFparticipantssort(i),meanminHFparticipantssort(i), 'o', 'MarkerSize', 3, 'color', colors{i}); 
        %h2.MarkerFaceAlpha = alphaelderly(i);
        plot(meanmaxLFparticipantssort(i),meanmaxHFparticipantssort(i), '^', 'MarkerSize', 3, 'color', colors{i}); 
    end
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
end
hold on;
xlabel('GF - Low friction normal [N]')
ylabel('GF - High friction normal [N]')
xlim([0 axis])
ylim([0 axis])
legend('')
legend('Minimal weight','Maximal weight')
grid on
ax = gca;
ax.GridAlpha = 0.07;


%relative difference
figure(3); hold on;
pos2 = [0.4 0.6 0.05 0.35];
subplot('Position',pos2);
hold on;
for i=1:nparticipants
    if i <= nparticipants-excludedpoints
        plot(xscatter1(i),Rd1(i), '.', 'MarkerSize', 12, 'color', colors{i});
        %h2=scatter(0.5, Rd1(i), 13, 'r', 'filled'); 
        %h2.MarkerFaceAlpha = alphaelderly(i);
        p = plot(xscatter2(i), Rd2(i), '^', 'MarkerSize', 3, 'color', colors{i});
        p.MarkerFaceColor = colors{i};
    else
        plot(xscatter1(i),Rd1(i), 'o', 'MarkerSize', 3, 'color', colors{i});
        %h2=scatter(0.5, Rd1(i), 13, 'r', 'filled'); 
        %h2.MarkerFaceAlpha = alphaelderly(i);
        plot(xscatter2(i), Rd2(i), '^', 'MarkerSize', 3, 'color', colors{i});
    end
    hold on;
    plot([0,1], [0 0],'k','LineWidth',0.2);
    %h2.MarkerFaceAlpha = alphaelderly(i);
    if i == nparticipants-excludedpoints
        figure(3);hold on;
        errorbar(0.25,mean(Rd2(1:nparticipants-excludedpoints),2),std(Rd2(1:nparticipants-excludedpoints),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
        figure(3);hold on;
        errorbar(0.75,mean(Rd1(1:nparticipants-excludedpoints),2),std(Rd1(1:nparticipants-excludedpoints),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
end
set(gca,'XTick',[])
xlim([0 1])
set(gcf,'position',[0,0,200,500])
ylabel('Relative change in GF [%]')





figure(4); hold on;
pos1 = [0.1 0.6 0.25 0.35];
subplot('Position',pos1);
hold on;
for i=1:nparticipants
    if i <= nparticipants-excludedpoints
        plot(meanminstabLFparticipantssort(i),meanminstabHFparticipantssort(i), '.', 'MarkerSize', 12, 'color', colors{i}); 
        %h2.MarkerFaceAlpha = alphaelderly(i);
        figure(4); hold on;
        p=plot(meanmaxstabLFparticipantssort(i),meanmaxstabHFparticipantssort(i), '^', 'MarkerSize', 3, 'color', colors{i});
        p.MarkerFaceColor = colors{i};
        %h2.MarkerFaceAlpha = alphaelderly(i);
    else
        plot(meanminstabLFparticipantssort(i),meanminstabHFparticipantssort(i), 'o', 'MarkerSize', 3, 'color', colors{i}); 
        %h2.MarkerFaceAlpha = alphaelderly(i);
        figure(4); hold on;
        plot(meanmaxstabLFparticipantssort(i),meanmaxstabHFparticipantssort(i), '^', 'MarkerSize', 3, 'color', colors{i});
    end
    figure(4); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
end
xlabel('GF - Low friction normal [N]')
ylabel('GF - High friction normal [N]')
xlim([0 axis])
ylim([0 axis])
legend('')
legend('Minimal weight','Maximal weight')
grid on
ax = gca;
ax.GridAlpha = 0.07;


%relative difference
figure(4); hold on;
pos2 = [0.4 0.6 0.05 0.35];
subplot('Position',pos2);
hold on;
for i=1:nparticipants
    if i <= nparticipants-excludedpoints
        plot(xscatter1(i),Rd1stab(i), '.', 'MarkerSize', 12, 'color', colors{i});
        %h2=scatter(0.5, Rd1(i), 13, 'r', 'filled'); 
        %h2.MarkerFaceAlpha = alphaelderly(i);
        figure(4); hold on;
        p=plot(xscatter2(i), Rd2stab(i), '^', 'MarkerSize', 3, 'color', colors{i});
        p.MarkerFaceColor = colors{i};
    else
        figure(4); hold on;
        plot(xscatter1(i),Rd1stab(i), 'o', 'MarkerSize', 3, 'color', colors{i});
        figure(4); hold on;
        plot(xscatter2(i), Rd2stab(i), '^', 'MarkerSize', 3, 'color', colors{i});
    end
    figure(4); hold on;
    plot([0,1], [0 0],'k','LineWidth',0.2);
    %h2.MarkerFaceAlpha = alphaelderly(i);
    if i == nparticipants-excludedpoints
        figure(4);hold on;
        errorbar(0.25,mean(Rd1stab(1:nparticipants-excludedpoints),2),std(Rd1stab(1:nparticipants-excludedpoints),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
        figure(4);hold on;
        errorbar(0.75,mean(Rd2stab(1:nparticipants-excludedpoints),2),std(Rd2stab(1:nparticipants-excludedpoints),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
end
set(gca,'XTick',[])
xlim([0 1])
set(gcf,'position',[0,0,200,500])
ylabel('Relative change in GF [%]')


 
figure(5);
hold on;
pos1 = [0.1 0.6 0.25 0.35];
subplot('Position',pos1);
hold on;
for i=1:nparticipants
    if i <= nparticipants-excludedpoints
        plot(meanminLFparticipantssort(i),meanmaxLFparticipantssort(i), '.', 'MarkerSize', 12, 'color', colors{i}); 
        figure(5);hold on;
        p=plot(meanminHFparticipantssort(i),meanmaxHFparticipantssort(i), '^', 'MarkerSize', 3, 'color', colors{i}); 
        p.MarkerFaceColor = colors{i};
    else
        figure(5);hold on;
        plot(meanminLFparticipantssort(i),meanmaxLFparticipantssort(i), 'o', 'MarkerSize', 3, 'color', colors{i}); 
        figure(5);hold on;
        plot(meanminHFparticipantssort(i),meanmaxHFparticipantssort(i), '^', 'MarkerSize', 3, 'color', colors{i}); 
    end
    figure(5);hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line  
end
xlabel('GF - Min weight normal [N]')
ylabel('GF - Max weight normal [N]')
xlim([0 axis])
ylim([0 axis])
legend('Low friction','High friction')
grid on
ax = gca;
ax.GridAlpha = 0.07;

figure(5); hold on;
pos2 = [0.4 0.6 0.05 0.35];
subplot('Position',pos2);
hold on;
for i=1:nparticipants
    if i <= nparticipants-excludedpoints
        plot(xscatter1(i),Rd3(i), '.', 'MarkerSize', 12, 'color', colors{i});
        figure(5); hold on;
        p=plot(xscatter2(i),Rd4(i), '^', 'MarkerSize', 3, 'color', colors{i});
        p.MarkerFaceColor = colors{i};
        figure(5); hold on;
    else
        plot(xscatter1(i),Rd3(i), 'o', 'MarkerSize', 3, 'color', colors{i});
        figure(5); hold on;
        plot(xscatter2(i),Rd4(i), '^', 'MarkerSize', 3, 'color', colors{i});
        figure(5); hold on;
    end
    plot([0,1], [0 0],'k','LineWidth',0.2);
    if i == nparticipants-excludedpoints
        figure(5);hold on;
        errorbar(0.25,mean(Rd3(1:nparticipants-excludedpoints),2),std(Rd3(1:nparticipants-excludedpoints),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
        figure(5);hold on;
        errorbar(0.75,mean(Rd4(1:nparticipants-excludedpoints),2),std(Rd4(1:nparticipants-excludedpoints),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
end
set(gca,'XTick',[])
xlim([0 1])
set(gcf,'position',[0,0,200,500])
ylabel('Relative change in GF [%]')




%Stabilisation

figure(6);
hold on;
pos1 = [0.1 0.6 0.25 0.35];
subplot('Position',pos1);
hold on;
for i=1:nparticipants
    if i <= nparticipants-excludedpoints
        plot(meanminstabLFparticipantssort(i),meanmaxstabLFparticipantssort(i), '.', 'MarkerSize', 12, 'color', colors{i}); 
        figure(6);hold on;
        p=plot(meanminstabHFparticipantssort(i),meanmaxstabHFparticipantssort(i), '^', 'MarkerSize', 3, 'color', colors{i});
        p.MarkerFaceColor = colors{i};
        figure(6);hold on;
    else
        plot(meanminstabLFparticipantssort(i),meanmaxstabLFparticipantssort(i), 'o', 'MarkerSize', 3, 'color', colors{i}); 
        figure(6);hold on;
        plot(meanminstabHFparticipantssort(i),meanmaxstabHFparticipantssort(i), '^', 'MarkerSize', 3, 'color', colors{i});
        figure(6);hold on;
    end
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
end
xlabel('GF - Min weight normal [N]')
ylabel('GF - Max weight normal [N]')
xlim([0 axis])
ylim([0 axis])
legend('Low friction', 'High friction')
grid on
ax = gca;
ax.GridAlpha = 0.07;

figure(6); hold on;
pos2 = [0.4 0.6 0.05 0.35];
subplot('Position',pos2);
hold on;
for i=1:nparticipants
    if i <= nparticipants-excludedpoints
        plot(xscatter1(i),Rd3stab(i), '.', 'MarkerSize', 12, 'color', colors{i});
        figure(6); hold on;
        p=plot(xscatter2(i),Rd4stab(i), '^', 'MarkerSize', 3, 'color', colors{i});
        p.MarkerFaceColor = colors{i};
        figure(6); hold on;
    else
        plot(xscatter1(i),Rd3stab(i), 'o', 'MarkerSize', 3, 'color', colors{i});
        figure(6); hold on;
        plot(xscatter2(i),Rd4stab(i), '^', 'MarkerSize', 3, 'color', colors{i});
        figure(6); hold on;
    end 
    plot([0,1], [0 0],'k','LineWidth',0.2);
   
    if i == nparticipants-excludedpoints
        figure(6);hold on;
        errorbar(0.25,mean(Rd3stab(1:nparticipants-excludedpoints),2),std(Rd3stab(1:nparticipants-excludedpoints),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
        figure(6);hold on;
        errorbar(0.75,mean(Rd4stab(1:nparticipants-excludedpoints),2),std(Rd4stab(1:nparticipants-excludedpoints),0,2),'-*', 'Color', [0.5 0.5 0.5], 'LineWidth', 0.4, 'Markersize', 10);
    end
end
set(gca,'XTick',[])
xlim([0 1])
set(gcf,'position',[0,0,200,500])
ylabel('Relative change in GF [%]')


end
