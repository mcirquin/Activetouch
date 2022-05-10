%% align_ST
% 
% aligns the strain matrices for the participants in the same way as the
% force curves (when the load force exceeds 2N)
%
% inputs:
%    matrixname      string name of the shiftmatrix  (MAT-file): 'shiftmatrixYP' or 'shiftmatrixEP' 
%    group           'YP' or 'EP' depending if young or elderly subjects
%    nparticipants   number of participants (15 for YP, 13 for EP)
%    minimum         index of earliest LF curve reaching 2N (obtained by running the script "at_importalignedfolders"
%    tsteps          number of total time steps for force data (default =
%    2760)
%    npic            number of pictures to read (generally 180)
%
% output:
%    imarray     array of pictures, dim = (m,n,npic)

function [friction_pvalues,friction_time,friction_signDiff,weight_pvalues,weight_time,weight_signDiff] = align_ST(matrixname,group,nparticipants,minimum,tsteps,npic)

%load the shiftmatrix
s=load(matrixname);
shiftmatrix=s.shiftmatrix; %shiftmatrix is a (1,ntrials*nparticipants) matrix containing the number of indexes to shift to align the LF on 2N

%string vectors containing the names of participants in correct order 
if group == 'YP'
    names=["AParache" ; "ARommel" ; "ASalden" ; "BDelhaye" ; "DDoumont" ; "FSchiltz" ; "GBrandsteert" ; "JDelforge"; "JDommisse"; "LColmant"; "MBronchart"; "MDausort"; "SLedoux" ; "SVandergooten" ; "VFischer"];
    %names=["ASalden" ; "BDelhaye" ; "FSchiltz" ; "JDommisse"; "LColmant"; "SLedoux" ; "SVandergooten" ; "VFischer"];
else
    names=["ADommisse" ; "AMarechal" ; "ATikke" ; "AWertelaers" ; "BJonnart" ; "CBedford" ; "CZwaenepoel" ;"ESchoonjans"; "ESpringel"; "LCirquin"; "MMaldague"; "MRenneson"; "PLefevre"];   
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
h = 1; %variable to loop through the STshiftmatrix
%variables for the matrices indexes (increment columns depending for number of trials)
k = 1;
l = 1;
m = 1;
n = 1;
o = 1;
p = 1;
q = 1;
r = 1;
s = 1; 
t = 1;
u = 1;
v = 1;
disp(STnames)
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
            
            alignedst = circshift(alignedst,-(STshiftmat(h)),3); %shift in the 3rd dimension (corresponding to timeframes)
            alignedST{bl,tr} = alignedst;
            h = h+1;
        end
    end
    
    %Import the data of each trial for the participants and sort them
    %between the different conditions to create a table containing 12
    %matrixes (for the 12 conditions)
    tr_frictcatch = 1; %because all the friction catches happen for the 1st trial
    
    %LF catch under min weight
    bl_LFcatchmin = [8];
    for i = bl_LFcatchmin
        strain = alignedST{i,tr_frictcatch};
        if size(strain,2) ~= 7 %exclude strain cells for which no data is available 
            snorm=nan;
            snorm_mean=nan(npic-1,1);
        else
            snorm=strain_norm(strain(:,4:6,:)*50); % factor 50 is frame rate
            snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        end
        stnorm_LFcatchmin(:,k) = snorm_mean;
        stnorm_LFcatchmin(stnorm_LFcatchmin==0)=nan;
        k = k+1;
    end    

    %LF catch under max weight
    bl_LFcatchmax = [3 5];
    for i = bl_LFcatchmax
        strain = alignedST{i,tr_frictcatch};
        if size(strain,2) ~= 7
            snorm=nan;
            snorm_mean=nan(npic-1,1);
        else
            snorm=strain_norm(strain(:,4:6,:)*50);
            snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        end
        stnorm_LFcatchmax(:,l) = snorm_mean;
        stnorm_LFcatchmax(stnorm_LFcatchmax==0)=nan;
        l = l+1;
    end
       
    %HF catch under min weight 
    bl_HFcatchmin = [4 6 17];
    for i = bl_HFcatchmin
        strain = alignedST{i,tr_frictcatch};
        if size(strain,2) ~= 7
            snorm=nan;
            snorm_mean=nan(npic-1,1);
        else
            snorm=strain_norm(strain(:,4:6,:)*50);
            snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        end
        stnorm_HFcatchmin(:,m) = snorm_mean;
        stnorm_HFcatchmin(stnorm_HFcatchmin==0)=nan;
        m = m+1;
    end
    
    %HF catch under max weight
    bl_HFcatchmax = [15 19];
    for i = bl_HFcatchmax
        strain = alignedST{i,tr_frictcatch};
        if size(strain,2) ~= 7
            snorm=nan;
            snorm_mean=nan(npic-1,1);
        else
            snorm=strain_norm(strain(:,4:6,:)*50);
            snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        end
        stnorm_HFcatchmax(:,n) = snorm_mean;
        stnorm_HFcatchmax(stnorm_HFcatchmax==0)=nan;
        n = n+1;
    end
    
    
    %Min catch under LF
    bl_mincatchLF = [3 5 11 13 16];
    tr_mincatchLF = [4 5 3 4 5];
    trial = 1; %incrementing variable to increment blocs with corresponding trials
    for i = bl_mincatchLF
        strain = alignedST{i,tr_mincatchLF(trial)};
        if size(strain,2) ~= 7
            snorm=nan;
            snorm_mean=nan(npic-1,1);
        else
            snorm=strain_norm(strain(:,4:6,:)*50);
            snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        end
        stnorm_mincatchLF(:,o) = snorm_mean;
        stnorm_mincatchLF(stnorm_mincatchLF==0)=nan;
        o = o+1;
        trial = trial + 1;
    end

    %Min catch under HF
    bl_mincatchHF = [7 12 15 19];
    tr_mincatchHF = [5 3 4 4];
    trial = 1;
    for i = bl_mincatchHF
        strain = alignedST{i,tr_mincatchHF(trial)};
        if size(strain,2) ~= 7
            snorm=nan;
            snorm_mean=nan(npic-1,1);
        else
            snorm=strain_norm(strain(:,4:6,:)*50);
            snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        end
        stnorm_mincatchHF(:,p) = snorm_mean;
        stnorm_mincatchHF(stnorm_mincatchHF==0)=nan;
        p = p+1;
        trial = trial + 1;
    end
    
    %Max catch under LF
    bl_maxcatchLF = [8 10 14 18];
    tr_maxcatchLF = [3 4 5 3];
    trial = 1;
    for i = bl_maxcatchLF
        strain = alignedST{i,tr_maxcatchLF(trial)};
        if size(strain,2) ~= 7
            snorm=nan;
            snorm_mean=nan(npic-1,1);
        else
            snorm=strain_norm(strain(:,4:6,:)*50);
            snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        end
        stnorm_maxcatchLF(:,q) = snorm_mean;
        stnorm_maxcatchLF(stnorm_maxcatchLF==0)=nan;
        q = q+1;
        trial = trial + 1;
    end
    
    %Max catch under HF
    bl_maxcatchHF = [4 6 9 17 20];
    tr_maxcatchHF = [3 3 4 5 5];
    trial = 1;
    for i = bl_maxcatchHF
        strain = alignedST{i,tr_maxcatchHF(trial)};
        if size(strain,2) ~= 7
            snorm=nan;
            snorm_mean=nan(npic-1,1);
        else
            snorm=strain_norm(strain(:,4:6,:)*50);
            snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        end
        stnorm_maxcatchHF(:,r) = snorm_mean;
        stnorm_maxcatchHF(stnorm_maxcatchHF==0)=nan;
        r = r+1;
        trial = trial + 1;
    end
    
    %Normal min LF
    bl_minLF = [3 3 5 8 10 10 11 11 11 13 13 14 14 14 16 18];
    tr_minLF = [5 6 6 2 2 3 4 5 6 5 6 2 3 4 6 2];
    trial = 1;
    for i = bl_minLF
        strain = alignedST{i,tr_minLF(trial)};
        if size(strain,2) ~= 7
            snorm=nan;
            snorm_mean=nan(npic-1,1);
        else
            snorm=strain_norm(strain(:,4:6,:)*50);
            snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        end
        stnorm_minLF(:,s) = snorm_mean;
        stnorm_minLF(stnorm_minLF==0)=nan;
        s = s+1;
        trial = trial + 1;
    end
    
    %Normal min HF
    bl_minHF = [4 6 7 9 9 12 12 12 15 15 17 17 17 19 19 20 20 20];
    tr_minHF = [2 2 6 2 3 4 5 6 5 6 2 3 4 5 6 2 3 4];
    trial = 1;
    for i = bl_minHF
        strain = alignedST{i,tr_minHF(trial)};
        if size(strain,2) ~= 7
            snorm=nan;
            snorm_mean=nan(npic-1,1);
        else
            snorm=strain_norm(strain(:,4:6,:)*50);
            snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        end
        stnorm_minHF(:,t) = snorm_mean;
        stnorm_minHF(stnorm_minHF==0)=nan;
        t = t+1;
        trial = trial + 1;
    end
    
    %Normal max LF
    bl_maxLF = [3 3 5 5 5 8 8 8 10 10 11 13 13 14 16 16 16 18 18 18];
    tr_maxLF = [2 3 2 3 4 4 5 6 5 6 2 2 3 6 2 3 4 4 5 6];
    trial = 1;
    for i = bl_maxLF
        strain = alignedST{i,tr_maxLF(trial)};
        if size(strain,2) ~= 7
            snorm=nan;
            snorm_mean=nan(npic-1,1);
        else
            snorm=strain_norm(strain(:,4:6,:)*50);
            snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        end
        stnorm_maxLF(:,u) = snorm_mean;
        stnorm_maxLF(stnorm_maxLF==0)=nan;
        u = u+1;
        trial = trial + 1;
    end
    
    %Normal max HF
    bl_maxHF = [4 4 4 6 6 6 7 7 7 9 9 12 15 15 17 19 19 20];
    tr_maxHF = [4 5 6 4 5 6 2 3 4 5 6 2 2 3 6 2 3 6];
    trial = 1;
    for i = bl_maxHF
        strain = alignedST{i,tr_maxHF(trial)};
        if size(strain,2) ~= 7
            snorm=nan;
            snorm_mean=nan(npic-1,1);
        else
            snorm=strain_norm(strain(:,4:6,:)*50);
            snorm_mean=squeeze(nansum(snorm.*strain(:,3,:),1)./nansum(st(:,3,:),1));
        end
        stnorm_maxHF(:,v) = snorm_mean;
        stnorm_maxHF(stnorm_maxHF==0)=nan;
        v = v+1;
        trial = trial + 1;
    end
end

%% Compute means and standard deviations of the norms + upper and lower variance limits of strain norms
%friction catches
enmean_LFcatchmin = mean(stnorm_LFcatchmin,2,'omitnan');
enmean_LFcatchmax = mean(stnorm_LFcatchmax,2,'omitnan');
enmean_HFcatchmin = mean(stnorm_HFcatchmin,2,'omitnan');
enmean_HFcatchmax = mean(stnorm_HFcatchmax,2,'omitnan');

enstd_LFcatchmin = std(stnorm_LFcatchmin,0,2,'omitnan');
enstd_LFcatchmax = std(stnorm_LFcatchmax,0,2,'omitnan');
enstd_HFcatchmin = std(stnorm_HFcatchmin,0,2,'omitnan');
enstd_HFcatchmax = std(stnorm_HFcatchmax,0,2,'omitnan');

%weight catches
enmean_mincatchLF = mean(stnorm_mincatchLF,2,'omitnan');
enmean_mincatchHF = mean(stnorm_mincatchHF,2,'omitnan');
enmean_maxcatchLF = mean(stnorm_maxcatchLF,2,'omitnan');
enmean_maxcatchHF = mean(stnorm_maxcatchHF,2,'omitnan');

enstd_mincatchLF = std(stnorm_mincatchLF,0,2,'omitnan');
enstd_mincatchHF = std(stnorm_mincatchHF,0,2,'omitnan');
enstd_maxcatchLF = std(stnorm_maxcatchLF,0,2,'omitnan');
enstd_maxcatchHF = std(stnorm_maxcatchHF,0,2,'omitnan');

%normal trials
enmean_minLF = mean(stnorm_minLF,2,'omitnan');
enmean_minHF = mean(stnorm_minHF,2,'omitnan');
enmean_maxLF = mean(stnorm_maxLF,2,'omitnan');
enmean_maxHF = mean(stnorm_maxHF,2,'omitnan');

enstd_minLF = std(stnorm_minLF,0,2,'omitnan');
enstd_minHF = std(stnorm_minHF,0,2,'omitnan');
enstd_maxLF = std(stnorm_maxLF,0,2,'omitnan');
enstd_maxHF = std(stnorm_maxHF,0,2,'omitnan');

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

%% Compute means per subject
k=1;
for j = 1:length(bl_LFcatchmin):length(bl_LFcatchmin)*length(STnames)
    subjmean_normLFcatchmin(:,k) = mean(stnorm_LFcatchmin(:,j:(j+length(bl_LFcatchmin)-1)),2,'omitnan');
    k=k+1;
end
k=1;
for j = 1:length(bl_LFcatchmax):length(bl_LFcatchmax)*length(STnames)
    subjmean_normLFcatchmax(:,k) = mean(stnorm_LFcatchmax(:,j:(j+length(bl_LFcatchmax)-1)),2,'omitnan');
    k=k+1;
end
k=1;
for j = 1:length(bl_HFcatchmin):length(bl_HFcatchmin)*length(STnames)
    subjmean_normHFcatchmin(:,k) = mean(stnorm_HFcatchmin(:,j:(j+length(bl_HFcatchmin)-1)),2,'omitnan');
    k=k+1;
end
k=1;
for j = 1:length(bl_HFcatchmax):length(bl_HFcatchmax)*length(STnames)
    subjmean_normHFcatchmax(:,k) = mean(stnorm_HFcatchmax(:,j:(j+length(bl_HFcatchmax)-1)),2,'omitnan');
    k=k+1;
end

k=1;
for j = 1:length(bl_mincatchLF):length(bl_mincatchLF)*length(STnames)
    subjmean_normmincatchLF(:,k) = mean(stnorm_mincatchLF(:,j:(j+length(bl_mincatchLF)-1)),2,'omitnan');
    k=k+1;
end
k=1;
for j = 1:length(bl_mincatchHF):length(bl_mincatchHF)*length(STnames)
    subjmean_normmincatchHF(:,k) = mean(stnorm_mincatchHF(:,j:(j+length(bl_mincatchHF)-1)),2,'omitnan');
    k=k+1;
end
k=1;
for j = 1:length(bl_maxcatchLF):length(bl_maxcatchLF)*length(STnames)
    subjmean_normmaxcatchLF(:,k) = mean(stnorm_maxcatchLF(:,j:(j+length(bl_maxcatchLF)-1)),2,'omitnan');
    k=k+1;
end
k=1;
for j = 1:length(bl_maxcatchHF):length(bl_maxcatchHF)*length(STnames)
    subjmean_normmaxcatchHF(:,k) = mean(stnorm_maxcatchHF(:,j:(j+length(bl_maxcatchHF)-1)),2,'omitnan');
    k=k+1;
end

k=1;
for j = 1:length(bl_minLF):length(bl_minLF)*length(STnames)
    subjmean_normminLF(:,k) = mean(stnorm_minLF(:,j:(j+length(bl_minLF)-1)),2,'omitnan');
    k=k+1;
end
k=1;
for j = 1:length(bl_minHF):length(bl_minHF)*length(STnames)
    subjmean_normminHF(:,k) = mean(stnorm_minHF(:,j:(j+length(bl_minHF)-1)),2,'omitnan');
    k=k+1;
end
k=1;
for j = 1:length(bl_maxLF):length(bl_maxLF)*length(STnames)
    subjmean_normmaxLF(:,k) = mean(stnorm_maxLF(:,j:(j+length(bl_maxLF)-1)),2,'omitnan');
    k=k+1;
end
k=1;
for j = 1:length(bl_maxHF):length(bl_maxHF)*length(STnames)
    subjmean_normmaxHF(:,k) = mean(stnorm_maxHF(:,j:(j+length(bl_maxHF)-1)),2,'omitnan');
    k=k+1;
end

 
%% Computation relative difference between 2 conditions 
for i=1:length(STnames)
    for j=1:npic-1
        %friction catches
        Rd_LFcatchmin(j,i) = ((subjmean_normLFcatchmin(j,i) - subjmean_normminHF(j,i)) /min(subjmean_normminHF(j,i),subjmean_normLFcatchmin(j,i)))*100;
        Rd_LFcatchmax(j,i) = ((subjmean_normLFcatchmax(j,i) - subjmean_normmaxHF(j,i)) /min(subjmean_normmaxHF(j,i),subjmean_normLFcatchmax(j,i)))*100;
        Rd_HFcatchmin(j,i) = ((subjmean_normminLF(j,i) - subjmean_normHFcatchmin(j,i)) /min(subjmean_normminLF(j,i),subjmean_normHFcatchmin(j,i)))*100;
        Rd_HFcatchmax(j,i) = ((subjmean_normmaxLF(j,i) - subjmean_normHFcatchmax(j,i)) /min(subjmean_normmaxLF(j,i),subjmean_normHFcatchmax(j,i)))*100;
    
        %weight catches 
        Rd_mincatchLF(j,i) = ((subjmean_normmaxLF(j,i) - subjmean_normmincatchLF(j,i)) /min(subjmean_normmaxLF(j,i),subjmean_normmincatchLF(j,i)))*100;
        Rd_mincatchHF(j,i) = ((subjmean_normmaxHF(j,i) - subjmean_normmincatchHF(j,i)) /min(subjmean_normmaxHF(j,i),subjmean_normmincatchHF(j,i)))*100;
        Rd_maxcatchLF(j,i) = ((subjmean_normmaxcatchLF(j,i) - subjmean_normminLF(j,i)) /min(subjmean_normmaxcatchLF(j,i),subjmean_normminLF(j,i)))*100;
        Rd_maxcatchHF(j,i) = ((subjmean_normmaxcatchHF(j,i) - subjmean_normminHF(j,i)) /min(subjmean_normmaxcatchHF(j,i),subjmean_normminHF(j,i)))*100;
    end
end

%% Computation of means and standard deviations of relative differences in strain norm 
%friction catches
meanRd_LFcatchmin = mean(Rd_LFcatchmin,2,'omitnan');
stdRd_LFcatchmin = std(Rd_LFcatchmin,0,2,'omitnan');

meanRd_LFcatchmax = mean(Rd_LFcatchmax,2,'omitnan');
stdRd_LFcatchmax = std(Rd_LFcatchmax,0,2,'omitnan');

meanRd_HFcatchmin = mean(Rd_HFcatchmin,2,'omitnan');
stdRd_HFcatchmin = std(Rd_HFcatchmin,0,2,'omitnan');

meanRd_HFcatchmax = mean(Rd_HFcatchmax,2,'omitnan');
stdRd_HFcatchmax = std(Rd_HFcatchmax,0,2,'omitnan');

%weight catches
meanRd_mincatchLF = mean(Rd_mincatchLF,2,'omitnan');
stdRd_mincatchLF = std(Rd_mincatchLF,0,2,'omitnan');

meanRd_mincatchHF = mean(Rd_mincatchHF,2,'omitnan');
stdRd_mincatchHF = std(Rd_mincatchHF,0,2,'omitnan');

meanRd_maxcatchLF = mean(Rd_maxcatchLF,2,'omitnan');
stdRd_maxcatchLF = std(Rd_maxcatchLF,0,2,'omitnan');

meanRd_maxcatchHF = mean(Rd_maxcatchHF,2,'omitnan');
stdRd_maxcatchHF = std(Rd_maxcatchHF,0,2,'omitnan');


%computation of limits 
for i=1:length(Rd_LFcatchmin)
    %friction catches
    ul_Rd_LFcatchmin(i) = meanRd_LFcatchmin(i) + stdRd_LFcatchmin(i);
    ll_Rd_LFcatchmin(i) = meanRd_LFcatchmin(i) - stdRd_LFcatchmin(i);
    
    ul_Rd_LFcatchmax(i) = meanRd_LFcatchmax(i) + stdRd_LFcatchmax(i);
    ll_Rd_LFcatchmax(i) = meanRd_LFcatchmax(i) - stdRd_LFcatchmax(i);
    
    ul_Rd_HFcatchmin(i) = meanRd_HFcatchmin(i) + stdRd_HFcatchmin(i);
    ll_Rd_HFcatchmin(i) = meanRd_HFcatchmin(i) - stdRd_HFcatchmin(i);
    
    ul_Rd_HFcatchmax(i) = meanRd_HFcatchmax(i) + stdRd_HFcatchmax(i);
    ll_Rd_HFcatchmax(i) = meanRd_HFcatchmax(i) - stdRd_HFcatchmax(i);
    
    %weight catches 
    ul_Rd_mincatchLF(i) = meanRd_mincatchLF(i) + stdRd_mincatchLF(i);
    ll_Rd_mincatchLF(i) = meanRd_mincatchLF(i) - stdRd_mincatchLF(i);
    
    ul_Rd_mincatchHF(i) = meanRd_mincatchHF(i) + stdRd_mincatchHF(i);
    ll_Rd_mincatchHF(i) = meanRd_mincatchHF(i) - stdRd_mincatchHF(i);
    
    ul_Rd_maxcatchLF(i) = meanRd_maxcatchLF(i) + stdRd_maxcatchLF(i);
    ll_Rd_maxcatchLF(i) = meanRd_maxcatchLF(i) - stdRd_maxcatchLF(i);
    
    ul_Rd_maxcatchHF(i) = meanRd_maxcatchHF(i) + stdRd_maxcatchHF(i);
    ll_Rd_maxcatchHF(i) = meanRd_maxcatchHF(i) - stdRd_maxcatchHF(i);
    
end

%% Moment of significative difference between the curves (Mixed-effect model)
%%GLME for friction catch trials
friction_pvalues = [];
friction_indexes = [];
friction_signDiff = [];

% LF catch vs HF normal under max weight
[pval_LFcatchmax,friction_pvalue,friction_index,sign_Rd] = compute_STglme(STnames.',stnorm_LFcatchmax,stnorm_maxHF,meanRd_LFcatchmax,length(bl_LFcatchmax),length(bl_maxHF),npic-1);
friction_pvalues(1) = friction_pvalue;
friction_indexes(1) = friction_index;
friction_signDiff(1) = sign_Rd;

% LF catch vs HF normal under min weight
[pval_LFcatchmin,friction_pvalue,friction_index,sign_Rd] = compute_STglme(STnames.',stnorm_LFcatchmin,stnorm_minHF,meanRd_LFcatchmin,length(bl_LFcatchmin),length(bl_minHF),npic-1);
friction_pvalues(2) = friction_pvalue;
friction_indexes(2) = friction_index;
friction_signDiff(2) = sign_Rd;

% HF catch vs LF normal under max weight
[pval_HFcatchmax,friction_pvalue,friction_index,sign_Rd] = compute_STglme(STnames.',stnorm_HFcatchmax,stnorm_maxLF,meanRd_HFcatchmax,length(bl_HFcatchmax),length(bl_maxLF),npic-1);
friction_pvalues(3) = friction_pvalue;
friction_indexes(3) = friction_index;
friction_signDiff(3) = sign_Rd;

% HF catch vs LF normal under min weight
[pval_HFcatchmin,friction_pvalue,friction_index,sign_Rd] = compute_STglme(STnames.',stnorm_HFcatchmin,stnorm_minLF,meanRd_HFcatchmin,length(bl_HFcatchmin),length(bl_minLF),npic-1);
friction_pvalues(4) = friction_pvalue;
friction_indexes(4) = friction_index;
friction_signDiff(4) = sign_Rd;


%%GLME for weight catch trials
weight_pvalues = [];
weight_indexes = [];
weight_signDiff = [];

% max catch vs min normal under low friction
[pval_maxcatchLF,weight_pvalue,weight_index,sign_Rd] = compute_STglme(STnames.',stnorm_maxcatchLF,stnorm_minLF,meanRd_maxcatchLF,length(bl_maxcatchLF),length(bl_minLF),npic-1);
weight_pvalues(1) = weight_pvalue;
weight_indexes(1) = weight_index;
weight_signDiff(1) = sign_Rd;

% max catch vs min normal under high friction
[pval_maxcatchHF,weight_pvalue,weight_index,sign_Rd] = compute_STglme(STnames.',stnorm_maxcatchHF,stnorm_minHF,meanRd_maxcatchHF,length(bl_maxcatchHF),length(bl_minHF),npic-1);
weight_pvalues(2) = weight_pvalue;
weight_indexes(2) = weight_index;
weight_signDiff(2) = sign_Rd;

% min catch vs max normal under low friction
[pval_mincatchLF,weight_pvalue,weight_index,sign_Rd] = compute_STglme(STnames.',stnorm_mincatchLF,stnorm_maxLF,meanRd_mincatchLF,length(bl_mincatchLF),length(bl_maxLF),npic-1);
weight_pvalues(3) = weight_pvalue;
weight_indexes(3) = weight_index;
weight_signDiff(3) = sign_Rd;

% min catch vs max normal under high friction
[pval_mincatchHF,weight_pvalue,weight_index,sign_Rd] = compute_STglme(STnames.',stnorm_mincatchHF,stnorm_maxHF,meanRd_mincatchHF,length(bl_mincatchHF),length(bl_maxHF),npic-1);
weight_pvalues(4) = weight_pvalue;
weight_indexes(4) = weight_index;
weight_signDiff(4) = sign_Rd;

%% Time conversion for x-axis of plots 

timealigned=(minimum/conv_factor) * (3.8/npic) %time of alignement of the LF curves (3.8 stands for the 3.8seconds of recording, corresponding term = timestep)
x=-timealigned:(3.8/npic):(-timealigned+2.515) %time steps for graphs

%% Time conversion of significative moments
disp(weight_indexes)

for i=1:4
    if friction_indexes(i) ~= 0 && friction_indexes(i)<120
        friction_time(i) = x(friction_indexes(i))+timealigned;
    else 
        friction_time(i) = nan;
    end
     if weight_indexes(i) ~=0 && weight_indexes(i)<120
        weight_time(i) = x(weight_indexes(i));
    else 
        weight_time(i) = nan;
    end
end 

%% Friction catch plots (2x2 plots with friction catches)
%{
figure(1);

subplot(2,2,1)
y1=enmean_LFcatchmax(1:120).';
y2=enmean_maxHF(1:120).';
plot(x,y1,'r--',x,y2,'b','LineWidth',1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_stnorm_LFcatchmax(1:120) fliplr(ll_stnorm_LFcatchmax(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_maxHF(1:120) fliplr(ll_stnorm_maxHF(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
title('Maximal weight')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
xlim([-timealigned 2]);
legend('Low friction catch', 'High friction normal');

subplot(2,2,2)
y3=enmean_LFcatchmin(1:120).';
y4=enmean_minHF(1:120).';
plot(x,y3,'r--',x,y4,'b','LineWidth',1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_stnorm_LFcatchmin(1:120) fliplr(ll_stnorm_LFcatchmin(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_minHF(1:120) fliplr(ll_stnorm_minHF(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
title('Minimal weight')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
xlim([-timealigned 2]);
legend('Low friction catch', 'High friction normal');

subplot(2,2,3)
y5=enmean_maxLF(1:120).';
y6=enmean_HFcatchmax(1:120).';
plot(x,y5,'r',x,y4,'b--','LineWidth',1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_stnorm_HFcatchmax(1:120) fliplr(ll_stnorm_HFcatchmax(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_maxLF(1:120) fliplr(ll_stnorm_maxLF(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
xlim([-timealigned 2]);
legend('Low friction normal', 'High friction catch');

subplot(2,2,4)
y7=enmean_minLF(1:120).';
y8=enmean_HFcatchmin(1:120).';
plot(x,y7,'r',x,y8,'b--','LineWidth',1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_stnorm_HFcatchmin(1:120) fliplr(ll_stnorm_HFcatchmin(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_minLF(1:120) fliplr(ll_stnorm_minLF(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
xlim([-timealigned 2]);
legend('Low friction normal', 'High friction catch');

%}                        
%% Weight catch plots  (2x2 plots with weight catches)
%{
figure(2);

subplot(2,2,1)
y1=enmean_maxcatchLF(1:120).';
y2=enmean_minLF(1:120).';
plot(x,y1,'r--',x,y2,'b','LineWidth',1.5)
figure(2);hold on;
fill([x fliplr(x)], [ul_stnorm_maxcatchLF(1:120) fliplr(ll_stnorm_maxcatchLF(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_minLF(1:120) fliplr(ll_stnorm_minLF(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
title('Low friction')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
xlim([-timealigned 2]);
legend('Maximal weight catch', 'Minimal weight normal');

subplot(2,2,2)
y3=enmean_maxcatchHF(1:120).';
y4=enmean_minHF(1:120).';
plot(x,y3,'r--',x,y4,'b','LineWidth',1.5)
figure(2);hold on;
fill([x fliplr(x)], [ul_stnorm_maxcatchHF(1:120) fliplr(ll_stnorm_maxcatchHF(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_minHF(1:120) fliplr(ll_stnorm_minHF(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
title('High friction')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
xlim([-timealigned 2]);
legend('Maximal weight catch', 'Minimal weight normal');

subplot(2,2,3)
y5=enmean_maxLF(1:120).';
y6=enmean_mincatchLF(1:120).';
plot(x,y5,'r',x,y4,'b--','LineWidth',1.5)
figure(2);hold on;
fill([x fliplr(x)], [ul_stnorm_mincatchLF(1:120) fliplr(ll_stnorm_mincatchLF(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_maxLF(1:120) fliplr(ll_stnorm_maxLF(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
xlim([-timealigned 2]);
legend('Maximal weight normal', 'Minimal weight catch');

subplot(2,2,4)
y7=enmean_maxHF(1:120).';
y8=enmean_mincatchHF(1:120).';
plot(x,y7,'r',x,y8,'b--','LineWidth',1.5)
figure(2);hold on;
fill([x fliplr(x)], [ul_stnorm_maxHF(1:120) fliplr(ll_stnorm_maxHF(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_mincatchHF(1:120) fliplr(ll_stnorm_mincatchHF(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
legend('', '')
xlabel('Time [s]');
ylabel('Normalized Strain Rate [-]');
xlim([-timealigned 2]);
legend('Maximal weight normal', 'Minimal weight catch');             
%}

%% Low friction catch plots (2x2 plots with strain norm curves ans Rd strain curves) 
pval_lim = 10^(-5); %lower limit for the pvalue plots 
stlim = 0.35; %upper limit for strain plots 
%Low friction catch  
figure(3); 
subplot(3,2,1)
y1 = enmean_LFcatchmax(1:120).';
y2 = enmean_maxHF(1:120).';
plot(x,y1,'r--', x, y2, 'b', 'LineWidth', 1.5)
figure(3);hold on;
fill([x fliplr(x)], [ul_stnorm_LFcatchmax(1:120) fliplr(ll_stnorm_LFcatchmax(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_maxHF(1:120) fliplr(ll_stnorm_maxHF(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(3);hold on;
if friction_indexes(1)~=0 && friction_indexes(1)<120
    plot([x(friction_indexes(1)) x(friction_indexes(1))],[-1 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Maximal weight')
ylabel('Strain rate norm [-]');
xlim([-timealigned 2]);
ylim([-0.02 stlim]);
legend('Low friction catch', 'High friction normal');
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,2)
y3 = enmean_LFcatchmin(1:120).';
y4 = enmean_minHF(1:120).';
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
figure(3);hold on;
fill([x fliplr(x)], [ul_stnorm_LFcatchmin(1:120) fliplr(ll_stnorm_LFcatchmin(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_minHF(1:120) fliplr(ll_stnorm_minHF(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
if friction_indexes(2)~=0 && friction_indexes(2)<120
    plot([x(friction_indexes(2)) x(friction_indexes(2))],[-1 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('Minimal weight')
ylabel('Strain rate norm [-]');
xlim([-timealigned 2]);
ylim([-0.02 stlim]);
legend('Low friction catch', 'High friction normal');
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,3)
y5 = meanRd_LFcatchmax(1:120).';
plot(x,y5,'g','LineWidth', 1.5)
figure(3);hold on;
fill([x fliplr(x)], [ul_Rd_LFcatchmax(1:120) fliplr(ll_Rd_LFcatchmax(1:120))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(3);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta Strain (%)');
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,4)
y6 = meanRd_LFcatchmin(1:120).';
plot(x,y6,'g','LineWidth', 1.5)
figure(3);hold on;
fill([x fliplr(x)], [ul_Rd_LFcatchmin(1:120) fliplr(ll_Rd_LFcatchmin(1:120))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(3);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta Strain (%)');
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,5)
semilogy(x,pval_LFcatchmax(1:120),'LineWidth',1.5)
figure(3); hold on;
plot([-timealigned 2],[0.001 0.001], 'r--','LineWidth',1)
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,6)
semilogy(x,pval_LFcatchmin(1:120),'LineWidth',1.5)
figure(3); hold on;
plot([-timealigned 2],[0.001 0.001], 'r--','LineWidth',1)
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

%% High friction catch plots (2x2 plots with strain norm curves ans Rd strain curves) 
pval_lim = 10^(-5);

%High friction catch 
figure(4); 
subplot(3,2,1)
y1 = enmean_maxLF(1:120).';
y2 = enmean_HFcatchmax(1:120).';
plot(x,y1,'r', x, y2, 'b--', 'LineWidth', 1.5)
figure(4);hold on;
fill([x fliplr(x)], [ul_stnorm_HFcatchmax(1:120) fliplr(ll_stnorm_HFcatchmax(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_maxLF(1:120) fliplr(ll_stnorm_maxLF(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(4);hold on;
if friction_indexes(3)~=0 && friction_indexes(3)<120
    plot([x(friction_indexes(3)) x(friction_indexes(3))],[-1 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Maximal weight')
ylabel('Strain rate norm [-]');
xlim([-timealigned 2]);
ylim([-0.02 stlim]);
legend('Low friction normal', 'High friction catch');
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,2)
y3 = enmean_minLF(1:120).';
y4 = enmean_HFcatchmin(1:120).';
plot(x,y3,'r',x,y4,'b--','LineWidth', 1.5)
figure(4);hold on;
fill([x fliplr(x)], [ul_stnorm_HFcatchmin(1:120) fliplr(ll_stnorm_HFcatchmin(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_minLF(1:120) fliplr(ll_stnorm_minLF(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(4);hold on;
if friction_indexes(4)~=0 && friction_indexes(4)<120
    plot([x(friction_indexes(4)) x(friction_indexes(4))],[-1 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('Minimal weight')
ylabel('Strain rate norm [-]');
xlim([-timealigned 2]);
ylim([-0.02 stlim]);
legend('Low friction normal', 'High friction catch');
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,3)
y5 = meanRd_HFcatchmax(1:120).';
plot(x,y5,'g','LineWidth', 1.5)
figure(4);hold on;
fill([x fliplr(x)], [ul_Rd_HFcatchmax(1:120) fliplr(ll_Rd_HFcatchmax(1:120))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(4);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta Strain (%)');
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,4)
y6 = meanRd_HFcatchmin(1:120).';
plot(x,y6,'g','LineWidth', 1.5)
figure(4);hold on;
fill([x fliplr(x)], [ul_Rd_HFcatchmin(1:120) fliplr(ll_Rd_HFcatchmin(1:120))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(4);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta Strain (%)');
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,5)
semilogy(x,pval_HFcatchmax(1:120),'LineWidth',1.5)
figure(4); hold on;
plot([-timealigned 2],[0.001 0.001], 'r--','LineWidth',1)
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,6)
semilogy(x,pval_HFcatchmin(1:120),'LineWidth',1.5)
figure(4); hold on;
plot([-timealigned 2],[0.001 0.001], 'r--','LineWidth',1)
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

%% Max weight catch plots (2x2 plots with strain norm curves ans Rd strain curves) 

figure(5); 
subplot(3,2,1)
y1 = enmean_maxcatchLF(1:120).';
y2 = enmean_minLF(1:120).';
plot(x,y1,'r--', x, y2, 'b', 'LineWidth', 1.5)
figure(5);hold on;
fill([x fliplr(x)], [ul_stnorm_maxcatchLF(1:120) fliplr(ll_stnorm_maxcatchLF(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_minLF(1:120) fliplr(ll_stnorm_minLF(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(5);hold on;
if weight_indexes(1)~=0 && weight_indexes(1)<120
    plot([x(weight_indexes(1)) x(weight_indexes(1))],[-1 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Low Friction')
ylabel('Strain rate norm [-]');
xlim([-timealigned 2]);
ylim([-0.02 stlim]);
legend('Maximal weight catch', 'Minimal weight normal');
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,2)
y3 = enmean_maxcatchHF(1:120).';
y4 = enmean_minHF(1:120).';
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
figure(5);hold on;
fill([x fliplr(x)], [ul_stnorm_maxcatchHF(1:120) fliplr(ll_stnorm_maxcatchHF(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_minHF(1:120) fliplr(ll_stnorm_minHF(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(5);hold on;
if weight_indexes(2)~=0 && weight_indexes(2)<120
    plot([x(weight_indexes(2)) x(weight_indexes(2))],[-1 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('High Friction')
ylabel('Strain rate norm [-]');
xlim([-timealigned 2]);
ylim([-0.02 stlim]);
legend('Maximal weight catch', 'Minimal weight normal');
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,3)
y5 = meanRd_maxcatchLF(1:120).';
plot(x,y5,'g','LineWidth', 1.5)
figure(5);hold on;
fill([x fliplr(x)], [ul_Rd_maxcatchLF(1:120) fliplr(ll_Rd_maxcatchLF(1:120))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(5);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta Strain (%)');
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,4)
y6 = meanRd_maxcatchHF(1:120).';
plot(x,y6,'g','LineWidth', 1.5)
figure(5);hold on;
fill([x fliplr(x)], [ul_Rd_maxcatchHF(1:120) fliplr(ll_Rd_maxcatchHF(1:120))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(5);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta Strain (%)');
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,5)
semilogy(x,pval_maxcatchLF(1:120),'LineWidth',1.5)
figure(5); hold on;
plot([-timealigned 2],[0.001 0.001], 'r--','LineWidth',1)
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,6)
semilogy(x,pval_maxcatchHF(1:120),'LineWidth',1.5)
figure(5); hold on;
plot([-timealigned 2],[0.001 0.001], 'r--','LineWidth',1)
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

%% Min weight catch plots (2x2 plots with strain norm curves ans Rd strain curves) 

figure(6); 
subplot(3,2,1)
y1 = enmean_maxLF(1:120).';
y2 = enmean_mincatchLF(1:120).';
plot(x,y1,'r', x, y2, 'b--', 'LineWidth', 1.5)
figure(6);hold on;
fill([x fliplr(x)], [ul_stnorm_mincatchLF(1:120) fliplr(ll_stnorm_mincatchLF(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_maxLF(1:120) fliplr(ll_stnorm_maxLF(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(6);hold on;
if weight_indexes(3)~=0 && weight_indexes(3)<120
    plot([x(weight_indexes(3)) x(weight_indexes(3))],[-1 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Low Friction')
ylabel('Strain rate norm [-]');
xlim([-timealigned 2]);
ylim([-0.02 stlim]);
legend('Maximal weight normal', 'Minimal weight catch');
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,2)
y3 = enmean_maxHF(1:120).';
y4 = enmean_mincatchHF(1:120).';
plot(x,y3,'r',x,y4,'b--','LineWidth', 1.5)
figure(6);hold on;
fill([x fliplr(x)], [ul_stnorm_maxHF(1:120) fliplr(ll_stnorm_maxHF(1:120))], 'r', 'FaceAlpha', 0.2,'LineStyle', "none")
fill([x fliplr(x)], [ul_stnorm_mincatchHF(1:120) fliplr(ll_stnorm_mincatchHF(1:120))], 'b', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(6);hold on;
if weight_indexes(4)~=0 && weight_indexes(4)<120
    plot([x(weight_indexes(4)) x(weight_indexes(4))],[-1 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('High Friction')
ylabel('Strain rate norm [-]');
xlim([-timealigned 2]);
ylim([-0.02 stlim]);
legend('Maximal weight normal', 'Minimal weight catch');
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,3)
y5 = meanRd_mincatchLF(1:120).';
plot(x,y5,'g','LineWidth', 1.5)
figure(6);hold on;
fill([x fliplr(x)], [ul_Rd_mincatchLF(1:120) fliplr(ll_Rd_mincatchLF(1:120))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(6);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta Strain (%)');
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,4)
y6 = meanRd_mincatchHF(1:120).';
plot(x,y6,'g','LineWidth', 1.5)
figure(6);hold on;
fill([x fliplr(x)], [ul_Rd_mincatchHF(1:120) fliplr(ll_Rd_mincatchHF(1:120))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(6);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta Strain (%)');
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,5)
semilogy(x,pval_mincatchLF(1:120),'LineWidth',1.5)
figure(6); hold on;
plot([-timealigned 2],[0.001 0.001], 'r--','LineWidth',1)
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,6)
semilogy(x,pval_mincatchHF(1:120),'LineWidth',1.5)
figure(6); hold on;
plot([-timealigned 2],[0.001 0.001], 'r--','LineWidth',1)
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

end
