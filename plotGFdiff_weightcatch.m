function x = plotGFdiff_weightcatch(alignedLFtable, alignedGFtable, tsteps, nparticipants,minimum)
%[LF_pvalues,LF_time,LF_signDiff,GF_pvalues,GF_time,GF_signDiff]
%% Determine participants (for mixed effect model)
if nparticipants == 15
    names=["AParache" ; "ARommel" ; "ASalden" ; "BDelhaye" ; "DDoumont" ; "FSchiltz" ; "GBrandsteert" ; "JDelforge"; "JDommisse"; "LColmant"; "MBronchart"; "MDausort"; "S_Vandergooten"; "SLedoux" ; "VFischer"];
elseif nparticipants == 13 
    names=["ADommisse" ; "AMarechal" ; "ATikke" ; "AWertelaers" ; "BJonnart" ; "CBedford" ; "CZwaenepoel" ; "ESchoonjans"; "ESpringel"; "LCirquin"; "MJMaldague"; "MRennesson"; "PLefèvre"];
end

%% Max weight catch (min to max weight)
%max weight catch under low friction 
nessais1=4;
lfLFcatchmax1=zeros(tsteps-1999,nessais1*nparticipants);
gfLFcatchmax1=zeros(tsteps-1999,nessais1*nparticipants);

lfLFcatchmax1 = alignedLFtable(:,33:108:end);  
lfLFcatchmax1 = [lfLFcatchmax1 alignedLFtable(:,46:108:end)];
lfLFcatchmax1 = [lfLFcatchmax1 alignedLFtable(:,71:108:end)];
lfLFcatchmax1 = [lfLFcatchmax1 alignedLFtable(:,93:108:end)];

gfLFcatchmax1=alignedGFtable(:,33:108:end);
gfLFcatchmax1=[gfLFcatchmax1 alignedGFtable(:,46:108:end)];
gfLFcatchmax1=[gfLFcatchmax1 alignedGFtable(:,71:108:end)];
gfLFcatchmax1=[gfLFcatchmax1 alignedGFtable(:,93:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais1
        subjects_lfmaxcatchLF1(:,k) =  lfLFcatchmax1(:,j); %matrix with trials of a same participant
        subjects_gfmaxcatchLF1(:,k) =  gfLFcatchmax1(:,j);   
        subj_meanlfmaxcatchLF1(:,i) = mean(subjects_lfmaxcatchLF1,2);%mean of the trials (for each timestep)
        subj_meangfmaxcatchLF1(:,i) = mean(subjects_gfmaxcatchLF1,2); 
        k=k+1;
    end
end


%min weight adaptation under low friction
nessais2=16;
lfLFadaptmin1=zeros(tsteps-1999,nessais2*nparticipants);
gfLFadaptmin1=zeros(tsteps-1999,nessais2*nparticipants);

lfLFadaptmin1=alignedLFtable(:,5:108:end);
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,6:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,18:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,52:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,53:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,54:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,65:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,66:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,84:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,32:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,44:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,45:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,68:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,69:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,70:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,92:108:end)];

gfLFadaptmin1=alignedGFtable(:,5:108:end);
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,6:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,18:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,52:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,53:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,54:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,65:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,66:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,84:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,32:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,44:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,45:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,68:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,69:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,70:108:end)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,92:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais2
        subjects_lfminadaptLF1(:,k) =  lfLFadaptmin1(:,j); %matrix with trials of a same participant
        subjects_gfminadaptLF1(:,k) =  gfLFadaptmin1(:,j);   
        subj_meanlfminadaptLF1(:,i) = mean(subjects_lfminadaptLF1,2);%mean of the trials (for each timestep)
        subj_meangfminadaptLF1(:,i) = mean(subjects_gfminadaptLF1,2); 
        k=k+1;
    end 
end

%max weight catch under high friction 
nessais3=5;
lfHFcatchmax1=zeros(tsteps-1999,nessais3*nparticipants);
gfHFcatchmax1=zeros(tsteps-1999,nessais3*nparticipants);

lfHFcatchmax1=alignedLFtable(:,9:108:end);
lfHFcatchmax1=[lfHFcatchmax1 alignedLFtable(:,21:108:end)];
lfHFcatchmax1=[lfHFcatchmax1 alignedLFtable(:,40:108:end)];
lfHFcatchmax1=[lfHFcatchmax1 alignedLFtable(:,89:108:end)];
lfHFcatchmax1=[lfHFcatchmax1 alignedLFtable(:,107:108:end)];

gfHFcatchmax1=alignedGFtable(:,9:108:end);
gfHFcatchmax1=[gfHFcatchmax1 alignedGFtable(:,21:108:end)];
gfHFcatchmax1=[gfHFcatchmax1 alignedGFtable(:,40:108:end)];
gfHFcatchmax1=[gfHFcatchmax1 alignedGFtable(:,89:108:end)];
gfHFcatchmax1=[gfHFcatchmax1 alignedGFtable(:,107:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais3
        subjects_lfmaxcatchHF1(:,k) =  lfHFcatchmax1(:,j); %matrix with trials of a same participant
        subjects_gfmaxcatchHF1(:,k) =  gfHFcatchmax1(:,j);   
        subj_meanlfmaxcatchHF1(:,i) = mean(subjects_lfmaxcatchHF1,2);%mean of the trials (for each timestep)
        subj_meangfmaxcatchHF1(:,i) = mean(subjects_gfmaxcatchHF1,2);
        k=k+1;
    end   
end

%min weight adaptation under high friction
nessais4=18;
lfHFadaptmin1=zeros(tsteps-1999,nessais4*nparticipants);
gfHFadaptmin1=zeros(tsteps-1999,nessais4*nparticipants);

lfHFadaptmin1=alignedLFtable(:,30:108:end);
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,58:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,59:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,60:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,77:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,78:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,101:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,102:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,8:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,20:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,38:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,39:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,86:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,87:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,88:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,104:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,105:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,106:108:end)];

