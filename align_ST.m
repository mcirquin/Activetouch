%% align_ST
% 
% aligns the strain matrices for the participants in the same way as the
% force curves (when the load force exceeds 2N)
%
% inputs:
%    matrixname      string name of the shiftmatrix  (MAT-file): 'shiftmatrixYP' or 'shiftmatrixEP' 
%    nparticipants   number of participants (15 for YP, 13 for EP)
%    group           'YP' or 'EP' depending if young or elderly subjects
%    tsteps          number of total time steps for force data (default =
%    2760)
%    npic            number of pictures to read (generally 180)
%
% output:
%    imarray     array of pictures, dim = (m,n,npic)

function alignedST = align_ST(matrixname,nparticipants,group,tsteps,npic)

%load the shiftmatrix
s=load(matrixname);
shiftmatrix=s.shiftmatrix; %shiftmatrix is a (1,ntrials*nparticipants) matrix containing the number of indexes to shift to align the LF on 2N

%string vectors containing the names of participants in correct order 
if group == 'YP'
    names=["AParache" ; "ARommel" ; "ASalden" ; "BDelhaye" ; "DDoumont" ; "FSchiltz" ; "GBrandsteert" ; "JDelforge"; "JDommisse"; "LColmant"; "MBronchart"; "MDausort"; "S_Vandergooten"; "SLedoux" ; "VFischer"];
else
    names=["ADommisse" ; "AMarechal" ; "ATikke" ; "AWertelaers" ; "BJonnart" ; "CZwaenepoel" ; "ESchoonjans"; "ESpringel"; "LCirquin"; "LColmant"; "MJMaldague"; "MRennesson"; "PLefèvre"];   
end

%Determine the participants for which a strain matrix (ST) exists and
%determine an adapted shiftmatrix
STshiftmat = []; %new matrix to save index shift values for participants with a ST.mat table
STnames = string.empty; %vector to store the names of participants with ST table
j = 0;
for i = 1:nparticipants
    if exist(strcat(names(i),'ST.mat')) == 2
        STshiftmat(1+(j*108):108+(j*108))=shiftmatrix(1+(i-1)*108:108+(i-1)*108);
        STnames = [STnames names(i)];
        j = j+1;
    else
        STshiftmat=STshiftmat;
    end
end

%Conversion of indexes from force data to indexes in image timeframe (from
%200 Hz to 50 Hz)
conv_factor = (tsteps-1999)/(npic-1); %conversion factor between data timestep (=generally 760 timesteps for the movement) and the strain timestep (=179 timesteps because strain computed between 2frames)
STshiftmat = STshiftmat/conv_factor; 
STshiftmat = round(STshiftmat);

