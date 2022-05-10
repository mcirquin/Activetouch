function [LF_pvalues,LF_time,LF_signDiff, GF_pvalues,GF_time,GF_signDiff] = plotGFdiff_frictioncatch(alignedLFtable, alignedGFtable, tsteps, nparticipants,minimum)

%% Determine participants (for mixed effect model)
if nparticipants == 10
    names=["ARommel", "ASalden" ; "BDelhaye" ; "FSchiltz"  ; "GBrandsteert" ; "JDommisse"; "LColmant"; "S_Vandergooten"; "SLedoux" ; "VFischer"];
elseif nparticipants == 15
    names=["AParache" ; "ARommel" ; "ASalden" ; "BDelhaye" ; "DDoumont" ; "FSchiltz" ; "GBrandsteert" ; "JDelforge"; "JDommisse"; "LColmant"; "MBronchart"; "MDausort"; "S_Vandergooten"; "SLedoux" ; "VFischer"];
elseif nparticipants == 13
    names=["ADommisse" ; "AMarechal" ; "ATikke" ; "AWertelaers" ; "BJonnart" ; "CBedford"; "CZwaenepoel" ; "ESchoonjans"; "ESpringel"; "LCirquin"; "MJMaldague"; "MRennesson"; "PLefèvre"];
else
    names=["ADommisse" ; "AMarechal" ; "ATikke" ; "AWertelaers" ; "BJonnart" ; "CZwaenepoel" ; "ESchoonjans"; "ESpringel"; "LCirquin"; "MJMaldague"; "MRennesson"; "PLefèvre"];
end


%% Friction catch low friction (high to low friction)
%low friction catch under max weight 
nessais1=2;
lfmaxcatchLF1=zeros(tsteps-1999,nessais1*nparticipants);
gfmaxcatchLF1=zeros(tsteps-1999,nessais1*nparticipants);