gfHFadaptmin1=alignedGFtable(:,30:108:end);
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,58:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,59:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,60:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,77:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,78:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,101:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,102:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,8:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,20:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,38:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,39:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,86:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,87:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,88:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,104:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,105:108:end)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,106:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais4
        subjects_lfminadaptHF1(:,k) =  lfHFadaptmin1(:,j); %matrix with grouped trials for a same participant
        subjects_gfminadaptHF1(:,k) =  gfHFadaptmin1(:,j);   
        subj_meanlfminadaptHF1(:,i) = mean(subjects_lfminadaptHF1,2);%mean of the trials (for each timestep)
        subj_meangfminadaptHF1(:,i) = mean(subjects_gfminadaptHF1,2); 
        k=k+1;
    end
end

%% Min weight catch (max to min weight)
% min weight catch under low friction
nessais5=5;
lfLFcatchmin2=zeros(tsteps-1999,nessais5*nparticipants);
gfLFcatchmin2=zeros(tsteps-1999,nessais5*nparticipants);

lfLFcatchmin2=alignedLFtable(:,4:108:end);
lfLFcatchmin2=[lfLFcatchmin2 alignedLFtable(:,17:108:end)];
lfLFcatchmin2=[lfLFcatchmin2 alignedLFtable(:,51:108:end)];
lfLFcatchmin2=[lfLFcatchmin2 alignedLFtable(:,64:108:end)];
lfLFcatchmin2=[lfLFcatchmin2 alignedLFtable(:,83:108:end)];

gfLFcatchmin2=alignedGFtable(:,4:108:end);
gfLFcatchmin2=[gfLFcatchmin2 alignedGFtable(:,17:108:end)];
gfLFcatchmin2=[gfLFcatchmin2 alignedGFtable(:,51:108:end)];
gfLFcatchmin2=[gfLFcatchmin2 alignedGFtable(:,64:108:end)];
gfLFcatchmin2=[gfLFcatchmin2 alignedGFtable(:,83:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais5
        subjects_lfmincatchLF2(:,k) =  lfLFcatchmin2(:,j); %matrix with trials of a same participant
        subjects_gfmincatchLF2(:,k) =  gfLFcatchmin2(:,j);   
        subj_meanlfmincatchLF2(:,i) = mean(subjects_lfmincatchLF2,2);%mean of the trials (for each timestep)
        subj_meangfmincatchLF2(:,i) = mean(subjects_gfmincatchLF2,2);     
        k=k+1;
    end
end

% adaptation max under low friction
nessais6=20;
lfLFadaptmax2=zeros(tsteps-1999,nessais6*nparticipants);
gfLFadaptmax2=zeros(tsteps-1999,nessais6*nparticipants);

lfLFadaptmax2=alignedLFtable(:,2:108:end);
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,3:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,14:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,15:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,16:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,50:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,62:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,63:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,80:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,81:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,82:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,34:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,35:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,36:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,47:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,48:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,72:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,94:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,95:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,96:108:end)];

gfLFadaptmax2=alignedGFtable(:,2:108:end);
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,3:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,14:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,15:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,16:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,50:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,62:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,63:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,80:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,81:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,82:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,34:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,35:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,36:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,47:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,48:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,72:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,94:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,95:108:end)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,96:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais6
        subjects_lfmaxadaptLF2(:,k) =  lfLFadaptmax2(:,j); %matrix with trials of a same participant
        subjects_gfmaxadaptLF2(:,k) =  gfLFadaptmax2(:,j);   
        subj_meanlfmaxadaptLF2(:,i) = mean(subjects_lfmaxadaptLF2,2);%mean of the trials (for each timestep)
        subj_meangfmaxadaptLF2(:,i) = mean(subjects_gfmaxadaptLF2,2); 
        k=k+1;
    end
end

%min weight catch under high friction
nessais7=4;
lfHFcatchmin2=zeros(tsteps-1999,nessais7*nparticipants);
gfHFcatchmin2=zeros(tsteps-1999,nessais7*nparticipants);

lfHFcatchmin2=alignedLFtable(:,29:108:end);
lfHFcatchmin2=[lfHFcatchmin2 alignedLFtable(:,57:108:end)];
lfHFcatchmin2=[lfHFcatchmin2 alignedLFtable(:,76:108:end)];
lfHFcatchmin2=[lfHFcatchmin2 alignedLFtable(:,100:108:end)];

gfHFcatchmin2=alignedGFtable(:,29:108:end);
gfHFcatchmin2=[gfHFcatchmin2 alignedGFtable(:,57:108:end)];
gfHFcatchmin2=[gfHFcatchmin2 alignedGFtable(:,76:108:end)];
gfHFcatchmin2=[gfHFcatchmin2 alignedGFtable(:,100:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais7
        subjects_lfmincatchHF2(:,k) =  lfHFcatchmin2(:,j); %matrix with trials of a same participant
        subjects_gfmincatchHF2(:,k) =  gfHFcatchmin2(:,j);   
        subj_meanlfmincatchHF2(:,i) = mean(subjects_lfmincatchHF2,2);%mean of the trials (for each timestep)
        subj_meangfmincatchHF2(:,i) = mean(subjects_gfmincatchHF2,2); 
        k=k+1;
    end
end

%max weight adaptation under high friction
nessais8=18;
lfHFadaptmax2=zeros(tsteps-1999,nessais8*nparticipants);
gfHFadaptmax2=zeros(tsteps-1999,nessais8*nparticipants);

lfHFadaptmax2=alignedLFtable(:,26:108:end);
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,27:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,28:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,56:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,74:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,75:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,98:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,99:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,10:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,11:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,12:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,22:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,23:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,24:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,41:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,42:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,90:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,108:108:end)];

gfHFadaptmax2=alignedGFtable(:,26:108:end);
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,27:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,28:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,56:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,74:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,75:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,98:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,99:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,10:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,11:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,12:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,22:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,23:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,24:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,41:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,42:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,90:108:end)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,108:108:end)];