%Run through the ST trials of each participant to apply shift in indexes
k = 1; %variable to loop through the STshiftmatrix
for i = 1:length(STnames)
    alignedST=cell(20,6);
    for bl = 3:20  %blocs 1 & 2 are not taken into account (adaptation blocs)
        for tr = 1:6           
            fn=strcat(STnames(i),'ST.mat');
            fnst=fullfile('mat',fn);
            mst=matfile(fnst);
            st=mst.st(bl,tr); 
            st=st{1};
            alignedst = repmat(st,1); %create a new matrix that is the copy of the strain matrix
            
            alignedst = circshift(alignedst,-(STshiftmat(k)),3); %shift in the 3rd dimension (corresponding to timeframes)
            alignedST{bl,tr} = alignedst;
            k = k+1;
        end
    end
    
    %Import the data of each trial for the participants and sort them
    %between the different conditions to create a table containing 12
    %matrixes (for the 12 conditions)
    tr_frictcatch = 1; %because all the friction catches happen for the 1st trial
    
    %LF catch under min weight
    bl_LFcatchmin = [8];
    t = 1; %variable for the matrices indexes (t columns depending on number of trials)
    for i = bl_LFcatchmin
        strain = alignedST{i,tr_frictcatch};
        snorm=strain_norm(strain(:,4:6,:)*50);   % factor 50 is frame rate
        snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        stnorm_LFcatchmin(:,t) = snorm_mean;
        t = t+1;
    end
    
    %LF catch under max weight
    bl_LFcatchmax = [3 5];
    t = 1;
    for i = bl_LFcatchmax
        strain = alignedST{i,tr_frictcatch};
        snorm=strain_norm(strain(:,4:6,:)*50);   
        snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        stnorm_LFcatchmax(:,t) = snorm_mean;
        t = t+1;
    end
       
    %HF catch under min weight 
    bl_HFcatchmin = [4 6 17];
    t = 1;
    for i = bl_HFcatchmin
        strain = alignedST{i,tr_frictcatch};
        snorm=strain_norm(strain(:,4:6,:)*50);   
        snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        stnorm_HFcatchmin(:,t) = snorm_mean;
        t = t+1;
    end
    
    %HF catch under max weight
    bl_HFcatchmax = [15 19];
    t = 1;
    for i = bl_HFcatchmax
        strain = alignedST{i,tr_frictcatch};
        snorm=strain_norm(strain(:,4:6,:)*50);   
        snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        stnorm_HFcatchmax(:,t) = snorm_mean;
        t = t+1;
    end
    
    
    %Min catch under LF
    bl_mincatchLF = [3 5 11 13 16];
    tr_mincatchLF = [4 5 3 4 5];
    t = 1;
    for i = bl_mincatchLF
        strain = alignedST{i,tr_mincatchLF(t)};
        snorm=strain_norm(strain(:,4:6,:)*50);   
        snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        stnorm_mincatchLF(:,t) = snorm_mean;
        t = t+1;
    end
    
    %Min catch under HF
    bl_mincatchHF = [7 12 15 19];
    tr_mincatchHF = [5 3 4 4];
    t = 1;
    for i = bl_mincatchHF
        strain = alignedST{i,tr_mincatchHF(t)};
        snorm=strain_norm(strain(:,4:6,:)*50);   
        snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        stnorm_mincatchHF(:,t) = snorm_mean;
        t = t+1;
    end
    
    %Max catch under LF
    bl_maxcatchLF = [8 10 14 18];
    tr_maxcatchLF = [3 4 5 3];
    t = 1;
    for i = bl_maxcatchLF
        strain = alignedST{i,tr_maxcatchLF(t)};
        snorm=strain_norm(strain(:,4:6,:)*50);   
        snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        stnorm_maxcatchLF(:,t) = snorm_mean;
        t = t+1;
    end
    
    %Max catch under HF
    bl_maxcatchHF = [4 6 9 17 20];
    tr_maxcatchHF = [3 3 4 5 5];
    t = 1;
    for i = bl_maxcatchHF
        strain = alignedST{i,tr_maxcatchHF(t)};
        snorm=strain_norm(strain(:,4:6,:)*50);   
        snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        stnorm_maxcatchHF(:,t) = snorm_mean;
        t = t+1;
    end
    
    %Normal min LF
    bl_minLF = [3 3 5 8 10 10 11 11 11 13 13 14 14 14 16 18];
    tr_minLF = [5 6 6 2 2 3 4 5 6 5 6 2 3 4 6 2];
    t = 1;
    if i==4
        for i = bl_minLF
            strain = alignedST{i,tr_minLF(t)};
            assignin('base','strain',strain);
            snorm=strain_norm(strain(:,4:6,:)*50); 
            assignin('base','snorm',snorm);
            snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
            assignin('base','snorm_mean',snorm_mean);
            stnorm_minLF(:,t) = snorm_mean;
            t = t+1;
        end
    end
    
    %Normal min HF
    bl_minHF = [4 6 7 9 9 12 12 12 15 15 17 17 17 19 19 20 20 20];
    tr_minHF = [2 2 6 2 3 4 5 6 5 6 2 3 4 5 6 2 3 4];
    t = 1;
    for i = bl_minHF
        strain = alignedST{i,tr_minHF(t)};
        snorm=strain_norm(strain(:,4:6,:)*50);   
        snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        stnorm_minHF(:,t) = snorm_mean;
        t = t+1;
    end
    
    %Normal max LF
    bl_maxLF = [3 3 5 5 5 8 8 8 10 10 11 13 13 14 16 16 16 18 18 18];
    tr_maxLF = [2 3 2 3 4 4 5 6 5 6 2 2 3 6 2 3 4 4 5 6];
    t = 1;
    for i = bl_maxLF
        strain = alignedST{i,tr_maxLF(t)};
        snorm=strain_norm(strain(:,4:6,:)*50);   
        snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        stnorm_maxLF(:,t) = snorm_mean;
        t = t+1;
    end
    
    %Normal max HF
    bl_maxHF = [4 4 4 6 6 6 7 7 7 9 9 12 15 15 17 19 19 20];
    tr_maxHF = [4 5 6 4 5 6 2 3 4 5 6 2 2 3 6 2 3 6];
    t = 1;
    for i = bl_maxHF
        strain = alignedST{i,tr_maxHF(t)};
        snorm=strain_norm(strain(:,4:6,:)*50);   
        snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        stnorm_maxHF(:,t) = snorm_mean;
        t = t+1;
    end
    
