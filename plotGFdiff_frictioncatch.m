function [GF_pvalues,GF_indexes] = plotGFdiff_frictioncatch(alignedLFtable, alignedGFtable, tsteps, nparticipants,minimum)
%% Friction catch low friction (high to low friction)
%low friction catch under max weight 
nessais1=2;
gfmaxcatchLF1=zeros(tsteps-1999,nessais1*nparticipants);

gfmaxcatchLF1=alignedGFtable(:,1:108:end);
gfmaxcatchLF1=[gfmaxcatchLF1 alignedGFtable(:,13:108:end)];
%gfmaxcatchLF1=[gfmaxcatchLF1 alignedGFtable(:,61:108:end)];
%gfmaxcatchLF1=[gfmaxcatchLF1 alignedGFtable(:,79:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais1
        subjects_gfmaxcatchLF1(:,k) =  gfmaxcatchLF1(:,j);   %matrix with trials of a same participant
        subj_meangfmaxcatchLF1(:,i) = mean(subjects_gfmaxcatchLF1,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end

%high friction adaptation under max weight 
nessais2=18;
gfmaxadaptHF1=zeros(tsteps-1999,nessais2*nparticipants);

gfmaxadaptHF1=alignedGFtable(:,26:108:end);
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,27:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,28:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,56:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,74:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,75:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,98:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,99:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,10:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,11:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,12:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,22:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,23:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,34:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,41:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,42:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,90:108:end)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,108:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais2
        subjects_gfmaxadaptHF1(:,k) =  gfmaxadaptHF1(:,j);   %matrix with trials of a same participant
        subj_meangfmaxadaptHF1(:,i) = mean(subjects_gfmaxadaptHF1,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end

%low friction catch under min weight 
nessais3=1;
gfmincatchLF1=zeros(tsteps-1999,nessais3*nparticipants);

gfmincatchLF1=alignedGFtable(:,31:108:end);
%gfmincatchLF1=[gfmincatchLF1 alignedGFtable(:,43:108:end)];
%gfmincatchLF1=[gfmincatchLF1 alignedGFtable(:,91:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais3
        subjects_gfmincatchLF1(:,k) =  gfmincatchLF1(:,j);   %matrix with trials of a same participant
        subj_meangfmincatchLF1(:,i) = mean(subjects_gfmincatchLF1,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end

%high friction adaptation under min weight 
nessais4=18;
gfminadaptHF1=zeros(tsteps-1999,nessais4*nparticipants);

gfminadaptHF1=alignedGFtable(:,30:108:end);
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,58:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,59:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,60:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,77:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,78:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,101:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,102:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,8:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,20:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,38:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,39:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,86:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,87:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,88:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,104:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,105:108:end)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,106:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais4
        subjects_gfminadaptHF1(:,k) =  gfminadaptHF1(:,j);   %matrix with trials of a same participant
        subj_meangfminadaptHF1(:,i) = mean(subjects_gfminadaptHF1,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end


%% Friction catch high friction (low to high friction)

%high friction catch under max weight 
nessais5=2;
gfmaxcatchHF2=zeros(tsteps-1999,nessais5*nparticipants);

%gfmaxcatchHF2=alignedGFtable(:,55:108:end);
gfmaxcatchHF2=alignedGFtable(:,73:108:end);
gfmaxcatchHF2=[gfmaxcatchHF2 alignedGFtable(:,97:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais5
        subjects_gfmaxcatchHF2(:,k) =  gfmaxcatchHF2(:,j);   %matrix with trials of a same participant
        subj_meangfmaxcatchHF2(:,i) = mean(subjects_gfmaxcatchHF2,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end

%low friction adaptation under max weight 
nessais6=20;
gfmaxadaptLF2=zeros(tsteps-1999,nessais6*nparticipants);

gfmaxadaptLF2=alignedGFtable(:,2:108:end);
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,3:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,14:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,15:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,16:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,50:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,62:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,63:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,80:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,81:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,82:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,34:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,35:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,36:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,47:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,48:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,72:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,94:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,95:108:end)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,96:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais6
        subjects_gfmaxadaptLF2(:,k) =  gfmaxadaptLF2(:,j);   %matrix with trials of a same participant
        subj_meangfmaxadaptLF2(:,i) = mean(subjects_gfmaxadaptLF2,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end

%high friction catch under min weight 
nessais7=3;
gfmincatchHF2=zeros(tsteps-1999,nessais7*nparticipants);

gfmincatchHF2=alignedGFtable(:,7:108:end);
gfmincatchHF2=[gfmincatchHF2 alignedGFtable(:,19:108:end)];
%gfmincatchHF2=[gfmincatchHF2 alignedGFtable(:,37:108:end)];
gfmincatchHF2=[gfmincatchHF2 alignedGFtable(:,85:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais7
        subjects_gfmincatchHF2(:,k) =  gfmincatchHF2(:,j);   %matrix with trials of a same participant
        subj_meangfmincatchHF2(:,i) = mean(subjects_gfmincatchHF2,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end


%low friction adaptation under min weight 
nessais8=16;
gfminadaptLF2=zeros(tsteps-1999,nessais8*nparticipants);

gfminadaptLF2=alignedGFtable(:,5:108:end);
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,6:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,18:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,52:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,53:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,54:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,65:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,66:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,84:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,32:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,44:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,45:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,68:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,69:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,70:108:end)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,92:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais8
        subjects_gfminadaptLF2(:,k) =  gfminadaptLF2(:,j);   %matrix with trials of a same participant
        subj_meangfminadaptLF2(:,i) = mean(subjects_gfminadaptLF2,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end

%% Mean temporal GF curves 

meangfmaxcatchLF1=mean(gfmaxcatchLF1,2);
meangfmaxadaptHF1=mean(gfmaxadaptHF1,2);

meangfmincatchLF1=mean(gfmincatchLF1,2);
meangfminadaptHF1=mean(gfminadaptHF1,2);

meangfmaxcatchHF2=mean(gfmaxcatchHF2,2);
meangfmaxadaptLF2=mean(gfmaxadaptLF2,2);

meangfmincatchHF2=mean(gfmincatchHF2,2);
meangfminadaptLF2=mean(gfminadaptLF2,2);

%% Compute relative differences between curves per subject (sort des matrices où les lignes sont des pas de temps et les colonnes sont la diff relative entre les 2 conditions par sujet)
% Catch low friction vs adapt high friction under max weight
for i=1:nparticipants
    for j=1:tsteps-1999
        Rd_LFmaxcatch(j,i) = ((subj_meangfmaxcatchLF1(j,i) - subj_meangfmaxadaptHF1(j,i)) /min(subj_meangfmaxcatchLF1(j,i),subj_meangfmaxadaptHF1(j,i)))*100;
    end
end

% Catch low friction vs adapt high friction under min weight
for i=1:nparticipants
    for j=1:tsteps-1999
        Rd_LFmincatch(j,i) = ((subj_meangfmincatchLF1(j,i) - subj_meangfminadaptHF1(j,i)) /min(subj_meangfmincatchLF1(j,i),subj_meangfminadaptHF1(j,i)))*100;
    end
end

% Catch high friction vs adapt low friction under max weight
for i=1:nparticipants
    for j=1:tsteps-1999
        Rd_HFmaxcatch(j,i) = ((subj_meangfmaxadaptLF2(j,i) - subj_meangfmaxcatchHF2(j,i))/min(subj_meangfmaxadaptLF2(j,i),subj_meangfmaxcatchHF2(j,i)))*100;
    end
end

% Catch high friction vs adapt low friction under min weight
for i=1:nparticipants
    for j=1:tsteps-1999
        Rd_HFmincatch(j,i) = ((subj_meangfminadaptLF2(j,i) - subj_meangfmincatchHF2(j,i)) /min(subj_meangfminadaptLF2(j,i),subj_meangfmincatchHF2(j,i)))*100;
    end
end

%% Mean and standard deviations of Rd of subjects 
Rd_meangfLFmaxcatch=mean(Rd_LFmaxcatch,2);
Rd_stdgfLFmaxcatch=std(Rd_LFmaxcatch,0,2);

Rd_meangfLFmincatch=mean(Rd_LFmincatch,2);
Rd_stdgfLFmincatch=std(Rd_LFmincatch,0,2);

Rd_meangfHFmaxcatch=mean(Rd_HFmaxcatch,2);
Rd_stdgfHFmaxcatch=std(Rd_HFmaxcatch,0,2);

Rd_meangfHFmincatch=mean(Rd_HFmincatch,2);
Rd_stdgfHFmincatch=std(Rd_HFmincatch,0,2);

%computation of the boundaries
for i=1:tsteps-1999
    
    ul_gfLFmaxcatch(i) = Rd_meangfLFmaxcatch(i) + Rd_stdgfLFmaxcatch(i); 
    ll_gfLFmaxcatch(i) = Rd_meangfLFmaxcatch(i) - Rd_stdgfLFmaxcatch(i); 
    
    ul_gfLFmincatch(i) = Rd_meangfLFmincatch(i) + Rd_stdgfLFmincatch(i); 
    ll_gfLFmincatch(i) = Rd_meangfLFmincatch(i) - Rd_stdgfLFmincatch(i); 
    
    ul_gfHFmaxcatch(i) = Rd_meangfHFmaxcatch(i) + Rd_stdgfHFmaxcatch(i); 
    ll_gfHFmaxcatch(i) = Rd_meangfHFmaxcatch(i) - Rd_stdgfHFmaxcatch(i); 
    
    ul_gfHFmincatch(i) = Rd_meangfHFmincatch(i) + Rd_stdgfHFmincatch(i); 
    ll_gfHFmincatch(i) = Rd_meangfHFmincatch(i) - Rd_stdgfHFmincatch(i); 
    
end

%% Moment of significative difference between the curves (T-test)
% T-tests for GF on means per subject 
GF_pvalues = [];
GF_indexes = [];

%catch LF max weight vs HF adaptation max weight
[h1,p1] = ttest(subj_meangfmaxcatchLF1.',subj_meangfmaxadaptHF1.');%transposée des matrices pour faire le T-test dans le bon sens (pour chaque pas de temps)
for i = minimum:(tsteps-1999)
    if p1(i) < 0.05
        GF_pvalues(1) = p1(i);
        GF_indexes(1) = i;
        break
    end 
end

disp(p1)

%catch LF min weight vs HF adaptation min weight
[h2,p2] = ttest(subj_meangfmincatchLF1.',subj_meangfminadaptHF1.');
for i = minimum:(tsteps-1999)
    if p2(i) < 0.05
        GF_pvalues(2) = p2(i);
        GF_indexes(2) = i;
        break
    end 
end


%catch HF max weight vs LF adaptation max weight
[h3,p3] = ttest(subj_meangfmaxcatchHF2.',subj_meangfmaxadaptLF2.');
for i = minimum:(tsteps-1999)
    if p3(i) < 0.05
        GF_pvalues(3) = p3(i);
        GF_indexes(3) = i;
        break
    end 
end

%catch HF min weight vs LF adaptation min weight
[h4,p4] = ttest(subj_meangfmincatchHF2.',subj_meangfminadaptLF2.');
for i = minimum:(tsteps-1999)
    if p4(i) < 0.05
        GF_pvalues(4) = p4(i);
        GF_indexes(4) = i;
        break
    end 
end

%% Plots 
% Figures GF mean curves and relative difference in mean force 
GFaxislim = 10; %limit of y axis of graphs for GF curves
Rdaxislim = 90; %limit of y axis of graphs for relative difference curves

figure(1); 
%x=10:0.005:12.495;
timealigned=minimum*0.005; %temps où toutes les courbes sont alignées
x=-timealigned:0.005:(-timealigned+2.495); %500 pas de temps, le 0 se trouve à l'alignement des courbes

subplot(3,2,1)
y1 = meangfmaxcatchLF1(1:500);
y2 = meangfmaxadaptHF1(1:500);
plot(x,y1,'r--', x, y2, 'b', 'LineWidth', 1.5)
legend('', '')
title('Maximal manipulandum weight')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 GFaxislim]);
xlim([-timealigned 2]);
legend('Low friction catch', 'High friction normal');

subplot(3,2,2)
y3 = meangfmincatchLF1(1:500);
y4 = meangfminadaptHF1(1:500);
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
title('Minimal manipulandum weight')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 GFaxislim]);
xlim([-timealigned 2]);
legend('Low friction catch', 'High friction normal');


subplot(3,2,3)
y5 = Rd_meangfLFmaxcatch(1:500);
plot(x,y5,'g','LineWidth', 1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_gfLFmaxcatch(1:500) fliplr(ll_gfLFmaxcatch(1:500))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(1);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
figure(1);hold on;
plot([x(GF_indexes(1)) x(GF_indexes(1))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
xlabel('Time (s)');
ylabel('\Delta GF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);

subplot(3,2,4)
y6 = Rd_meangfLFmincatch(1:500);
plot(x,y6,'g','LineWidth', 1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_gfLFmincatch(1:500) fliplr(ll_gfLFmincatch(1:500))], 'g', 'FaceAlpha', 0.2, 'LineStyle', "none")
figure(1);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
figure(1);hold on;
plot([x(GF_indexes(1)) x(GF_indexes(1))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
xlabel('Time (s)');
ylabel('\Delta GF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);

subplot(3,2,5)
plot(x,p1(1:500))
figure(1);hold on;
plot([x(GF_indexes(1)) x(GF_indexes(1))],[0 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
xlim([-timealigned 2]);

subplot(3,2,6)
plot(x,p2(1:500))
figure(1);hold on;
plot([x(GF_indexes(2)) x(GF_indexes(2))],[0 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
xlim([-timealigned 2]);

%{
subplot(2,2,4)
y7 = meanlfmincatchHF2(1:500);
y8 = meanlfminadaptLF2(1:500);
plot(x,y8,'r', x,y7,'b--','LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_lfmincatchHF2(1:500) fliplr(ll_lfmincatchHF2(1:500))], 'b', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfminadaptLF2(1:500) fliplr(ll_lfminadaptLF2(1:500))], 'r', 'FaceAlpha', 0.2)
hold on
plot([LF_indexes(4)*0.005+10 LF_indexes(4)*0.005+10],[0 LFaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
title('Minimal manipulandum weight')
xlabel('Time (s)');
ylabel('LF (N)');
ylim([0 LFaxislim]);
xlim([-timealigned 2]);
legend('Low friction normal', 'High friction catch');

suptitle( 'Adaptation to friction during the first movement of friction catch trials - Elderly participants');
%suptitle( 'Adaptation to friction during the first movement of friction catch trials - Young participants');
%}
end
        