%Computation of means per subject 
for i = 1:nparticipants
    k=1;
    for j = i:nparticipants:nparticipants*nessais8
        subjects_lfmaxadaptHF2(:,k) =  lfHFadaptmax2(:,j); %matrix with trials of a same participant
        subjects_gfmaxadaptHF2(:,k) =  gfHFadaptmax2(:,j);   
        subj_meanlfmaxadaptHF2(:,i) = mean(subjects_lfmaxadaptHF2,2);%mean of the trials (for each timestep)
        subj_meangfmaxadaptHF2(:,i) = mean(subjects_gfmaxadaptHF2,2); 
        k=k+1;
    end
end

%% Mean temporal Force curves 
%load forces 
meanlfmaxcatchLF1=mean(lfLFcatchmax1,2);
meanlfminadaptLF1=mean(lfLFadaptmin1,2);

meanlfmaxcatchHF1=mean(lfHFcatchmax1,2);
meanlfminadaptHF1=mean(lfHFadaptmin1,2);

meanlfmincatchLF2=mean(lfLFcatchmin2,2);
meanlfmaxadaptLF2=mean(lfLFadaptmax2,2);

meanlfmincatchHF2=mean(lfHFcatchmin2,2);
meanlfmaxadaptHF2=mean(lfHFadaptmax2,2);

%grip forces 
meangfmaxcatchLF1=mean(gfLFcatchmax1,2);
meangfminadaptLF1=mean(gfLFadaptmin1,2);

meangfmaxcatchHF1=mean(gfHFcatchmax1,2);
meangfminadaptHF1=mean(gfHFadaptmin1,2);

meangfmincatchLF2=mean(gfLFcatchmin2,2);
meangfmaxadaptLF2=mean(gfLFadaptmax2,2);

meangfmincatchHF2=mean(gfHFcatchmin2,2);
meangfmaxadaptHF2=mean(gfHFadaptmax2,2);

%% Compute relative differences between curves per subject (sort des matrices où les lignes sont des pas de temps et les colonnes sont la diff relative entre les 2 conditions par sujet)
% Catch max weight vs adapt min weight under LF
for i=1:nparticipants
    for j=1:tsteps-1999
        Rd_lfmaxcatchLF(j,i) = ((subj_meanlfmaxcatchLF1(j,i) - subj_meanlfminadaptLF1(j,i)) /min(subj_meanlfmaxcatchLF1(j,i),subj_meanlfminadaptLF1(j,i)))*100;
        Rd_gfmaxcatchLF(j,i) = ((subj_meangfmaxcatchLF1(j,i) - subj_meangfminadaptLF1(j,i)) /min(subj_meangfmaxcatchLF1(j,i),subj_meangfminadaptLF1(j,i)))*100;
    end
end

% Catch max weight vs adapt min weight under HF
for i=1:nparticipants
    for j=1:tsteps-1999
        Rd_lfmaxcatchHF(j,i) = ((subj_meanlfmaxcatchHF1(j,i) - subj_meanlfminadaptHF1(j,i)) /min(subj_meanlfmaxcatchHF1(j,i),subj_meanlfminadaptHF1(j,i)))*100;
        Rd_gfmaxcatchHF(j,i) = ((subj_meangfmaxcatchHF1(j,i) - subj_meangfminadaptHF1(j,i)) /min(subj_meangfmaxcatchHF1(j,i),subj_meangfminadaptHF1(j,i)))*100;
    end
end

% Catch min weight vs adapt max weight under LF
for i=1:nparticipants
    for j=1:tsteps-1999
        Rd_lfmincatchLF(j,i) = ((subj_meanlfmaxadaptLF2(j,i) - subj_meanlfmincatchLF2(j,i)) /min(subj_meanlfmincatchLF2(j,i),subj_meanlfmaxadaptLF2(j,i)))*100;
        Rd_gfmincatchLF(j,i) = ((subj_meangfmaxadaptLF2(j,i) - subj_meangfmincatchLF2(j,i)) /min(subj_meangfmincatchLF2(j,i),subj_meangfmaxadaptLF2(j,i)))*100;
    end
end


% Catch min weight vs adapt max weight under HF
for i=1:nparticipants
    for j=1:tsteps-1999
        Rd_lfmincatchHF(j,i) = ((subj_meanlfmaxadaptHF2(j,i) - subj_meanlfmincatchHF2(j,i)) /min(subj_meanlfmincatchHF2(j,i),subj_meanlfmaxadaptHF2(j,i)))*100;
        Rd_gfmincatchHF(j,i) = ((subj_meangfmaxadaptHF2(j,i) - subj_meangfmincatchHF2(j,i)) /min(subj_meangfmincatchHF2(j,i),subj_meangfmaxadaptHF2(j,i)))*100;
    end
end

%% Mean and standard deviations of Rd of subjects 
%Relative differences in load forces 
Rd_meanlfLFmaxcatch=mean(Rd_lfmaxcatchLF,2);
Rd_stdlfLFmaxcatch=std(Rd_lfmaxcatchLF,0,2);

Rd_meanlfHFmaxcatch=mean(Rd_lfmaxcatchHF,2);
Rd_stdlfHFmaxcatch=std(Rd_lfmaxcatchHF,0,2);

Rd_meanlfLFmincatch=mean(Rd_lfmincatchLF,2);
Rd_stdlfLFmincatch=std(Rd_lfmincatchLF,0,2);

Rd_meanlfHFmincatch=mean(Rd_lfmincatchHF,2);
Rd_stdlfHFmincatch=std(Rd_lfmincatchHF,0,2);

%Relative differences in grip forces 
Rd_meangfLFmaxcatch=mean(Rd_gfmaxcatchLF,2);
Rd_stdgfLFmaxcatch=std(Rd_gfmaxcatchLF,0,2);

Rd_meangfHFmaxcatch=mean(Rd_gfmaxcatchHF,2);
Rd_stdgfHFmaxcatch=std(Rd_gfmaxcatchHF,0,2);

Rd_meangfLFmincatch=mean(Rd_gfmincatchLF,2);
Rd_stdgfLFmincatch=std(Rd_gfmincatchLF,0,2);

Rd_meangfHFmincatch=mean(Rd_gfmincatchHF,2);
Rd_stdgfHFmincatch=std(Rd_gfmincatchHF,0,2);