end

%% Compute means and standard deviations of the norms + upper and lower variance limits 
%friction catches
enmean_LFcatchmin = mean(stnorm_LFcatchmin,2);
enmean_LFcatchmax = mean(stnorm_LFcatchmax,2);
enmean_HFcatchmin = mean(stnorm_HFcatchmin,2);
enmean_HFcatchmax = mean(stnorm_HFcatchmax,2);

enstd_LFcatchmin = std(stnorm_LFcatchmin,0,2);
enstd_LFcatchmax = std(stnorm_LFcatchmax,0,2);
enstd_HFcatchmin = std(stnorm_HFcatchmin,0,2);
enstd_HFcatchmax = std(stnorm_HFcatchmax,0,2);

%weight catches
enmean_mincatchLF = mean(stnorm_mincatchLF,2);
enmean_mincatchHF = mean(stnorm_mincatchHF,2);
enmean_maxcatchLF = mean(stnorm_maxcatchLF,2);
enmean_maxcatchHF = mean(stnorm_maxcatchHF,2);

enstd_mincatchLF = std(stnorm_mincatchLF,0,2);
enstd_mincatchHF = std(stnorm_mincatchHF,0,2);
enstd_maxcatchLF = std(stnorm_maxcatchLF,0,2);
enstd_maxcatchHF = std(stnorm_maxcatchHF,0,2);

%normal trials
enmean_minLF = mean(stnorm_minLF,2);
enmean_minHF = mean(stnorm_minHF,2);
enmean_maxLF = mean(stnorm_maxLF,2);
enmean_maxHF = mean(stnorm_maxHF,2);

enstd_minLF = std(stnorm_minLF,0,2);
enstd_minHF = std(stnorm_minHF,0,2);
enstd_maxLF = std(stnorm_maxLF,0,2);
enstd_maxHF = std(stnorm_maxHF,0,2);

%computation of limits 
for i=1:length(enmean_LFcatchmin)
    %friction catches
    ul_stnorm_LFcatchmin(i) = enmean_LFcatchmin(i) + enstd_LFcatchmin(i);
    ll_stnorm_LFcatchmin(i) = enmean_LFcatchmin(i) - enstd_LFcatchmin(i);
    
    ul_stnorm_LFcatchmax(i) = enmean_LFcatchmax(i) + enstd_LFcatchmax(i);
    ll_stnorm_LFcatchmax(i) = enmean_LFcatchmax(i) - enstd_LFcatchmax(i);
    
    ul_stnorm_HFcatchmin(i) = enmean_HFcatchmin(i) + enstd_HFcatchmin(i);
    ll_stnorm_HFcatchmin(i) = enmean_HFcatchmin(i) - enstd_HFcatchmin(i);
    
    ul_stnorm_HFcatchmax(i) = enmean_HFcatchmax(i) + enstd_HFcatchmax(i);
    ll_stnorm_HFcatchmax(i) = enmean_HFcatchmax(i) - enstd_HFcatchmax(i);
    
    %weight catches 
    ul_stnorm_mincatchLF(i) = enmean_mincatchLF(i) + enstd_mincatchLF(i);
    ll_stnorm_mincatchLF(i) = enmean_mincatchLF(i) - enstd_mincatchLF(i);
    
    ul_stnorm_mincatchHF(i) = enmean_mincatchHF(i) + enstd_mincatchHF(i);
    ll_stnorm_mincatchHF(i) = enmean_mincatchHF(i) - enstd_mincatchHF(i);
    
    ul_stnorm_maxcatchLF(i) = enmean_maxcatchLF(i) + enstd_maxcatchLF(i);
    ll_stnorm_maxcatchLF(i) = enmean_maxcatchLF(i) - enstd_maxcatchLF(i);
    
    ul_stnorm_maxcatchHF(i) = enmean_maxcatchHF(i) + enstd_maxcatchHF(i);
    ll_stnorm_maxcatchHF(i) = enmean_maxcatchHF(i) - enstd_maxcatchHF(i);
    
    %normal trials
    ul_stnorm_minLF(i) = enmean_minLF(i) + enstd_minLF(i);
    ll_stnorm_minLF(i) = enmean_minLF(i) - enstd_minLF(i);
    
    ul_stnorm_minHF(i) = enmean_minHF(i) + enstd_minHF(i);
    ll_stnorm_minHF(i) = enmean_minHF(i) - enstd_minHF(i);
    
    ul_stnorm_maxLF(i) = enmean_maxLF(i) + enstd_maxLF(i);
    ll_stnorm_maxLF(i) = enmean_maxLF(i) - enstd_maxLF(i);
    
    ul_stnorm_maxHF(i) = enmean_maxHF(i) + enstd_maxHF(i);
    ll_stnorm_maxHF(i) = enmean_maxHF(i) - enstd_maxHF(i);
