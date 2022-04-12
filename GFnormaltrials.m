function output = GFnormaltrials(maxGFmatrix, meanstabGFmatrix, nparticipants)
%Comparison of the GF values during peak & stabilization for normal (adaptation) trials 
%maxGFmatrix : matrix with all the peak GF values for all the trials of
%all the participants
%meanstabGFmatrix : matrix with the mean GF values of stabilization of participants

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
%% Quantification GF normal for HF and LF (GF peaks and stabilization)
C = {'k','b','r','g',[1 0.9 0.1],[.5 .6 .7],[.8 .2 .6],[0.7 0.5 0.9],'c','m',[0.9 0.4 1],[0.2 0.8 0.7],[0.7 0.4 0.1],[0.4 0.55 0.8],[0.3 0.6 0.3]}; % Cell array of colors.
xfriction1=linspace(0,9);
yfriction1=linspace(0,9);
figure(3);

for i= 1:nparticipants
    %GF peaks: Comparison friction under min weight
    subplot(2,2,1)
    figure(3); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(3); hold on;
    plot(meanminLFparticipants(i),meanminHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction normal [N]')
    ylabel('GF - High friction normal [N]')
    title('Min weight')
    
    %relative difference 
    subplot(2,2,2)
    Rd1 = (abs(meanminLFparticipants(i)-meanminHFparticipants(i))/min(meanminLFparticipants(i),meanminHFparticipants(i)))*100;
    figure(3); hold on;
    plot(0.5,Rd1,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    set(gcf,'position',[0,0,200,500])
    ylabel('Relative change in GF [%]')
    
    
    %GF peaks: Comparison friction under max weight
    subplot(2,2,3)
    figure(3); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(3); hold on;
    plot(meanmaxLFparticipants(i),meanmaxHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction normal [N]')
    ylabel('GF - High friction normal [N]')
    title('Max weight')   
    
    %relative difference 
    subplot(2,2,4)
    Rd2 = (abs(meanmaxLFparticipants(i)-meanmaxHFparticipants(i))/min(meanmaxLFparticipants(i),meanmaxHFparticipants(i)))*100;
    figure(3); hold on;
    plot(0.5,Rd2,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    set(gcf,'position',[0,0,200,500])
    ylabel('Relative change in GF [%]')
    
end
suptitle('Grip Force magnitude of GF peaks for normal trials');
%{figure(4);
for i= 1:nparticipants
    %Stab: Comparison friction under min weight
    subplot(2,2,1)
    figure(4); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(4); hold on;
    plot(meanminstabLFparticipants(i),meanminstabHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction normal [N]')
    ylabel('GF - High friction normal [N]')
    title('Min weight')
    
    %relative difference
    subplot(2,2,2)
    Rd1stab = (abs(meanminstabLFparticipants(i)-meanminstabHFparticipants(i))/min(meanminstabLFparticipants(i),meanminstabHFparticipants(i)))*100;
    figure(4); hold on;
    plot(0.5,Rd1stab,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    ylabel('Relative change in GF [%]')
    

    %stab: Comparison friction under max weight
    subplot(2,2,3)
    figure(4); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(4); hold on;
    plot(meanmaxstabLFparticipants(i),meanmaxstabHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Low friction normal [N]')
    ylabel('GF - High friction normal [N]')
    title('Max weight')
    
    %relative difference 
    subplot(2,2,4)
    Rd2stab = (abs(meanmaxstabLFparticipants(i)-meanmaxstabHFparticipants(i))/min(meanmaxstabLFparticipants(i),meanmaxstabHFparticipants(i)))*100;
    figure(4); hold on;
    plot(0.5,Rd2stab,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    ylabel('Relative change in GF [%]')
end
suptitle('Grip Force magnitude during stabilization for normal trials');

%% Quantification GF normal for Min & Max weights(GF peaks and stabilization)
figure(5);

for i= 1:nparticipants
    %GF peaks: Comparison weight under low friction
    subplot(1,2,1)
    figure(5); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(5); hold on;
    plot(meanminLFparticipants(i),meanmaxLFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Min weight normal [N]')
    ylabel('GF - Max weight normal [N]')
    title('Low friction')
    
    %relative difference 
    Rd3 = (abs(meanminLFparticipants(i)-meanmaxLFparticipants(i))/min(meanminLFparticipants(i),meanmaxLFparticipants(i)))*100;
    figure; hold on;
    plot(0.5,Rd3,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    ylabel('Relative change in GF [%]')
    

    %GF peaks: Comparison weight under high friction
    subplot(1,2,2)
    figure(5); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(5); hold on;
    plot(meanminHFparticipants(i),meanmaxHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Min weight normal [N]')
    ylabel('GF - Max weight normal [N]')
    title('High friction')
    
    %relative difference 
    Rd4 = (abs(meanminHFparticipants(i)-meanmaxHFparticipants(i))/min(meanminHFparticipants(i),meanmaxHFparticipants(i)))*100;
    figure; hold on;
    plot(0.5,Rd4,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    ylabel('Relative change in GF [%]')

end
suptitle('Grip Force magnitude of GF peaks for normal trials');

figure(6);
for i= 1:nparticipants
    %Stab: Comparison weight under low friction
    subplot(1,2,1)
    figure(6); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(6); hold on;
    plot(meanminstabLFparticipants(i),meanmaxstabLFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Min weight normal [N]')
    ylabel('GF - Max weight normal [N]')
    title('Low friction')
    
    %relative difference 
    Rd3stab = (abs(meanminstabLFparticipants(i)-meanmaxstabLFparticipants(i))/min(meanminstabLFparticipants(i),meanmaxstabLFparticipants(i)))*100;
    figure; hold on;
    plot(0.5,Rd3stab,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    ylabel('Relative change in GF [%]')

    %stab: Comparison weight under high friction
    subplot(1,2,2)
    figure(6); hold on;
    plot(xfriction1,yfriction1,'Color',[0.2 0.2 0.2]) %identity line
    figure(6); hold on;
    plot(meanminstabHFparticipants(i),meanmaxstabHFparticipants(i),'.', 'MarkerSize',10,'Color', C{i});
    xlabel('GF - Min weight normal [N]')
    ylabel('GF - Max weight normal [N]')
    title('High friction')
    
    %relative difference 
    Rd4stab = (abs(meanminstabHFparticipants(i)-meanmaxstabHFparticipants(i))/min(meanminstabHFparticipants(i),meanmaxstabHFparticipants(i)))*100;
    figure; hold on;
    plot(0.5,Rd4stab,'.', 'MarkerSize',10,'Color', C{i});
    set(gca,'XTick',[])
    xlim([0 1])
    set(gca, 'YDir','reverse')
    ylabel('Relative change in GF [%]')
end
suptitle('Grip Force magnitude during stabilization for normal trials');

end