%computation of the boundaries
for i=1:tsteps-1999
    ul_lfLFmaxcatch(i) = Rd_meanlfLFmaxcatch(i) + Rd_stdlfLFmaxcatch(i); 
    ll_lfLFmaxcatch(i) = Rd_meanlfLFmaxcatch(i) - Rd_stdlfLFmaxcatch(i); 
    ul_gfLFmaxcatch(i) = Rd_meangfLFmaxcatch(i) + Rd_stdgfLFmaxcatch(i); 
    ll_gfLFmaxcatch(i) = Rd_meangfLFmaxcatch(i) - Rd_stdgfLFmaxcatch(i); 
    
    ul_lfHFmaxcatch(i) = Rd_meanlfHFmaxcatch(i) + Rd_stdlfHFmaxcatch(i); 
    ll_lfHFmaxcatch(i) = Rd_meanlfHFmaxcatch(i) - Rd_stdlfHFmaxcatch(i); 
    ul_gfHFmaxcatch(i) = Rd_meangfHFmaxcatch(i) + Rd_stdgfHFmaxcatch(i); 
    ll_gfHFmaxcatch(i) = Rd_meangfHFmaxcatch(i) - Rd_stdgfHFmaxcatch(i); 
    
    ul_lfLFmincatch(i) = Rd_meanlfLFmincatch(i) + Rd_stdlfLFmincatch(i); 
    ll_lfLFmincatch(i) = Rd_meanlfLFmincatch(i) - Rd_stdlfLFmincatch(i);
    ul_gfLFmincatch(i) = Rd_meangfLFmincatch(i) + Rd_stdgfLFmincatch(i); 
    ll_gfLFmincatch(i) = Rd_meangfLFmincatch(i) - Rd_stdgfLFmincatch(i); 
    
    ul_lfHFmincatch(i) = Rd_meanlfHFmincatch(i) + Rd_stdlfHFmincatch(i); 
    ll_lfHFmincatch(i) = Rd_meanlfHFmincatch(i) - Rd_stdlfHFmincatch(i); 
    ul_gfHFmincatch(i) = Rd_meangfHFmincatch(i) + Rd_stdgfHFmincatch(i); 
    ll_gfHFmincatch(i) = Rd_meangfHFmincatch(i) - Rd_stdgfHFmincatch(i); 
    
end

%% Moment of significative difference between the curves (Mixed effect model)
conditions=["catch" ; "normal"];
%empty vectors to store the index and value of when the pvalue first reaches
%significance level (<0.001)
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

% Max catch vs min adapt under LF
nessais_LFcatchmax1 = nessais1+nessais2;
subjects_LFcatchmax1 = repelem(names,nessais_LFcatchmax1,1);
cond_LFcatchmax1 = repelem(conditions,[nessais1 nessais2]);
cond_LFcatchmax1 = repmat(cond_LFcatchmax1,nparticipants,1);