end

%% Friction catch plots 
figure(1);
x=linspace(1,179,179); %time vector

subplot(2,2,1)
y1=enmean_LFcatchmax;
y2=enmean_maxHF;
plot(x,y1,'r--',x,y2,'b','LineWidth',1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_stnorm_LFcatchmax fliplr(ll_stnorm_LFcatchmax)], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_maxHF fliplr(ll_stnorm_maxHF)], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
title('Maximal weight')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
legend('Low friction catch', 'High friction normal');

subplot(2,2,2)
y3=enmean_LFcatchmin;
y4=enmean_minHF;
plot(x,y3,'r--',x,y4,'b','LineWidth',1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_stnorm_LFcatchmin fliplr(ll_stnorm_LFcatchmin)], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_minHF fliplr(ll_stnorm_minHF)], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
title('Minimal weight')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
legend('Low friction catch', 'High friction normal');

subplot(2,2,3)
y5=enmean_maxLF;
y6=enmean_HFcatchmax;
plot(x,y5,'r',x,y4,'b--','LineWidth',1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_stnorm_HFcatchmax fliplr(ll_stnorm_HFcatchmax)], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_maxLF fliplr(ll_stnorm_maxLF)], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
legend('Low friction normal', 'High friction catch');

subplot(2,2,4)
y7=enmean_minLF;
y8=enmean_HFcatchmin;
plot(x,y7,'r',x,y8,'b--','LineWidth',1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_stnorm_HFcatchmin fliplr(ll_stnorm_HFcatchmin)], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_minLF fliplr(ll_stnorm_minLF)], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
legend('Low friction normal', 'High friction catch');

                        
%% Weight catch plots 
figure(2);

subplot(2,2,1)
y1=enmean_maxcatchLF;
y2=enmean_minLF;
plot(x,y1,'r--',x,y2,'b','LineWidth',1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_stnorm_maxcatchLF fliplr(ll_stnorm_maxcatchLF)], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_minLF fliplr(ll_stnorm_minLF)], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
title('Low friction')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
legend('Maximal weight catch', 'Minimal weight normal');

subplot(2,2,2)
y3=enmean_maxcatchHF;
y4=enmean_minHF;
plot(x,y3,'r--',x,y4,'b','LineWidth',1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_stnorm_maxcatchHF fliplr(ll_stnorm_maxcatchHF)], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_minHF fliplr(ll_stnorm_minHF)], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
title('High friction')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
legend('Maximal weight catch', 'Minimal weight normal');

subplot(2,2,3)
y5=enmean_maxLF;
y6=enmean_mincatchLF;
plot(x,y5,'r',x,y4,'b--','LineWidth',1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_stnorm_mincatchLF fliplr(ll_stnorm_mincatchLF)], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_maxLF fliplr(ll_stnorm_maxLF)], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
legend('Maximal weight normal', 'Minimal weight catch');

subplot(2,2,4)
y7=enmean_maxHF;
y8=enmean_mincatchHF;
plot(x,y7,'r',x,y8,'b--','LineWidth',1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_stnorm_maxHF fliplr(ll_stnorm_maxHF)], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_mincatchHF fliplr(ll_stnorm_mincatchHF)], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
legend('Maximal weight normal', 'Minimal weight catch');