lfmaxcatchLF1 = alignedLFtable(:,1:108:end);  
lfmaxcatchLF1 = [lfmaxcatchLF1 alignedLFtable(:,13:108:end)];
gfmaxcatchLF1=alignedGFtable(:,1:108:end);
gfmaxcatchLF1=[gfmaxcatchLF1 alignedGFtable(:,13:108:end)];
%gfmaxcatchLF1=[gfmaxcatchLF1 alignedGFtable(:,61:108:end)];
%gfmaxcatchLF1=[gfmaxcatchLF1 alignedGFtable(:,79:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais1
        subjects_lfmaxcatchLF1(:,k) =  lfmaxcatchLF1(:,j);   %matrix with trials of a same participant
        subjects_gfmaxcatchLF1(:,k) =  gfmaxcatchLF1(:,j);   %matrix with trials of a same participant
        subj_meanlfmaxcatchLF1(:,i) = mean(subjects_lfmaxcatchLF1,2); %mean of the trials (for each timestep)
        subj_meangfmaxcatchLF1(:,i) = mean(subjects_gfmaxcatchLF1,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end


%high friction adaptation under max weight 
nessais2=18;
lfmaxadaptHF1=zeros(tsteps-1999,nessais2*nparticipants);
gfmaxadaptHF1=zeros(tsteps-1999,nessais2*nparticipants);

lfmaxadaptHF1=alignedLFtable(:,26:108:end);
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,27:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,28:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,56:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,74:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,75:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,98:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,99:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,10:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,11:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,12:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,22:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,23:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,34:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,41:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,42:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,90:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,108:108:end)];

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
        subjects_lfmaxadaptHF1(:,k) =  lfmaxadaptHF1(:,j);   %matrix with trials of a same participant
        subjects_gfmaxadaptHF1(:,k) =  gfmaxadaptHF1(:,j);   %matrix with trials of a same participant
        subj_meanlfmaxadaptHF1(:,i) = mean(subjects_lfmaxadaptHF1,2);
        subj_meangfmaxadaptHF1(:,i) = mean(subjects_gfmaxadaptHF1,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end

%low friction catch under min weight 
nessais3=1;
lfmincatchLF1=zeros(tsteps-1999,nessais3*nparticipants);
gfmincatchLF1=zeros(tsteps-1999,nessais3*nparticipants);

lfmincatchLF1=alignedLFtable(:,31:108:end);

gfmincatchLF1=alignedGFtable(:,31:108:end);
%gfmincatchLF1=[gfmincatchLF1 alignedGFtable(:,43:108:end)];
%gfmincatchLF1=[gfmincatchLF1 alignedGFtable(:,91:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais3
        subjects_lfmincatchLF1(:,k) =  lfmincatchLF1(:,j);
        subjects_gfmincatchLF1(:,k) =  gfmincatchLF1(:,j);   %matrix with trials of a same participant
        subj_meanlfmincatchLF1(:,i) = mean(subjects_lfmincatchLF1,2);
        subj_meangfmincatchLF1(:,i) = mean(subjects_gfmincatchLF1,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end

%high friction adaptation under min weight 
nessais4=18;
gfminadaptHF1=zeros(tsteps-1999,nessais4*nparticipants);
lfminadaptHF1=zeros(tsteps-1999,nessais4*nparticipants);

lfminadaptHF1=alignedLFtable(:,30:108:end);
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,58:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,59:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,60:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,77:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,78:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,101:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,102:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,8:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,20:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,38:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,39:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,86:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,87:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,88:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,104:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,105:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,106:108:end)];


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
        subjects_lfminadaptHF1(:,k) =  lfminadaptHF1(:,j);
        subjects_gfminadaptHF1(:,k) =  gfminadaptHF1(:,j);   %matrix with trials of a same participant
        subj_meanlfminadaptHF1(:,i) = mean(subjects_lfminadaptHF1,2);
        subj_meangfminadaptHF1(:,i) = mean(subjects_gfminadaptHF1,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end


%% Friction catch high friction (low to high friction)

%high friction catch under max weight 
nessais5=2;
lfmaxcatchHF2=zeros(tsteps-1999,nessais5*nparticipants);
gfmaxcatchHF2=zeros(tsteps-1999,nessais5*nparticipants);

lfmaxcatchHF2=alignedLFtable(:,73:108:end);
lfmaxcatchHF2=[lfmaxcatchHF2 alignedLFtable(:,97:108:end)];

%gfmaxcatchHF2=alignedGFtable(:,55:108:end);
gfmaxcatchHF2=alignedGFtable(:,73:108:end);
gfmaxcatchHF2=[gfmaxcatchHF2 alignedGFtable(:,97:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais5
        subjects_lfmaxcatchHF2(:,k) =  lfmaxcatchHF2(:,j); 
        subjects_gfmaxcatchHF2(:,k) =  gfmaxcatchHF2(:,j);   %matrix with trials of a same participant
        subj_meanlfmaxcatchHF2(:,i) = mean(subjects_lfmaxcatchHF2,2);
        subj_meangfmaxcatchHF2(:,i) = mean(subjects_gfmaxcatchHF2,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end

%low friction adaptation under max weight 
nessais6=20;
lfmaxadaptLF2=zeros(tsteps-1999,nessais6*nparticipants);
gfmaxadaptLF2=zeros(tsteps-1999,nessais6*nparticipants);

lfmaxadaptLF2=alignedLFtable(:,2:108:end);
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,3:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,14:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,15:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,16:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,50:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,62:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,63:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,80:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,81:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,82:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,34:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,35:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,36:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,47:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,48:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,72:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,94:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,95:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,96:108:end)];


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
        subjects_lfmaxadaptLF2(:,k) =  lfmaxadaptLF2(:,j);  
        subjects_gfmaxadaptLF2(:,k) =  gfmaxadaptLF2(:,j);   %matrix with trials of a same participant
        subj_meanlfmaxadaptLF2(:,i) = mean(subjects_lfmaxadaptLF2,2);
        subj_meangfmaxadaptLF2(:,i) = mean(subjects_gfmaxadaptLF2,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end

%high friction catch under min weight 
nessais7=3;
gfmincatchHF2=zeros(tsteps-1999,nessais7*nparticipants);
lfmincatchHF2=zeros(tsteps-1999,nessais7*nparticipants);

lfmincatchHF2=alignedLFtable(:,7:108:end);
lfmincatchHF2=[lfmincatchHF2 alignedLFtable(:,19:108:end)];
%lfmincatchHF2=[lfmincatchHF2 alignedLFtable(:,37:108:end)];
lfmincatchHF2=[lfmincatchHF2 alignedLFtable(:,85:108:end)];

gfmincatchHF2=alignedGFtable(:,7:108:end);
gfmincatchHF2=[gfmincatchHF2 alignedGFtable(:,19:108:end)];
%gfmincatchHF2=[gfmincatchHF2 alignedGFtable(:,37:108:end)];
gfmincatchHF2=[gfmincatchHF2 alignedGFtable(:,85:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais7
        subjects_lfmincatchHF2(:,k) =  lfmincatchHF2(:,j);
        subjects_gfmincatchHF2(:,k) =  gfmincatchHF2(:,j);   %matrix with trials of a same participant
        subj_meanlfmincatchHF2(:,i) = mean(subjects_lfmincatchHF2,2);
        subj_meangfmincatchHF2(:,i) = mean(subjects_gfmincatchHF2,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end


%low friction adaptation under min weight 
nessais8=16;
gfminadaptLF2=zeros(tsteps-1999,nessais8*nparticipants);
lfminadaptLF2=zeros(tsteps-1999,nessais8*nparticipants);

lfminadaptLF2=alignedLFtable(:,5:108:end);
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,6:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,18:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,52:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,53:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,54:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,65:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,66:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,84:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,32:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,44:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,45:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,68:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,69:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,70:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,92:108:end)];

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
        subjects_lfminadaptLF2(:,k) =  lfminadaptLF2(:,j);
        subjects_gfminadaptLF2(:,k) =  gfminadaptLF2(:,j);   %matrix with trials of a same participant
        subj_meanlfminadaptLF2(:,i) = mean(subjects_lfminadaptLF2,2); 
        subj_meangfminadaptLF2(:,i) = mean(subjects_gfminadaptLF2,2); %mean of the trials (for each timestep)
        k=k+1;
    end
end

%% Mean temporal GF curves 

% LF
meanlfmaxcatchLF1=mean(lfmaxcatchLF1,2);
meanlfmaxadaptHF1=mean(lfmaxadaptHF1,2);

meanlfmincatchLF1=mean(lfmincatchLF1,2);
meanlfminadaptHF1=mean(lfminadaptHF1,2);

meanlfmaxcatchHF2=mean(lfmaxcatchHF2,2);
meanlfmaxadaptLF2=mean(lfmaxadaptLF2,2);

meanlfmincatchHF2=mean(lfmincatchHF2,2);
meanlfminadaptLF2=mean(lfminadaptLF2,2);

% GF
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
        Rd_lfLFmaxcatch(j,i) = ((subj_meanlfmaxcatchLF1(j,i) - subj_meanlfmaxadaptHF1(j,i)) /min(subj_meanlfmaxcatchLF1(j,i),subj_meanlfmaxadaptHF1(j,i)))*100;
        Rd_gfLFmaxcatch(j,i) = ((subj_meangfmaxcatchLF1(j,i) - subj_meangfmaxadaptHF1(j,i)) /min(subj_meangfmaxcatchLF1(j,i),subj_meangfmaxadaptHF1(j,i)))*100;
    end
end

% Catch low friction vs adapt high friction under min weight
for i=1:nparticipants
    for j=1:tsteps-1999
        Rd_lfLFmincatch(j,i) = ((subj_meanlfmincatchLF1(j,i) - subj_meanlfminadaptHF1(j,i)) /min(subj_meanlfmincatchLF1(j,i),subj_meanlfminadaptHF1(j,i)))*100;
        Rd_gfLFmincatch(j,i) = ((subj_meangfmincatchLF1(j,i) - subj_meangfminadaptHF1(j,i)) /min(subj_meangfmincatchLF1(j,i),subj_meangfminadaptHF1(j,i)))*100;
    end
end

% Catch high friction vs adapt low friction under max weight
for i=1:nparticipants
    for j=1:tsteps-1999
        Rd_lfHFmaxcatch(j,i) = ((subj_meanlfmaxcatchHF2(j,i) - subj_meanlfmaxadaptLF2(j,i))/min(subj_meanlfmaxadaptLF2(j,i),subj_meanlfmaxcatchHF2(j,i)))*100;
        Rd_gfHFmaxcatch(j,i) = ((subj_meangfmaxcatchHF2(j,i) - subj_meangfmaxadaptLF2(j,i))/min(subj_meangfmaxadaptLF2(j,i),subj_meangfmaxcatchHF2(j,i)))*100;
    end
end

% Catch high friction vs adapt low friction under min weight
for i=1:nparticipants
    for j=1:tsteps-1999
        Rd_lfHFmincatch(j,i) = ((subj_meanlfmincatchHF2(j,i) - subj_meanlfminadaptLF2(j,i)) /min(subj_meanlfminadaptLF2(j,i),subj_meanlfmincatchHF2(j,i)))*100;
        Rd_gfHFmincatch(j,i) = ((subj_meangfmincatchHF2(j,i) - subj_meangfminadaptLF2(j,i)) /min(subj_meangfminadaptLF2(j,i),subj_meangfmincatchHF2(j,i)))*100;
    end
end

%% Mean and standard deviations of Rd of subjects 

% Relative differences in LF

Rd_meanlfLFmaxcatch=mean(Rd_lfLFmaxcatch,2);
Rd_stdlfLFmaxcatch=std(Rd_lfLFmaxcatch,0,2);

Rd_meanlfLFmincatch=mean(Rd_lfLFmincatch,2);
Rd_stdlfLFmincatch=std(Rd_lfLFmincatch,0,2);

Rd_meanlfHFmaxcatch=mean(Rd_lfHFmaxcatch,2);
Rd_stdlfHFmaxcatch=std(Rd_lfHFmaxcatch,0,2);

Rd_meanlfHFmincatch=mean(Rd_lfHFmincatch,2);
Rd_stdlfHFmincatch=std(Rd_lfHFmincatch,0,2);

% Relative differences in GF

Rd_meangfLFmaxcatch=mean(Rd_gfLFmaxcatch,2);
Rd_stdgfLFmaxcatch=std(Rd_gfLFmaxcatch,0,2);

Rd_meangfLFmincatch=mean(Rd_gfLFmincatch,2);
Rd_stdgfLFmincatch=std(Rd_gfLFmincatch,0,2);

Rd_meangfHFmaxcatch=mean(Rd_gfHFmaxcatch,2);
Rd_stdgfHFmaxcatch=std(Rd_gfHFmaxcatch,0,2);

Rd_meangfHFmincatch=mean(Rd_gfHFmincatch,2);
Rd_stdgfHFmincatch=std(Rd_gfHFmincatch,0,2);

%computation of the boundaries
for i=1:tsteps-1999
    
    ul_lfLFmaxcatch(i) = Rd_meanlfLFmaxcatch(i) + Rd_stdlfLFmaxcatch(i); 
    ll_lfLFmaxcatch(i) = Rd_meanlfLFmaxcatch(i) - Rd_stdlfLFmaxcatch(i); 
    ul_gfLFmaxcatch(i) = Rd_meangfLFmaxcatch(i) + Rd_stdgfLFmaxcatch(i); 
    ll_gfLFmaxcatch(i) = Rd_meangfLFmaxcatch(i) - Rd_stdgfLFmaxcatch(i); 
    
    ul_lfLFmincatch(i) = Rd_meanlfLFmincatch(i) + Rd_stdlfLFmincatch(i); 
    ll_lfLFmincatch(i) = Rd_meanlfLFmincatch(i) - Rd_stdlfLFmincatch(i);
    ul_gfLFmincatch(i) = Rd_meangfLFmincatch(i) + Rd_stdgfLFmincatch(i); 
    ll_gfLFmincatch(i) = Rd_meangfLFmincatch(i) - Rd_stdgfLFmincatch(i); 
    
    ul_lfHFmaxcatch(i) = Rd_meanlfHFmaxcatch(i) + Rd_stdlfHFmaxcatch(i); 
    ll_lfHFmaxcatch(i) = Rd_meanlfHFmaxcatch(i) - Rd_stdlfHFmaxcatch(i); 
    ul_gfHFmaxcatch(i) = Rd_meangfHFmaxcatch(i) + Rd_stdgfHFmaxcatch(i); 
    ll_gfHFmaxcatch(i) = Rd_meangfHFmaxcatch(i) - Rd_stdgfHFmaxcatch(i); 
    
    ul_lfHFmincatch(i) = Rd_meanlfHFmincatch(i) + Rd_stdlfHFmincatch(i); 
    ll_lfHFmincatch(i) = Rd_meanlfHFmincatch(i) - Rd_stdlfHFmincatch(i); 
    ul_gfHFmincatch(i) = Rd_meangfHFmincatch(i) + Rd_stdgfHFmincatch(i); 
    ll_gfHFmincatch(i) = Rd_meangfHFmincatch(i) - Rd_stdgfHFmincatch(i); 
    
end

%{
%% Moment of significative difference between the curves (T-test)
%x=10:0.005:12.495
timealigned=minimum*0.005-0.005; %temps où toutes les courbes sont alignées
x=-timealigned:0.005:(-timealigned+2.495); %500 pas de temps, le 0 se trouve à l'alignement des courbes

% T-tests for GF on means per subject 
GF_pvalues = [];
GF_indexes = [];
GF_signDiff = [];

%catch LF max weight vs HF adaptation max weight
[h1,p1] = ttest(subj_meangfmaxcatchLF1.',subj_meangfmaxadaptHF1.');%transposée des matrices pour faire le T-test dans le bon sens (pour chaque pas de temps)
for i = minimum:(tsteps-1999)
    if p1(i) < 0.05
        GF_pvalues(1) = p1(i);
        GF_indexes(1) = i;
        GF_signDiff(1) = Rd_meangfLFmaxcatch(i);
        break
    end 
end

%catch LF min weight vs HF adaptation min weight
[h2,p2] = ttest(subj_meangfmincatchLF1.',subj_meangfminadaptHF1.');
for i = minimum:(tsteps-1999)
    if p2(i) < 0.05
        GF_pvalues(2) = p2(i);
        GF_indexes(2) = i;
        GF_signDiff(2) = Rd_meangfLFmincatch(i);
        break
    end 
end


%catch HF max weight vs LF adaptation max weight
[h3,p3] = ttest(subj_meangfmaxcatchHF2.',subj_meangfmaxadaptLF2.');
for i = minimum:(tsteps-1999)
    if p3(i) < 0.05
        GF_pvalues(3) = p3(i);
        GF_indexes(3) = i;
        GF_signDiff(3) = Rd_meangfHFmaxcatch(i);
        break
    end 
end

%catch HF min weight vs LF adaptation min weight
[h4,p4] = ttest(subj_meangfmincatchHF2.',subj_meangfminadaptLF2.');
for i = minimum:(tsteps-1999)
    if p4(i) < 0.05
        GF_pvalues(4) = p4(i);
        GF_indexes(4) = i;
        GF_signDiff(4) = Rd_meangfHFmincatch(i);
        break
    end 
end

GF_time = x(GF_indexes);
%}

%% Moment of significative difference between the curves (Mixed-effect model)

conditions=["catch" ; "normal"];

LF_pvalues = [];
LF_indexes = [];
LF_signDiff = [];

GF_pvalues = [];
GF_indexes = [];
GF_signDiff = [];

%aligned time vector
%x=10:0.005:12.495; %vecteur temps
timealigned=minimum*0.005; %temps où toutes les courbes sont alignées
x=-timealigned:0.005:(-timealigned+2.495); %500 pas de temps, le 0 se trouve à l'alignement des courbes


% LF catch vs HF normal under max weight
nessais_maxcatchLF1 = nessais1+nessais2;
subjects_maxcatchLF1 = repelem(names,nessais_maxcatchLF1,1);
cond_maxcatchLF1 = repelem(conditions,[nessais1 nessais2]);
cond_maxcatchLF1 = repmat(cond_maxcatchLF1,nparticipants,1);


for i = 1:500
    LF_maxcatchLF1=[];
    GF_maxcatchLF1=[];
    for j=1:nparticipants
         LF_maxcatchLF1 = [LF_maxcatchLF1 lfmaxcatchLF1(i,j:nparticipants:end)];
         LF_maxcatchLF1 = [LF_maxcatchLF1 lfmaxadaptHF1(i,j:nparticipants:end)];
         GF_maxcatchLF1 = [GF_maxcatchLF1 gfmaxcatchLF1(i,j:nparticipants:end)];
         GF_maxcatchLF1 = [GF_maxcatchLF1 gfmaxadaptHF1(i,j:nparticipants:end)];
    end
    lfmaxcatchLF1_table = table(subjects_maxcatchLF1, cond_maxcatchLF1, LF_maxcatchLF1.');
    lfmaxcatchLF1_table.Properties.VariableNames = {'subjName','cond', 'LF'};
    glme_lfmaxcatchLF1 = fitglme(lfmaxcatchLF1_table,'LF ~ cond + (1|subjName)');
    pval_lfmaxcatchLF1(i)=glme_lfmaxcatchLF1.Coefficients.pValue(2);
    
    gfmaxcatchLF1_table = table(subjects_maxcatchLF1, cond_maxcatchLF1, GF_maxcatchLF1.');
    gfmaxcatchLF1_table.Properties.VariableNames = {'subjName','cond', 'GF'};
    glme_gfmaxcatchLF1 = fitglme(gfmaxcatchLF1_table,'GF ~ cond + (1|subjName)');
    pval_gfmaxcatchLF1(i)=glme_gfmaxcatchLF1.Coefficients.pValue(2);
end

for i=1:500
    if pval_lfmaxcatchLF1(i) < 0.001
        LF_pvalues(1) = pval_lfmaxcatchLF1(i);
        LF_indexes(1) = i;
        LF_signDiff(1) = ((meanlfmaxcatchLF1(i) - meanlfmaxadaptHF1(i))/min(meanlfmaxcatchLF1(i), meanlfmaxadaptHF1(i)))*100;
        break
    else
        LF_pvalues(1) = 0;
        LF_indexes(1) = 0;
        LF_signDiff(1) = 0;
    end 
end

for i=1:500
    if pval_gfmaxcatchLF1(i) < 0.001
        GF_pvalues(1) = pval_gfmaxcatchLF1(i);
        GF_indexes(1) = i;
        GF_signDiff(1) = ((meangfmaxcatchLF1(i) - meangfmaxadaptHF1(i))/min(meangfmaxcatchLF1(i),meangfmaxadaptHF1(i)))*100;
        break
    else
        GF_pvalues(1) = 0;
        GF_indexes(1) = 0;
        GF_signDiff(1) = 0; 
    end 
end

% LF catch vs HF normal under min weight

nessais_mincatchLF1 = nessais3+nessais4;
subjects_mincatchLF1 = repelem(names,nessais_mincatchLF1,1);
cond_mincatchLF1 = repelem(conditions,[nessais3 nessais4]);
cond_mincatchLF1 = repmat(cond_mincatchLF1,nparticipants,1);

for i = 1:500
    LF_mincatchLF1=[];
    GF_mincatchLF1=[];
    
    for j=1:nparticipants
         LF_mincatchLF1 = [LF_mincatchLF1 lfmincatchLF1(i,j:nparticipants:end)];
         LF_mincatchLF1 = [LF_mincatchLF1 lfminadaptHF1(i,j:nparticipants:end)];
         GF_mincatchLF1 = [GF_mincatchLF1 gfmincatchLF1(i,j:nparticipants:end)];
         GF_mincatchLF1 = [GF_mincatchLF1 gfminadaptHF1(i,j:nparticipants:end)];
    end
    lfmincatchLF1_table = table(subjects_mincatchLF1, cond_mincatchLF1, LF_mincatchLF1.');
    lfmincatchLF1_table.Properties.VariableNames = {'subjName','cond', 'LF'};
    glme_lfmincatchLF1 = fitglme(lfmincatchLF1_table,'LF ~ cond + (1|subjName)');
    pval_lfmincatchLF1(i)=glme_lfmincatchLF1.Coefficients.pValue(2);

    gfmincatchLF1_table = table(subjects_mincatchLF1, cond_mincatchLF1, GF_mincatchLF1.');
    gfmincatchLF1_table.Properties.VariableNames = {'subjName','cond', 'GF'};
    glme_gfmincatchLF1 = fitglme(gfmincatchLF1_table,'GF ~ cond + (1|subjName)');
    pval_gfmincatchLF1(i)=glme_gfmincatchLF1.Coefficients.pValue(2);
    
end

for i=1:500
    if pval_lfmincatchLF1(i) < 0.001
        LF_pvalues(2) = pval_lfmincatchLF1(i);
        LF_indexes(2) = i;
        LF_signDiff(2) = ((meanlfmincatchLF1(i) - meanlfminadaptHF1(i))/min(meanlfmincatchLF1(i), meanlfminadaptHF1(i)))*100;
        break
    else
        LF_pvalues(2) = 0;
        LF_indexes(2) = 0;
        LF_signDiff(2) = 0;
    end 
end

for i=1:500
    if pval_gfmincatchLF1(i) < 0.001
        GF_pvalues(2) = pval_gfmincatchLF1(i);
        GF_indexes(2) = i;
        GF_signDiff(2) = ((meangfmincatchLF1(i) - meangfminadaptHF1(i))/min(meangfmincatchLF1(i), meangfminadaptHF1(i)))*100;
        break
    else
        GF_pvalues(2) = 0;
        GF_indexes(2) = 0;
        GF_signDiff(2) = 0;
    end 
end

% HF catch vs LF normal under max weight

nessais_maxcatchHF2 = nessais5+nessais6;
subjects_maxcatchHF2 = repelem(names,nessais_maxcatchHF2,1);
cond_maxcatchHF2 = repelem(conditions,[nessais5 nessais6]);
cond_maxcatchHF2 = repmat(cond_maxcatchHF2,nparticipants,1);


for i = 1:500
    LF_maxcatchHF2=[];
    GF_maxcatchHF2=[];
    for j=1:nparticipants
         LF_maxcatchHF2 = [LF_maxcatchHF2 lfmaxcatchHF2(i,j:nparticipants:end)];
         LF_maxcatchHF2 = [LF_maxcatchHF2 lfmaxadaptLF2(i,j:nparticipants:end)];
         GF_maxcatchHF2 = [GF_maxcatchHF2 gfmaxcatchHF2(i,j:nparticipants:end)];
         GF_maxcatchHF2 = [GF_maxcatchHF2 gfmaxadaptLF2(i,j:nparticipants:end)];
    end
    lfmaxcatchHF2_table = table(subjects_maxcatchHF2, cond_maxcatchHF2, LF_maxcatchHF2.');
    lfmaxcatchHF2_table.Properties.VariableNames = {'subjName','cond', 'LF'};
    glme_lfmaxcatchHF2 = fitglme(lfmaxcatchHF2_table,'LF ~ cond + (1|subjName)');
    pval_lfmaxcatchHF2(i)=glme_lfmaxcatchHF2.Coefficients.pValue(2);
    
    gfmaxcatchHF2_table = table(subjects_maxcatchHF2, cond_maxcatchHF2, GF_maxcatchHF2.');
    gfmaxcatchHF2_table.Properties.VariableNames = {'subjName','cond', 'GF'};
    glme_gfmaxcatchHF2 = fitglme(gfmaxcatchHF2_table,'GF ~ cond + (1|subjName)');
    pval_gfmaxcatchHF2(i)=glme_gfmaxcatchHF2.Coefficients.pValue(2);
end

for i=1:500
    if pval_lfmaxcatchHF2(i) < 0.001
        LF_pvalues(3) = pval_lfmaxcatchHF2(i);
        LF_indexes(3) = i;
        LF_signDiff(3) = ((meanlfmaxadaptLF2(i) - meanlfmaxcatchHF2(i))/min(meanlfmaxadaptLF2(i),meanlfmaxcatchHF2(i)))*100;
        break
    else
        LF_pvalues(3) = 0;
        LF_indexes(3) = 0;
        LF_signDiff(3) = 0;
    end 
end

for i=1:500
    if pval_gfmaxcatchHF2(i) < 0.001
        GF_pvalues(3) = pval_gfmaxcatchHF2(i);
        GF_indexes(3) = i;
        GF_signDiff(3) = ((meangfmaxadaptLF2(i) - meangfmaxcatchHF2(i))/min(meangfmaxadaptLF2(i),meangfmaxcatchHF2(i)))*100;
        break
    else
        GF_pvalues(3) = 0;
        GF_indexes(3) = 0;
        GF_signDiff(3) = 0;
    end 
end

% HF catch vs LF normal under min weight

nessais_mincatchHF2 = nessais7+nessais8;
subjects_mincatchHF2 = repelem(names,nessais_mincatchHF2,1);
cond_mincatchHF2 = repelem(conditions,[nessais7 nessais8]);
cond_mincatchHF2 = repmat(cond_mincatchHF2,nparticipants,1);


for i = 1:500
    LF_mincatchHF2=[];
    GF_mincatchHF2=[];
    for j=1:nparticipants
         LF_mincatchHF2 = [LF_mincatchHF2 lfmincatchHF2(i,j:nparticipants:end)];
         LF_mincatchHF2 = [LF_mincatchHF2 lfminadaptLF2(i,j:nparticipants:end)]; 
         GF_mincatchHF2 = [GF_mincatchHF2 gfmincatchHF2(i,j:nparticipants:end)];
         GF_mincatchHF2 = [GF_mincatchHF2 gfminadaptLF2(i,j:nparticipants:end)];
    end
    lfmincatchHF2_table = table(subjects_mincatchHF2, cond_mincatchHF2, LF_mincatchHF2.');
    lfmincatchHF2_table.Properties.VariableNames = {'subjName','cond', 'LF'};
    glme_lfmincatchHF2 = fitglme(lfmincatchHF2_table,'LF ~ cond + (1|subjName)');
    pval_lfmincatchHF2(i)=glme_lfmincatchHF2.Coefficients.pValue(2);
    
    gfmincatchHF2_table = table(subjects_mincatchHF2, cond_mincatchHF2, GF_mincatchHF2.');
    gfmincatchHF2_table.Properties.VariableNames = {'subjName','cond', 'GF'};
    glme_gfmincatchHF2 = fitglme(gfmincatchHF2_table,'GF ~ cond + (1|subjName)');
    pval_gfmincatchHF2(i)=glme_gfmincatchHF2.Coefficients.pValue(2);
end

for i=1:500
    if pval_lfmincatchHF2(i) < 0.001
        LF_pvalues(4) = pval_lfmincatchHF2(i);
        LF_indexes(4) = i;
        LF_signDiff(4) = ((meanlfminadaptLF2(i) - meanlfmincatchHF2(i))/min(meanlfminadaptLF2(i), meanlfmincatchHF2(i)))*100;
        break
    else
        LF_pvalues(4) = 0;
        LF_indexes(4) = 0;
        LF_signDiff(4) = 0;
    end 
end
for i=1:500
    if pval_gfmincatchHF2(i) < 0.001
        GF_pvalues(4) = pval_gfmincatchHF2(i);
        GF_indexes(4) = i;
        GF_signDiff(4) = ((meangfminadaptLF2(i) - meangfmincatchHF2(i))/min(meangfminadaptLF2(i), meangfmincatchHF2(i)))*100;
        break
    else
        GF_pvalues(4) = 0;
        GF_indexes(4) = 0;
        GF_signDiff(4)= 0;
    end 
end

for i=1:4
    if LF_indexes(i) ~=0
        LF_time(i) = x(LF_indexes(i));
    else 
        LF_time(i) = nan;
    end
     if GF_indexes(i) ~=0
        GF_time(i) = x(LF_indexes(i));
    else 
        GF_time(i) = nan;
    end
end       

%% Plots low friction catch - LF
% Figures GF mean curves and relative difference in mean force 
LFaxislim = 15; %limit of y axis of graphs for GF curves
Rdaxislim = 90; %limit of y axis of graphs for relative difference curves
pval_lim = 10^(-5);

figure(1); 

subplot(3,2,1)
y1 = meanlfmaxcatchLF1(1:500);
y2 = meanlfmaxadaptHF1(1:500);
plot(x,y1,'r--', x, y2, 'b', 'LineWidth', 1.5)
figure(1); hold on;
if LF_indexes(1)~=0 
    plot([x(LF_indexes(1)) x(LF_indexes(1))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Maximal manipulandum weight')
ylabel('LF (N)');
ylim([0 LFaxislim]);
xlim([-timealigned 2]);
legend('Low friction catch', 'High friction normal');
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,2)
y3 = meanlfmincatchLF1(1:500);
y4 = meanlfminadaptHF1(1:500);
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
figure(1); hold on;
if LF_indexes(2)~=0 
    plot([x(LF_indexes(2)) x(LF_indexes(2))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('Minimal manipulandum weight')
ylabel('LF (N)');
ylim([0 LFaxislim]);
xlim([-timealigned 2]);
legend('Low friction catch', 'High friction normal');
grid on
ax = gca;
ax.GridAlpha = 0.07;


subplot(3,2,3)
y5 = Rd_meanlfLFmaxcatch(1:500);
plot(x,y5,'g','LineWidth', 1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_lfLFmaxcatch(1:500) fliplr(ll_lfLFmaxcatch(1:500))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(1);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
figure(1);hold on;
ylabel('\Delta LF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,4)
y6 = Rd_meanlfLFmincatch(1:500);
plot(x,y6,'g','LineWidth', 1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_lfLFmincatch(1:500) fliplr(ll_lfLFmincatch(1:500))], 'g', 'FaceAlpha', 0.2, 'LineStyle', "none")
figure(1);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
figure(1);hold on;
ylabel('\Delta LF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,5)
semilogy(x,pval_lfmaxcatchLF1,'LineWidth',1.5)
figure(1);hold on;
if LF_indexes(1)~=0 
    plot([x(LF_indexes(1)) x(LF_indexes(1))],[-100 100], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,6)
semilogy(x,pval_lfmincatchLF1,'LineWidth',1.5)
figure(1);hold on;
if LF_indexes(2)~=0 
    plot([x(LF_indexes(2)) x(LF_indexes(2))],[-100 100], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

%% Plots low friction catch - GF
% Figures GF mean curves and relative difference in mean force 
GFaxislim = 15; %limit of y axis of graphs for GF curves
Rdaxislim = 90; %limit of y axis of graphs for relative difference curves

figure(2); 

subplot(3,2,1)
y1 = meangfmaxcatchLF1(1:500);
y2 = meangfmaxadaptHF1(1:500);
plot(x,y1,'r--', x, y2, 'b', 'LineWidth', 1.5)
figure(2);hold on;
if GF_indexes(1)~=0 
    plot([x(GF_indexes(1)) x(GF_indexes(1))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Maximal manipulandum weight')
ylabel('GF (N)');
ylim([0 GFaxislim]);
xlim([-timealigned 2]);
legend('Low friction catch', 'High friction normal');

subplot(3,2,2)
y3 = meangfmincatchLF1(1:500);
y4 = meangfminadaptHF1(1:500);
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
figure(2);hold on;
if GF_indexes(2)~=0 
    plot([x(GF_indexes(2)) x(GF_indexes(2))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('Minimal manipulandum weight')
ylabel('GF (N)');
ylim([0 GFaxislim]);
xlim([-timealigned 2]);
legend('Low friction catch', 'High friction normal');


subplot(3,2,3)
y5 = Rd_meangfLFmaxcatch(1:500);
plot(x,y5,'g','LineWidth', 1.5)
figure(2);hold on;
fill([x fliplr(x)], [ul_gfLFmaxcatch(1:500) fliplr(ll_gfLFmaxcatch(1:500))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(2);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
figure(2);hold on;
grid on
ax = gca;
ax.GridAlpha = 0.07;
ylabel('\Delta GF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);

subplot(3,2,4)
y6 = Rd_meangfLFmincatch(1:500);
plot(x,y6,'g','LineWidth', 1.5)
figure(2);hold on;
fill([x fliplr(x)], [ul_gfLFmincatch(1:500) fliplr(ll_gfLFmincatch(1:500))], 'g', 'FaceAlpha', 0.2, 'LineStyle', "none")
figure(2);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
figure(2);hold on;
grid on
ax = gca;
ax.GridAlpha = 0.07;
ylabel('\Delta GF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);

subplot(3,2,5)
semilogy(x,pval_gfmaxcatchLF1,'LineWidth',1.5)
figure(2);hold on;
plot([-timealigned 2],[0.001 0.001], 'r--','LineWidth',1)
grid on
ax = gca;
ax.GridAlpha = 0.07;
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);

subplot(3,2,6)
semilogy(x,pval_gfmincatchLF1,'LineWidth',1.5)
figure(2);hold on;
xlim([-timealigned 2]);
xlabel('Time (s)');
figure(2); hold on;
plot([-timealigned 2],[0.001 0.001], 'r--','LineWidth',1)
grid on
ax = gca;
ax.GridAlpha = 0.07;
ylabel('p-value (-)');
ylim([pval_lim 10^0]);



%% Plots high friction catch - LF
% Figures GF mean curves and relative difference in mean force 
LFaxislim = 15; %limit of y axis of graphs for GF curves
Rdaxislim = 90; %limit of y axis of graphs for relative difference curves

figure(3); 

subplot(3,2,1)
y1 = meanlfmaxadaptLF2(1:500);
y2 = meanlfmaxcatchHF2(1:500);
plot(x,y1,'r', x, y2, 'b--', 'LineWidth', 1.5)
figure(3); hold on;
if LF_indexes(3)~=0 
    plot([x(LF_indexes(3)) x(LF_indexes(3))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Maximal manipulandum weight')
ylabel('LF (N)');
ylim([0 LFaxislim]);
xlim([-timealigned 2]);
legend('Low friction normal', 'High friction catch');
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,2)
y3 = meanlfminadaptLF2(1:500);
y4 = meanlfmincatchHF2(1:500);
plot(x,y3,'r',x,y4,'b--','LineWidth', 1.5)
figure(3);hold on;
if LF_indexes(4)~=0 
    plot([x(LF_indexes(4)) x(LF_indexes(4))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('Minimal manipulandum weight')
ylabel('LF (N)');
ylim([0 LFaxislim]);
xlim([-timealigned 2]);
legend('Low friction normal', 'High friction catch');
grid on
ax = gca;
ax.GridAlpha = 0.07;


subplot(3,2,3)
y5 = Rd_meanlfHFmaxcatch(1:500);
plot(x,y5,'g','LineWidth', 1.5)
figure(3);hold on;
fill([x fliplr(x)], [ul_lfHFmaxcatch(1:500) fliplr(ll_lfHFmaxcatch(1:500))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(3);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta LF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,4)
y6 = Rd_meanlfHFmincatch(1:500);
plot(x,y6,'g','LineWidth', 1.5)
figure(3);hold on;
fill([x fliplr(x)], [ul_lfHFmincatch(1:500) fliplr(ll_lfHFmincatch(1:500))], 'g', 'FaceAlpha', 0.2, 'LineStyle', "none")
figure(3);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta LF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,5)
semilogy(x,pval_lfmaxcatchHF2,'LineWidth',1.5)
figure(3);hold on;
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,6)
semilogy(x,pval_lfmincatchHF2,'LineWidth',1.5)
figure(3);hold on;
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

%% Plots high friction catch - GF
% Figures GF mean curves and relative difference in mean force 
GFaxislim = 15; %limit of y axis of graphs for GF curves
Rdaxislim = 90; %limit of y axis of graphs for relative difference curves

figure(4); 

subplot(3,2,1)
y1 = meangfmaxadaptLF2(1:500);
y2 = meangfmaxcatchHF2(1:500);
plot(x,y1,'r', x, y2, 'b--', 'LineWidth', 1.5)
figure(4);hold on;
if GF_indexes(3)~=0 
    plot([x(GF_indexes(3)) x(GF_indexes(3))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Maximal manipulandum weight')
ylabel('GF (N)');
ylim([0 GFaxislim]);
xlim([-timealigned 2]);
legend('Low friction normal', 'High friction catch');
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,2)
y3 = meangfminadaptLF2(1:500);
y4 = meangfmincatchHF2(1:500);
plot(x,y3,'r',x,y4,'b--','LineWidth', 1.5)
figure(4);hold on;
if GF_indexes(4)~=0 
    plot([x(GF_indexes(4)) x(GF_indexes(4))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('Minimal manipulandum weight')
ylabel('GF (N)');
ylim([0 GFaxislim]);
xlim([-timealigned 2]);
legend('Low friction normal', 'High friction catch');
grid on
ax = gca;
ax.GridAlpha = 0.07;


subplot(3,2,3)
y5 = Rd_meangfHFmaxcatch(1:500);
plot(x,y5,'g','LineWidth', 1.5)
figure(4);hold on;
fill([x fliplr(x)], [ul_gfHFmaxcatch(1:500) fliplr(ll_gfHFmaxcatch(1:500))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(4);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
figure(4);hold on;
ylabel('\Delta GF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,4)
y6 = Rd_meangfHFmincatch(1:500);
plot(x,y6,'g','LineWidth', 1.5)
figure(4);hold on;
fill([x fliplr(x)], [ul_gfHFmincatch(1:500) fliplr(ll_gfHFmincatch(1:500))], 'g', 'FaceAlpha', 0.2, 'LineStyle', "none")
figure(4);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta GF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,5)
semilogy(x,pval_gfmaxcatchHF2,'LineWidth',1.5)
figure(4);hold on;
plot([-timealigned 2],[0.001 0.001], 'r--','LineWidth',1)
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

subplot(3,2,6)
semilogy(x,pval_gfmincatchHF2,'LineWidth',1.5)
figure(4);hold on;
plot([-timealigned 2],[0.001 0.001], 'r--','LineWidth',1)
xlim([-timealigned 2]);
xlabel('Time (s)');
ylabel('p-value (-)');
ylim([pval_lim 10^0]);
grid on
ax = gca;
ax.GridAlpha = 0.07;

end