for i = 1:500
    LF_LFcatchmax1=[];
    GF_LFcatchmax1=[];
    for j=1:nparticipants
         LF_LFcatchmax1 = [LF_LFcatchmax1 lfLFcatchmax1(i,j:nparticipants:end)];
         LF_LFcatchmax1 = [LF_LFcatchmax1 lfLFadaptmin1(i,j:nparticipants:end)];
         GF_LFcatchmax1 = [GF_LFcatchmax1 gfLFcatchmax1(i,j:nparticipants:end)];
         GF_LFcatchmax1 = [GF_LFcatchmax1 gfLFadaptmin1(i,j:nparticipants:end)];
    end
    lfLFcatchmax1_table = table(subjects_LFcatchmax1, cond_LFcatchmax1, LF_LFcatchmax1.');
    lfLFcatchmax1_table.Properties.VariableNames = {'subjName','cond', 'LF'};
    glme_lfLFcatchmax1 = fitglme(lfLFcatchmax1_table,'LF ~ cond + (1|subjName)');
    pval_lfLFcatchmax1(i)=glme_lfLFcatchmax1.Coefficients.pValue(2);
    
    gfLFcatchmax1_table = table(subjects_LFcatchmax1, cond_LFcatchmax1, GF_LFcatchmax1.');
    gfLFcatchmax1_table.Properties.VariableNames = {'subjName','cond','GF'};
    glme_gfLFcatchmax1 = fitglme(gfLFcatchmax1_table,'GF ~ cond + (1|subjName)');
    pval_gfLFcatchmax1(i)=glme_gfLFcatchmax1.Coefficients.pValue(2);
end
for i=minimum:500
    if pval_lfLFcatchmax1(i) < 0.001
        LF_pvalues(1) = pval_lfLFcatchmax1(i);
        LF_indexes(1) = i;
        LF_signDiff(1) = ((meanlfmaxcatchLF1(i) - meanlfminadaptLF1(i))/min(meanlfmaxcatchLF1(i),meanlfminadaptLF1(i)))*100;
        break
    else
        LF_pvalues(1) = 0;
        LF_indexes(1) = 0;
        LF_signDiff(1) = 0;
    end 
end
for i=minimum:500
    if pval_gfLFcatchmax1(i) < 0.001
        GF_pvalues(1) = pval_gfLFcatchmax1(i);
        GF_indexes(1) = i;
        GF_signDiff(1) = ((meangfmaxcatchLF1(i) - meangfminadaptLF1(i))/min(meangfmaxcatchLF1(i),meangfminadaptLF1(i)))*100;
        break
    else
       GF_pvalues(1) = 0;
        GF_indexes(1) = 0;
        GF_signDiff(1) = 0;
    end 
end


% Max catch vs min adapt under HF
nessais_HFcatchmax1 = nessais3+nessais4;
subjects_HFcatchmax1 = repelem(names,nessais_HFcatchmax1,1);
cond_HFcatchmax1 = repelem(conditions,[nessais3 nessais4]);
cond_HFcatchmax1 = repmat(cond_HFcatchmax1,nparticipants,1);

for i = 1:500
    LF_HFcatchmax1=[];
    GF_HFcatchmax1=[];
    for j=1:nparticipants
         LF_HFcatchmax1 = [LF_HFcatchmax1 lfHFcatchmax1(i,j:nparticipants:end)];
         LF_HFcatchmax1 = [LF_HFcatchmax1 lfHFadaptmin1(i,j:nparticipants:end)];
         GF_HFcatchmax1 = [GF_HFcatchmax1 gfHFcatchmax1(i,j:nparticipants:end)];
         GF_HFcatchmax1 = [GF_HFcatchmax1 gfHFadaptmin1(i,j:nparticipants:end)];
    end
    lfHFcatchmax1_table = table(subjects_HFcatchmax1, cond_HFcatchmax1, LF_HFcatchmax1.');
    lfHFcatchmax1_table.Properties.VariableNames = {'subjName','cond', 'LF'};
    glme_lfHFcatchmax1 = fitglme(lfHFcatchmax1_table,'LF ~ cond + (1|subjName)');
    pval_lfHFcatchmax1(i)=glme_lfHFcatchmax1.Coefficients.pValue(2);
    
    gfHFcatchmax1_table = table(subjects_HFcatchmax1, cond_HFcatchmax1, GF_HFcatchmax1.');
    gfHFcatchmax1_table.Properties.VariableNames = {'subjName','cond', 'GF'};
    glme_gfHFcatchmax1 = fitglme(gfHFcatchmax1_table,'GF ~ cond + (1|subjName)');
    pval_gfHFcatchmax1(i)=glme_gfHFcatchmax1.Coefficients.pValue(2); 
end
for i=minimum:500
    if pval_lfHFcatchmax1(i) < 0.001
        LF_pvalues(2) = pval_lfHFcatchmax1(i);
        LF_indexes(2) = i;
        LF_signDiff(2) = ((meanlfmaxcatchHF1(i) - meanlfminadaptHF1(i))/min(meanlfmaxcatchHF1(i),meanlfminadaptHF1(i)))*100;
        break
    else
        LF_pvalues(2) = 0;
        LF_indexes(2) = 0;
        LF_signDiff(2) = 0;
    end 
end
for i=minimum:500
    if pval_gfHFcatchmax1(i) < 0.001
        GF_pvalues(2) = pval_gfHFcatchmax1(i);
        GF_indexes(2) = i;
        GF_signDiff(2) = ((meangfmaxcatchHF1(i) - meangfminadaptHF1(i))/min(meangfmaxcatchHF1(i),meangfminadaptHF1(i)))*100;
        break
    else
        GF_pvalues(2) = 0;
        GF_indexes(2) = 0;
        GF_signDiff(2) = 0;
    end
end

% Min catch vs max adapt under LF
nessais_LFcatchmin2 = nessais5+nessais6;
subjects_LFcatchmin2 = repelem(names,nessais_LFcatchmin2,1);
cond_LFcatchmin2 = repelem(conditions,[nessais5 nessais6]);
cond_LFcatchmin2 = repmat(cond_LFcatchmin2,nparticipants,1);

for i = 1:500
    LF_LFcatchmin2=[];
    GF_LFcatchmin2=[];
    for j=1:nparticipants
         LF_LFcatchmin2 = [LF_LFcatchmin2 lfLFcatchmin2(i,j:nparticipants:end)];
         LF_LFcatchmin2 = [LF_LFcatchmin2 lfLFadaptmax2(i,j:nparticipants:end)];
         GF_LFcatchmin2 = [GF_LFcatchmin2 gfLFcatchmin2(i,j:nparticipants:end)];
         GF_LFcatchmin2 = [GF_LFcatchmin2 gfLFadaptmax2(i,j:nparticipants:end)];
    end
    lfLFcatchmin2_table = table(subjects_LFcatchmin2, cond_LFcatchmin2, LF_LFcatchmin2.');
    lfLFcatchmin2_table.Properties.VariableNames = {'subjName','cond', 'LF'};
    glme_lfLFcatchmin2 = fitglme(lfLFcatchmin2_table,'LF ~ cond + (1|subjName)');
    pval_lfLFcatchmin2(i)=glme_lfLFcatchmin2.Coefficients.pValue(2);
       
    gfLFcatchmin2_table = table(subjects_LFcatchmin2, cond_LFcatchmin2, GF_LFcatchmin2.');
    gfLFcatchmin2_table.Properties.VariableNames = {'subjName','cond', 'GF'};
    glme_gfLFcatchmin2 = fitglme(gfLFcatchmin2_table,'GF ~ cond + (1|subjName)');
    pval_gfLFcatchmin2(i)=glme_gfLFcatchmin2.Coefficients.pValue(2);
end

for i=minimum:500
    if pval_lfLFcatchmin2(i) < 0.001
        LF_pvalues(3) = pval_lfLFcatchmin2(i);
        LF_indexes(3) = i;
        LF_signDiff(3) = ((meanlfmaxadaptLF2(i) - meanlfmincatchLF2(i))/min(meanlfmaxadaptLF2(i),meanlfmincatchLF2(i)))*100;
        break
    else
        LF_pvalues(3) = 0;
        LF_indexes(3) = 0;
        LF_signDiff(3) = 0;
    end 
end
for i=minimum:500
    if pval_gfLFcatchmin2(i) < 0.001
        GF_pvalues(3) = pval_gfLFcatchmin2(i);
        GF_indexes(3) = i;
        GF_signDiff(3) = ((meangfmaxadaptLF2(i) - meangfmincatchLF2(i))/min(meangfmaxadaptLF2(i),meangfmincatchLF2(i)))*100;
        break
    else
        GF_pvalues(3) = 0;
        GF_indexes(3) = 0;
        GF_signDiff(3) = 0;
    end 
end

% Min catch vs max adapt under HF
nessais_HFcatchmin2 = nessais7+nessais8;
subjects_HFcatchmin2 = repelem(names,nessais_HFcatchmin2,1);
cond_HFcatchmin2 = repelem(conditions,[nessais7 nessais8]);
cond_HFcatchmin2 = repmat(cond_HFcatchmin2,nparticipants,1);

for i = 1:500
    LF_HFcatchmin2=[];
    GF_HFcatchmin2=[];
    for j=1:nparticipants
         LF_HFcatchmin2 = [LF_HFcatchmin2 lfHFcatchmin2(i,j:nparticipants:end)];
         LF_HFcatchmin2 = [LF_HFcatchmin2 lfHFadaptmax2(i,j:nparticipants:end)];
         GF_HFcatchmin2 = [GF_HFcatchmin2 gfHFcatchmin2(i,j:nparticipants:end)];
         GF_HFcatchmin2 = [GF_HFcatchmin2 gfHFadaptmax2(i,j:nparticipants:end)];
    end
    lfHFcatchmin2_table = table(subjects_HFcatchmin2, cond_HFcatchmin2, LF_HFcatchmin2.');
    lfHFcatchmin2_table.Properties.VariableNames = {'subjName','cond', 'LF'};
    glme_lfHFcatchmin2 = fitglme(lfHFcatchmin2_table,'LF ~ cond + (1|subjName)');
    pval_lfHFcatchmin2(i)=glme_lfHFcatchmin2.Coefficients.pValue(2);
    
    gfHFcatchmin2_table = table(subjects_HFcatchmin2, cond_HFcatchmin2, GF_HFcatchmin2.');
    gfHFcatchmin2_table.Properties.VariableNames = {'subjName','cond', 'GF'};
    glme_gfHFcatchmin2 = fitglme(gfHFcatchmin2_table,'GF ~ cond + (1|subjName)');
    pval_gfHFcatchmin2(i)=glme_gfHFcatchmin2.Coefficients.pValue(2);
end
for i=minimum:500
    if pval_lfHFcatchmin2(i) < 0.001
        LF_pvalues(4) = pval_lfHFcatchmin2(i);
        LF_indexes(4) = i;
        LF_signDiff(4) = ((meanlfmaxadaptHF2(i) - meanlfmincatchHF2(i))/min(meanlfmaxadaptHF2(i),meanlfmincatchHF2(i)))*100;
        break
    else
        LF_pvalues(4) = 0;
        LF_indexes(4) = 0;
        LF_signDiff(4) = 0;
    end 
end
for i=minimum:500
    if pval_gfHFcatchmin2(i) < 0.001
        GF_pvalues(4) = pval_gfHFcatchmin2(i);
        GF_indexes(4) = i;
        GF_signDiff(4) = ((meangfmaxadaptHF2(i) - meangfmincatchHF2(i))/min(meangfmaxadaptHF2(i),meangfmincatchHF2(i)))*100;
        break
    else
        GF_pvalues(4) = 0;
        GF_indexes(4) = 0;
        GF_signDiff(4) = 0;
    end 
end

% Computation of time when pvalue becomes under 0.001
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


%% Moment of significative difference between the curves (T-test)
%{
%x=10:0.005:12.495
timealigned=minimum*0.005-0.005; %temps où toutes les courbes sont alignées
x=-timealigned:0.005:(-timealigned+2.495); %500 pas de temps, le 0 se trouve à l'alignement des courbes

% T-tests for LF on means per subject 
LF_pvalues = [];
LF_indexes = [];
LF_signDiff = [];

%catch max weight vs adaptation min weight LF
[h1,p1] = ttest(subj_meanlfmaxcatchLF1.',subj_meanlfminadaptLF1.');%transposée des matrices pour faire le T-test dans le bon sens (pour chaque pas de temps)
for i = minimum:(tsteps-1999)
    if p1(i) < 0.05
        LF_pvalues(1) = p1(i);
        LF_indexes(1) = i;
        LF_signDiff(1) = Rd_meanlfLFmaxcatch(i);
        break
    end 
end

%catch max weight vs adaptation min weight HF
[h2,p2] = ttest(subj_meanlfmaxcatchHF1.',subj_meanlfminadaptHF1.');
for i = minimum:(tsteps-1999)
    if p2(i) < 0.05
        LF_pvalues(2) = p2(i);
        LF_indexes(2) = i;
        LF_signDiff(2) = Rd_meanlfHFmaxcatch(i);
        break
    end 
end


%catch min weight vs adaptation max weight LF
[h3,p3] = ttest(subj_meanlfmincatchLF2.',subj_meanlfmaxadaptLF2.');
for i = minimum:(tsteps-1999)
    if p3(i) < 0.05
        LF_pvalues(3) = p3(i);
        LF_indexes(3) = i;
        LF_signDiff(3) = Rd_meanlfLFmincatch(i);
        break
    end 
end

%catch min weight vs adaptation max weight HF
[h4,p4] = ttest(subj_meanlfmincatchHF2.',subj_meanlfmaxadaptHF2.');
for i = minimum:(tsteps-1999)
    if p4(i) < 0.05
        LF_pvalues(4) = p4(i);
        LF_indexes(4) = i;
        LF_signDiff(4) = Rd_meanlfHFmincatch(i);
        break
    end 
end


% T-tests for GF on means per subject 
GF_pvalues = [];
GF_indexes = [];
GF_signDiff = [];

%catch max weight vs adaptation min weight LF
[h5,p5] = ttest(subj_meangfmaxcatchLF1.',subj_meangfminadaptLF1.');%transposée des matrices pour faire le T-test dans le bon sens (pour chaque pas de temps)
for i = minimum:(tsteps-1999)
    if p5(i) < 0.05
        GF_pvalues(1) = p5(i);
        GF_indexes(1) = i;
        GF_signDiff(1) = Rd_meangfLFmaxcatch(i);
        break
    end 
end

%catch max weight vs adaptation min weight HF
[h6,p6] = ttest(subj_meangfmaxcatchHF1.',subj_meangfminadaptHF1.');
for i = minimum:(tsteps-1999)
    if p6(i) < 0.05
        GF_pvalues(2) = p6(i);
        GF_indexes(2) = i;
        GF_signDiff(2) = Rd_meangfHFmaxcatch(i);
        break
    end 
end


%catch min weight vs adaptation max weight LF
[h7,p7] = ttest(subj_meangfmincatchLF2.',subj_meangfmaxadaptLF2.');
for i = minimum:(tsteps-1999)
    if p7(i) < 0.05
        GF_pvalues(3) = p7(i);
        GF_indexes(3) = i;
        GF_signDiff(3) = Rd_meangfLFmincatch(i);
        break
    end 
end

%catch min weight vs adaptation max weight HF
[h8,p8] = ttest(subj_meangfmincatchHF2.',subj_meangfmaxadaptHF2.');
for i = minimum:(tsteps-1999)
    if p8(i) < 0.05
        GF_pvalues(4) = p8(i);
        GF_indexes(4) = i;
        GF_signDiff(4) = Rd_meangfHFmincatch(i);
        break
    end 
end

LF_time = x(LF_indexes);
GF_time = x(GF_indexes);
%}
%% Plots max weight catch

% Figures LF mean curves and relative difference in mean force 
LFaxislim = 7; %limit of y axis of graphs for GF curves
Rdlfaxislim = 350; %limit of y axis of graphs for relative difference curves
pval_lim = 10^(-5);

figure(1); 
subplot(3,2,1)
y1 = meanlfmaxcatchLF1(1:500);
y2 = meanlfminadaptLF1(1:500);
plot(x,y1,'r--', x, y2, 'b', 'LineWidth', 1.5)
figure(1);hold on;
if LF_indexes(1) ~= 0
    plot([x(LF_indexes(1)) x(LF_indexes(1))],[-40 Rdlfaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Low Friction')
ylabel('LF (N)');
ylim([0 LFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight catch', 'Minimal weight normal');

subplot(3,2,2)
y3 = meanlfmaxcatchHF1(1:500);
y4 = meanlfminadaptHF1(1:500);
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
figure(1);hold on;
if LF_indexes(2) ~= 0
    plot([x(LF_indexes(2)) x(LF_indexes(2))],[-40 Rdlfaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('High Friction')
ylabel('LF (N)');
ylim([0 LFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight catch', 'Minimal weight normal');


subplot(3,2,3)
y5 = Rd_meanlfLFmaxcatch(1:500);
plot(x,y5,'g','LineWidth', 1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_lfLFmaxcatch(1:500) fliplr(ll_lfLFmaxcatch(1:500))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(1);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta LF (%)');
ylim([-40 Rdlfaxislim]);
xlim([-timealigned 2]);

subplot(3,2,4)
y6 = Rd_meanlfHFmaxcatch(1:500);
plot(x,y6,'g','LineWidth', 1.5)
figure(1);hold on;
fill([x fliplr(x)], [ul_lfHFmaxcatch(1:500) fliplr(ll_lfHFmaxcatch(1:500))], 'g', 'FaceAlpha', 0.2, 'LineStyle', "none")
figure(1);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta LF (%)');
ylim([-40 Rdlfaxislim]);
xlim([-timealigned 2]);

subplot(3,2,5)
semilogy(x,pval_lfLFcatchmax1(1:500),'LineWidth',1.5)
figure(1);hold on;
if LF_indexes(1) ~= 0
    plot([x(LF_indexes(1)) x(LF_indexes(1))],[0 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
xlim([-timealigned 2]);
ylim([pval_lim 10^0]);
xlabel('Time (s)');
ylabel('p-value (-)');


subplot(3,2,6)
semilogy(x,pval_lfHFcatchmax1(1:500),'LineWidth',1.5)
figure(1);hold on;
if LF_indexes(2) ~= 0
    plot([x(LF_indexes(2)) x(LF_indexes(2))],[0 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
xlim([-timealigned 2]);
ylim([pval_lim 10^0]);
xlabel('Time (s)');
ylabel('p-value (-)');


% Figures GF mean curves and relative difference in mean force 
GFaxislim = 7; %limit of y axis of graphs for GF curves
Rdaxislim = 100; %limit of y axis of graphs for relative difference curves

figure(2); 
subplot(3,2,1)
y1 = meangfmaxcatchLF1(1:500);
y2 = meangfminadaptLF1(1:500);
plot(x,y1,'r--', x, y2, 'b', 'LineWidth', 1.5)
figure(2);hold on;
if GF_indexes(1) ~= 0
    plot([x(GF_indexes(1)) x(GF_indexes(1))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Low Friction')
ylabel('GF (N)');
ylim([0 GFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight catch', 'Minimal weight normal');

subplot(3,2,2)
y3 = meangfmaxcatchHF1(1:500);
y4 = meangfminadaptHF1(1:500);
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
figure(2);hold on;
if GF_indexes(2) ~= 0
    plot([x(GF_indexes(2)) x(GF_indexes(2))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('High Friction')
ylabel('GF (N)');
ylim([0 GFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight catch', 'Minimal weight normal');


subplot(3,2,3)
y5 = Rd_meangfLFmaxcatch(1:500);
plot(x,y5,'g','LineWidth', 1.5)
figure(2);hold on;
fill([x fliplr(x)], [ul_gfLFmaxcatch(1:500) fliplr(ll_gfLFmaxcatch(1:500))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(2);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
figure(2);hold on;
plot([-timealigned 2],[55 55], 'r','LineWidth',0.8)
ylabel('\Delta GF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);

subplot(3,2,4)
y6 = Rd_meangfHFmaxcatch(1:500);
plot(x,y6,'g','LineWidth', 1.5)
figure(2);hold on;
fill([x fliplr(x)], [ul_gfHFmaxcatch(1:500) fliplr(ll_gfHFmaxcatch(1:500))], 'g', 'FaceAlpha', 0.2, 'LineStyle', "none")
figure(2);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
figure(2);hold on;
plot([-timealigned 2],[55 55], 'r','LineWidth',0.8)
ylabel('\Delta GF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);

subplot(3,2,5)
semilogy(x,pval_gfLFcatchmax1(1:500),'LineWidth',1.5)
figure(2);hold on;
if GF_indexes(1) ~= 0
    plot([x(GF_indexes(1)) x(GF_indexes(1))],[0 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
xlim([-timealigned 2]);
ylim([pval_lim 10^0]);
xlabel('Time (s)');
ylabel('p-value (-)');

subplot(3,2,6)
semilogy(x,pval_gfHFcatchmax1(1:500),'LineWidth',1.5)
figure(2);hold on;
if GF_indexes(2) ~= 0
    plot([x(GF_indexes(2)) x(GF_indexes(2))],[0 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
xlim([-timealigned 2]);
ylim([pval_lim 10^0]);
xlabel('Time (s)');
ylabel('p-value (-)');


%% Plots min weight catch
% Figures LF mean curves and relative difference in mean force 

figure(3); 
subplot(3,2,1)
y7 = meanlfmaxadaptLF2(1:500);
y8 = meanlfmincatchLF2(1:500);
plot(x,y7,'r', x, y8, 'b--', 'LineWidth', 1.5)
figure(3);hold on;
if LF_indexes(3) ~= 0
    plot([x(LF_indexes(3)) x(LF_indexes(3))],[-40 Rdlfaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Low Friction')
xlabel('Time (s)');
ylabel('LF (N)');
ylim([0 LFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight normal', 'Minimal weight catch');

subplot(3,2,2)
y9 = meanlfmaxadaptHF2(1:500);
y10 = meanlfmincatchHF2(1:500);
plot(x,y9,'r',x,y10,'b--','LineWidth', 1.5)
figure(3);hold on;
if LF_indexes(4) ~= 0
    plot([x(LF_indexes(4)) x(LF_indexes(4))],[-40 Rdlfaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('High Friction')
ylabel('LF (N)');
ylim([0 LFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight normal', 'Minimal weight catch');


subplot(3,2,3)
y11 = Rd_meanlfLFmincatch(1:500);
plot(x,y11,'g','LineWidth', 1.5)
figure(3);hold on;
fill([x fliplr(x)], [ul_lfLFmincatch(1:500) fliplr(ll_lfLFmincatch(1:500))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(3);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta LF (%)');
ylim([-40 Rdlfaxislim]);
xlim([-timealigned 2]);

subplot(3,2,4)
y12 = Rd_meanlfHFmincatch(1:500);
plot(x,y12,'g','LineWidth', 1.5)
figure(3);hold on;
fill([x fliplr(x)], [ul_lfHFmincatch(1:500) fliplr(ll_lfHFmincatch(1:500))], 'g', 'FaceAlpha', 0.2, 'LineStyle', "none")
figure(3);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
ylabel('\Delta LF (%)');
ylim([-40 Rdlfaxislim]);
xlim([-timealigned 2]);

subplot(3,2,5)
semilogy(x,pval_lfLFcatchmin2(1:500),'LineWidth',1.5)
figure(3);hold on;
if LF_indexes(3) ~= 0
    plot([x(LF_indexes(3)) x(LF_indexes(3))],[0 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
xlim([-timealigned 2]);
ylim([pval_lim 10^0]);
xlabel('Time (s)');
ylabel('p-value (-)');

subplot(3,2,6)
semilogy(x,pval_lfHFcatchmin2(1:500),'LineWidth',1.5)
figure(3);hold on;
if LF_indexes(4) ~= 0
    plot([x(LF_indexes(4)) x(LF_indexes(4))],[0 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
xlabel('Time (s)');
ylabel('p-value (-)');
xlim([-timealigned 2]);
ylim([pval_lim 10^0]);

% Figures GF mean curves and relative difference in mean force 

figure(4); 
subplot(3,2,1)
y1 = meangfmaxadaptLF2(1:500);
y2 = meangfmincatchLF2(1:500);
plot(x,y1,'r', x, y2, 'b--', 'LineWidth', 1.5)
figure(4);hold on;
if GF_indexes(3) ~= 0
    plot([x(GF_indexes(3)) x(GF_indexes(3))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Low Friction')
ylabel('GF (N)');
ylim([0 GFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight normal', 'Minimal weight catch');

subplot(3,2,2)
y3 = meangfmaxadaptHF2(1:500);
y4 = meangfmincatchHF2(1:500);
plot(x,y3,'r',x,y4,'b--','LineWidth', 1.5)
figure(4);hold on;
if GF_indexes(4) ~= 0
    plot([x(GF_indexes(4)) x(GF_indexes(4))],[-40 Rdaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('High Friction')
ylabel('GF (N)');
ylim([0 GFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight normal', 'Minimal weight catch');


subplot(3,2,3)
y5 = Rd_meangfLFmincatch(1:500);
plot(x,y5,'g','LineWidth', 1.5)
figure(4);hold on;
fill([x fliplr(x)], [ul_gfLFmincatch(1:500) fliplr(ll_gfLFmincatch(1:500))], 'g', 'FaceAlpha', 0.2,'LineStyle', "none")
figure(4);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
figure(4);hold on;
plot([-timealigned 2],[55 55], 'r','LineWidth',0.8)
ylabel('\Delta GF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);

subplot(3,2,4)
y6 = Rd_meangfHFmincatch(1:500);
plot(x,y6,'g','LineWidth', 1.5)
figure(4);hold on;
fill([x fliplr(x)], [ul_gfHFmincatch(1:500) fliplr(ll_gfHFmincatch(1:500))], 'g', 'FaceAlpha', 0.2, 'LineStyle', "none")
figure(4);hold on;
plot([-timealigned 2],[0 0], 'Color',[0.5 0.5 0.5],'LineWidth',0.8)
figure(4);hold on;
plot([-timealigned 2],[55 55], 'r','LineWidth',0.8)
ylabel('\Delta GF (%)');
ylim([-40 Rdaxislim]);
xlim([-timealigned 2]);

subplot(3,2,5)
semilogy(x,pval_gfLFcatchmin2(1:500),'LineWidth',1.5)
figure(4);hold on;
if GF_indexes(3) ~= 0
    plot([x(GF_indexes(3)) x(GF_indexes(3))],[0 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
xlabel('Time (s)');
ylabel('p-value (-)');
xlim([-timealigned 2]);
ylim([pval_lim 10^0]);

subplot(3,2,6)
semilogy(x,pval_gfHFcatchmin2(1:500),'LineWidth',1.5)
figure(4);hold on;
if GF_indexes(4) ~= 0
    plot([x(GF_indexes(4)) x(GF_indexes(4))],[0 1], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
xlabel('Time (s)');
ylabel('p-value (-)');
xlim([-timealigned 2]);
ylim([pval_lim 10^0]);

end
        

