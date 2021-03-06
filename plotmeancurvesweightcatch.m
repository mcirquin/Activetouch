function [LF_pvalues,LF_time,LF_signDiff,GF_pvalues,GF_time,GF_signDiff] = plotmeancurvesweightcatch(alignedLFtable, alignedGFtable, tsteps, nparticipants, minimum)

if nparticipants == 15
    names=["AParache" ; "ARommel" ; "ASalden" ; "BDelhaye" ; "DDoumont" ; "FSchiltz" ; "GBrandsteert" ; "JDelforge"; "JDommisse"; "LColmant"; "MBronchart"; "MDausort"; "S_Vandergooten"; "SLedoux" ; "VFischer"];
elseif nparticipants == 13 
    names=["ADommisse" ; "AMarechal" ; "ATikke" ; "AWertelaers" ; "BJonnart" ; "CBedford" ; "CZwaenepoel" ; "ESchoonjans"; "ESpringel"; "LCirquin"; "MJMaldague"; "MRennesson"; "PLefèvre"];
end

%% Weight catch max (min to max weight)
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


%% Weight catch min (max to min weight)
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


%% Calculation of means and standard deviations 
%Load Forces

%Création des matrices vides

meanlfLFcatchmax1 = zeros(tsteps-1999,1);
meanlfLFadaptmin1 = zeros(tsteps-1999,1);
stdlfLFcatchmax1 = zeros(tsteps-1999,1);
stdlfLFadaptmin1 = zeros(tsteps-1999,1);

meanlfHFcatchmax1 = zeros(1,tsteps-1999);
meanlfHFadaptmin1 = zeros(1,tsteps-1999);
stdlfHFcatchmax1 = zeros(1,tsteps-1999);
stdlfHFadaptmin1 = zeros(1,tsteps-1999);

meanlfLFcatchmin2 = zeros(1,tsteps-1999);
meanlfLFadaptmax2 = zeros(1,tsteps-1999);
stdlfLFcatchmin2 = zeros(1,tsteps-1999);
stdlfLFadaptmax2 = zeros(1,tsteps-1999);

meanlfHFcatchmin2 = zeros(1,tsteps-1999);
meanlfHFadaptmax2 = zeros(1,tsteps-1999);
stdlfHFcatchmin2= zeros(1,tsteps-1999);
stdlfHFadaptmax2 = zeros(1,tsteps-1999);


% Remplissage avec moyennes et standards deviation 
meanlfLFcatchmax1=mean(lfLFcatchmax1,2);
meanlfLFadaptmin1=mean(lfLFadaptmin1,2);
stdlfLFcatchmax1=std(lfLFcatchmax1, 0, 2);
stdlfLFadaptmin1=std(lfLFadaptmin1, 0, 2);


meanlfHFcatchmax1=mean(lfHFcatchmax1,2);
meanlfHFadaptmin1=mean(lfHFadaptmin1,2);
stdlfHFcatchmax1=std(lfHFcatchmax1,0,2);
stdlfHFadaptmin1=std(lfHFadaptmin1,0,2);

meanlfLFcatchmin2=mean(lfLFcatchmin2,2);
meanlfLFadaptmax2=mean(lfLFadaptmax2,2);
stdlfLFcatchmin2=std(lfLFcatchmin2,0,2);
stdlfLFadaptmax2=std(lfLFadaptmax2,0,2);

meanlfHFcatchmin2=mean(lfHFcatchmin2,2);
meanlfHFadaptmax2=mean(lfHFadaptmax2,2);
stdlfHFcatchmin2=std(lfHFcatchmin2,0,2);
stdlfHFadaptmax2=std(lfHFadaptmax2,0,2);


%Grip Forces
%Création des matrices vides

meangfLFcatchmax1 = zeros(tsteps-1999,1);
meangfLFadaptmin1 = zeros(tsteps-1999,1);
stdgfLFcatchmax1 = zeros(tsteps-1999,1);
stdgfLFadaptmin1 = zeros(tsteps-1999,1);

meangfHFcatchmax1 = zeros(1,tsteps-1999);
meangfHFadaptmin1 = zeros(1,tsteps-1999);
stdgfHFcatchmax1 = zeros(1,tsteps-1999);
stdgfHFadaptmin1 = zeros(1,tsteps-1999);

meangfLFcatchmin2 = zeros(1,tsteps-1999);
meangfLFadaptmax2 = zeros(1,tsteps-1999);
stdgfLFcatchmin2 = zeros(1,tsteps-1999);
stdgfLFadaptmax2 = zeros(1,tsteps-1999);

meangfHFcatchmin2 = zeros(1,tsteps-1999);
meangfHFadaptmax2 = zeros(1,tsteps-1999);
stdgfHFcatchmin2= zeros(1,tsteps-1999);
stdgfHFadaptmax2 = zeros(1,tsteps-1999);


% Remplissage avec moyennes et standards deviation 
meangfLFcatchmax1=mean(gfLFcatchmax1,2);
meangfLFadaptmin1=mean(gfLFadaptmin1,2);
stdgfLFcatchmax1=std(gfLFcatchmax1, 0, 2);
stdgfLFadaptmin1=std(gfLFadaptmin1, 0, 2);


meangfHFcatchmax1=mean(gfHFcatchmax1,2);
meangfHFadaptmin1=mean(gfHFadaptmin1,2);
stdgfHFcatchmax1=std(gfHFcatchmax1,0,2);
stdgfHFadaptmin1=std(gfHFadaptmin1,0,2);

meangfLFcatchmin2=mean(gfLFcatchmin2,2);
meangfLFadaptmax2=mean(gfLFadaptmax2,2);
stdgfLFcatchmin2=std(gfLFcatchmin2,0,2);
stdgfLFadaptmax2=std(gfLFadaptmax2,0,2);

meangfHFcatchmin2=mean(gfHFcatchmin2,2);
meangfHFadaptmax2=mean(gfHFadaptmax2,2);
stdgfHFcatchmin2=std(gfHFcatchmin2,0,2);
stdgfHFadaptmax2=std(gfHFadaptmax2,0,2);

%% Standard deviation boundaries computation
%load force boundaries matrices
ul_lfLFcatchmax1 = zeros(1,tsteps-1999); %matrix for upper limit 
ll_lfLFcatchmax1 = zeros(1,tsteps-1999); %matrix for lower limit

ul_lfLFadaptmin1 = zeros(1,tsteps-1999); 
ll_lfLFadaptmin1 = zeros(1,tsteps-1999);

ul_lfHFcatchmax1 = zeros(1,tsteps-1999); 
ll_lfHFcatchmax1 = zeros(1,tsteps-1999);

ul_lfLFadaptmin1 = zeros(1,tsteps-1999); 
ll_lfLFadaptmin1 = zeros(1,tsteps-1999);

ul_lfLFcatchmin2 = zeros(1,tsteps-1999); 
ll_lfLFcatchmin2 = zeros(1,tsteps-1999);

ul_lfLFadaptmax2 = zeros(1,tsteps-1999); 
ll_lfLFadaptmax2 = zeros(1,tsteps-1999);

ul_lfHFcatchmin2 = zeros(1,tsteps-1999); 
ll_lfHFcatchmin2 = zeros(1,tsteps-1999);

ul_lfHFadaptmax2 = zeros(1,tsteps-1999); 
ll_lfHFadaptmax2 = zeros(1,tsteps-1999);

%grip forces boundaries matrices
ul_gfLFcatchmax1 = zeros(1,tsteps-1999); %matrix for upper limit 
ll_gfLFcatchmax1 = zeros(1,tsteps-1999); %matrix for lower limit

ul_gfLFadaptmin1 = zeros(1,tsteps-1999); 
ll_gfLFadaptmin1 = zeros(1,tsteps-1999);

ul_gfHFcatchmax1 = zeros(1,tsteps-1999); 
ll_gfHFcatchmax1 = zeros(1,tsteps-1999);

ul_gfLFadaptmin1 = zeros(1,tsteps-1999); 
ll_gfLFadaptmin1 = zeros(1,tsteps-1999);

ul_gfLFcatchmin2 = zeros(1,tsteps-1999); 
ll_gfLFcatchmin2 = zeros(1,tsteps-1999);

ul_gfLFadaptmax2 = zeros(1,tsteps-1999); 
ll_gfLFadaptmax2 = zeros(1,tsteps-1999);

ul_gfHFcatchmin2 = zeros(1,tsteps-1999); 
ll_gfHFcatchmin2 = zeros(1,tsteps-1999);

ul_gfHFadaptmax2 = zeros(1,tsteps-1999); 
ll_gfHFadaptmax2 = zeros(1,tsteps-1999);

%computation of the boundaries
for i=1:length(meanlfLFcatchmax1)
    %load forces
    ul_lfLFcatchmax1(i) = meanlfLFcatchmax1(i) + stdlfLFcatchmax1(i); 
    ll_lfLFcatchmax1(i) = meanlfLFcatchmax1(i) - stdlfLFcatchmax1(i);

    ul_lfLFadaptmin1(i) = meanlfLFadaptmin1(i) + stdlfLFadaptmin1(i);
    ll_lfLFadaptmin1(i) = meanlfLFadaptmin1(i) - stdlfLFadaptmin1(i);

    ul_lfHFcatchmax1(i) = meanlfHFcatchmax1(i) + stdlfHFcatchmax1(i); 
    ll_lfHFcatchmax1(i) = meanlfHFcatchmax1(i) - stdlfHFcatchmax1(i);

    ul_lfHFadaptmin1(i) = meanlfHFadaptmin1(i) + stdlfHFadaptmin1(i);
    ll_lfHFadaptmin1(i) = meanlfHFadaptmin1(i) - stdlfHFadaptmin1(i);

    ul_lfLFcatchmin2(i) = meanlfLFcatchmin2(i) + stdlfLFcatchmin2(i);
    ll_lfLFcatchmin2(i) = meanlfLFcatchmin2(i) - stdlfLFcatchmin2(i);

    ul_lfLFadaptmax2(i) = meanlfLFadaptmax2(i) + stdlfLFadaptmax2(i); 
    ll_lfLFadaptmax2(i) = meanlfLFadaptmax2(i) - stdlfLFadaptmax2(i);

    ul_lfHFcatchmin2(i) = meanlfHFcatchmin2(i) + stdlfHFcatchmin2(i); 
    ll_lfHFcatchmin2(i) = meanlfHFcatchmin2(i) - stdlfHFcatchmin2(i);

    ul_lfHFadaptmax2(i) = meanlfHFadaptmax2(i) + stdlfHFadaptmax2(i); 
    ll_lfHFadaptmax2(i) = meanlfHFadaptmax2(i) - stdlfHFadaptmax2(i);
    
    %grip forces
    ul_gfLFcatchmax1(i) = meangfLFcatchmax1(i) + stdgfLFcatchmax1(i); 
    ll_gfLFcatchmax1(i) = meangfLFcatchmax1(i) - stdgfLFcatchmax1(i);

    ul_gfLFadaptmin1(i) = meangfLFadaptmin1(i) + stdgfLFadaptmin1(i);
    ll_gfLFadaptmin1(i) = meangfLFadaptmin1(i) - stdgfLFadaptmin1(i);

    ul_gfHFcatchmax1(i) = meangfHFcatchmax1(i) + stdgfHFcatchmax1(i); 
    ll_gfHFcatchmax1(i) = meangfHFcatchmax1(i) - stdgfHFcatchmax1(i);

    ul_gfHFadaptmin1(i) = meangfHFadaptmin1(i) + stdgfHFadaptmin1(i);
    ll_gfHFadaptmin1(i) = meangfHFadaptmin1(i) - stdgfHFadaptmin1(i);

    ul_gfLFcatchmin2(i) = meangfLFcatchmin2(i) + stdgfLFcatchmin2(i);
    ll_gfLFcatchmin2(i) = meangfLFcatchmin2(i) - stdgfLFcatchmin2(i);
    
    ul_gfLFadaptmax2(i) = meangfLFadaptmax2(i) + stdgfLFadaptmax2(i); 
    ll_gfLFadaptmax2(i) = meangfLFadaptmax2(i) - stdgfLFadaptmax2(i);

    ul_gfHFcatchmin2(i) = meangfHFcatchmin2(i) + stdgfHFcatchmin2(i); 
    ll_gfHFcatchmin2(i) = meangfHFcatchmin2(i) - stdgfHFcatchmin2(i);

    ul_gfHFadaptmax2(i) = meangfHFadaptmax2(i) + stdgfHFadaptmax2(i); 
    ll_gfHFadaptmax2(i) = meangfHFadaptmax2(i) - stdgfHFadaptmax2(i);
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
        LF_signDiff(1) = ((meanlfLFcatchmax1(i) - meanlfLFadaptmin1(i))/min(meanlfLFcatchmax1(i),meanlfLFadaptmin1(i)))*100;
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
        GF_signDiff(1) = ((meangfLFcatchmax1(i) - meangfLFadaptmin1(i))/min(meangfLFcatchmax1(i),meangfLFadaptmin1(i)))*100;
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
        LF_signDiff(2) = ((meanlfHFcatchmax1(i) - meanlfHFadaptmin1(i))/min(meanlfHFcatchmax1(i),meanlfHFadaptmin1(i)))*100;
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
        GF_signDiff(2) = ((meangfHFcatchmax1(i) - meangfHFadaptmin1(i))/min(meangfHFcatchmax1(i),meangfHFadaptmin1(i)))*100;
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
        LF_signDiff(3) = ((meanlfLFadaptmax2(i) - meanlfLFcatchmin2(i))/min(meanlfLFadaptmax2(i),meanlfLFcatchmin2(i)))*100;
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
        GF_signDiff(3) = ((meangfLFadaptmax2(i) - meangfLFcatchmin2(i))/min(meangfLFadaptmax2(i),meangfLFcatchmin2(i)))*100;
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
        LF_signDiff(4) = ((meanlfHFadaptmax2(i) - meanlfHFcatchmin2(i))/min(meanlfHFadaptmax2(i),meanlfHFcatchmin2(i)))*100;
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
        GF_signDiff(4) = ((meangfHFadaptmax2(i) - meangfHFcatchmin2(i))/min(meangfHFadaptmax2(i),meangfHFcatchmin2(i)))*100;
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
        GF_time(i) = x(GF_indexes(i));
    else 
        GF_time(i) = nan;
    end
end

%% Moment of significative difference between the curves (T-test)
%{
% T-tests for LF
LF_pvalues = [];
LF_indexes = [];

%catch max weight LF vs adaptation min weight LF
[h1,p1] = ttest2(lfLFcatchmax1.',lfLFadaptmin1.');%transposée des matrices pour faire le T-test dans le bon sens (pour chaque pas de temps)
for i = minimum:(tsteps-1999)
    if p1(i) < 0.05
        LF_pvalues(1) = p1(i);
        LF_indexes(1) = i;
        break
    end 
end

%catch max weight HF vs adaptation min weight HF
[h2,p2] = ttest2(lfHFcatchmax1.',lfHFadaptmin1.');
for i = minimum:(tsteps-1999)
    if p2(i) < 0.05
        LF_pvalues(2) = p2(i);
        LF_indexes(2) = i;
        break
    end 
end

%catch min weight LF vs adaptation max weight LF
[h3,p3] = ttest2(lfLFcatchmin2.',lfLFadaptmax2.');
for i = minimum:(tsteps-1999)
    if p3(i) < 0.05
        LF_pvalues(3) = p3(i);
        LF_indexes(3) = i;
        break
    end 
end

%catch min weight HF vs adaptation max weight HF
[h4,p4] = ttest2(lfHFcatchmin2.',lfHFadaptmax2.');
for i = minimum:(tsteps-1999)
    if p4(i) < 0.05
        LF_pvalues(4) = p4(i);
        LF_indexes(4) = i;
        break
    end 
end


% T-tests for GF
GF_pvalues = [];
GF_indexes = [];

%catch max weight LF vs adaptation min weight LF
[h5,p5] = ttest2(gfLFcatchmax1.',gfLFadaptmin1.');%transposée des matrices pour faire le T-test dans le bon sens (pour chaque pas de temps)
for i = minimum:(tsteps-1999)
    if p5(i) < 0.05
        GF_pvalues(1) = p5(i);
        GF_indexes(1) = i;
        break
    end 
end

%catch max weight HF vs adaptation min weight HF
[h6,p6] = ttest2(gfHFcatchmax1.',gfHFadaptmin1.');
for i = minimum:(tsteps-1999)
    if p6(i) < 0.05
        GF_pvalues(2) = p6(i);
        GF_indexes(2) = i;
        break
    end 
end

%catch min weight LF vs adaptation max weight LF
[h7,p7] = ttest2(gfLFcatchmin2.',gfLFadaptmax2.');
for i = minimum:(tsteps-1999)
    if p7(i) < 0.05
        GF_pvalues(3) = p7(i);
        GF_indexes(3) = i;
        break
    end 
end

%catch min weight HF vs adaptation max weight HF
[h8,p8] = ttest2(gfHFcatchmin2.',gfHFadaptmax2.');
for i = minimum:(tsteps-1999)
    if p8(i) < 0.05
        GF_pvalues(4) = p8(i);
        GF_indexes(4) = i;
        break
    end 
end
%}

%% Plots 
% Figures LF
%LFaxislim = 8; %limit of y axis of graphs for LF curves young
%GFaxislim = 8; %limit of y axis of graphs for GF curves young

LFaxislim = 7; %limit of y axis of graphs for LF curves elderly
GFaxislim = 7; %limit of y axis of graphs for GF curves elderly

figure; 

subplot(2,2,1)
y1 = meanlfLFcatchmax1(1:500);
y2 = meanlfLFadaptmin1(1:500);
plot(x,y1,'r--', x, y2, 'b', 'LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_lfLFcatchmax1(1:500) fliplr(ll_lfLFcatchmax1(1:500))], 'r', 'FaceAlpha', 0.2)
hold on
fill([x fliplr(x)], [ul_lfLFadaptmin1(1:500) fliplr(ll_lfLFadaptmin1(1:500))], 'b', 'FaceAlpha', 0.2)
hold on
if LF_indexes(1) ~= 0
    plot([x(LF_indexes(1)) x(LF_indexes(1))],[0 LFaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Low friction')
xlabel('Time (s)');
ylabel('LF (N)');
ylim([0 LFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight catch', 'Minimal weight normal');

subplot(2,2,2)
y3 = meanlfHFcatchmax1(1:500);
y4 = meanlfHFadaptmin1(1:500);
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_lfHFcatchmax1(1:500) fliplr(ll_lfLFcatchmax1(1:500))], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfHFadaptmin1(1:500) fliplr(ll_lfHFadaptmin1(1:500))], 'b', 'FaceAlpha', 0.2)
hold on
if LF_indexes(2) ~= 0
    plot([x(LF_indexes(2)) x(LF_indexes(2))],[0 LFaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('High friction')
xlabel('Time (s)');
ylabel('LF (N)');
ylim([0 LFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight catch', 'Minimal weight normal');

subplot(2,2,3)
y5 = meanlfLFcatchmin2(1:500);
y6 = meanlfLFadaptmax2(1:500);
plot(x,y6,'r', x,y5,'b--','LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_lfLFcatchmin2(1:500) fliplr(ll_lfLFcatchmin2(1:500))], 'b', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfLFadaptmax2(1:500) fliplr(ll_lfLFadaptmax2(1:500))], 'r', 'FaceAlpha', 0.2)
y=get(gca,'ylim');
if LF_indexes(3) ~= 0
    plot([x(LF_indexes(3)) x(LF_indexes(3))],[0 LFaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('Low friction')
xlabel('Time (s)');
ylabel('LF (N)');
ylim([0 LFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight normal','Minimal weight catch');

subplot(2,2,4)
y7 = meanlfHFcatchmin2(1:500);
y8 = meanlfHFadaptmax2(1:500);
plot(x,y8,'r', x,y7,'b--','LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_lfHFcatchmin2(1:500) fliplr(ll_lfHFcatchmin2(1:500))], 'b', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfHFadaptmax2(1:500) fliplr(ll_lfHFadaptmax2(1:500))], 'r', 'FaceAlpha', 0.2)
y=get(gca,'ylim');
if LF_indexes(4) ~= 0
    plot([x(LF_indexes(4)) x(LF_indexes(4))],[0 LFaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('High friction')
xlabel('Time (s)');
ylabel('LF (N)');
ylim([0 LFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight normal','Minimal weight catch');

%suptitle( 'Adaptation to weight during the first movement of weight catch trials - Elderly participants');
suptitle( 'Adaptation to weight during the first movement of weight catch trials');

% Figures GF

figure; 

subplot(2,2,1)
y1 = meangfLFcatchmax1(1:500);
y2 = meangfLFadaptmin1(1:500);
plot(x,y1,'r--',x, y2, 'b', 'LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_gfLFcatchmax1(1:500) fliplr(ll_gfLFcatchmax1(1:500))], 'r', 'FaceAlpha', 0.2)
hold on
fill([x fliplr(x)], [ul_gfLFadaptmin1(1:500) fliplr(ll_gfLFadaptmin1(1:500))], 'b', 'FaceAlpha', 0.2)
hold on
y=get(gca,'ylim');
if GF_indexes(1) ~= 0
    plot([x(GF_indexes(1)) x(GF_indexes(1))],[0 GFaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
legend('', '')
title('Low friction')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 GFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight catch', 'Minimal weight normal');

subplot(2,2,2)
y3 = meangfHFcatchmax1(1:500);
y4 = meangfHFadaptmin1(1:500);
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_gfHFcatchmax1(1:500) fliplr(ll_gfHFcatchmax1(1:500))], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_gfHFadaptmin1(1:500) fliplr(ll_gfHFadaptmin1(1:500))], 'b', 'FaceAlpha', 0.2)
hold on
y=get(gca,'ylim');
if GF_indexes(2) ~= 0
    plot([x(GF_indexes(2)) x(GF_indexes(2))],[0 GFaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('High friction')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 GFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight catch', 'Minimal weight normal');

subplot(2,2,3)
y5 = meangfLFcatchmin2(1:500);
y6 = meangfLFadaptmax2(1:500);
plot(x,y6,'r',x,y5,'b--', 'LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_gfLFcatchmin2(1:500) fliplr(ll_gfLFcatchmin2(1:500))], 'b', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_gfLFadaptmax2(1:500) fliplr(ll_gfLFadaptmax2(1:500))], 'r', 'FaceAlpha', 0.2)
hold on
y=get(gca,'ylim');
if GF_indexes(3) ~= 0
    plot([x(GF_indexes(3)) x(GF_indexes(3))],[0 GFaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('Low friction')
xlabel('Time (s)');
ylabel('GF (N)');
xlim([-timealigned 2]);
ylim([0 GFaxislim]);
legend('Maximal weight normal','Minimal weight catch');

subplot(2,2,4)
y7 = meangfHFcatchmin2(1:500);
y8 = meangfHFadaptmax2(1:500);
plot(x,y8,'r',x,y7,'b--','LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_gfHFcatchmin2(1:500) fliplr(ll_gfHFcatchmin2(1:500))], 'b', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_gfHFadaptmax2(1:500) fliplr(ll_gfHFadaptmax2(1:500))], 'r', 'FaceAlpha', 0.2)
hold on
if GF_indexes(4) ~= 0
    plot([x(GF_indexes(4)) x(GF_indexes(4))],[0 GFaxislim], 'Color',[0.5 0.5 0.5],'LineWidth',1.2)
end
title('High friction')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 GFaxislim]);
xlim([-timealigned 2]);
legend('Maximal weight normal','Minimal weight catch');

%suptitle( 'Adaptation to weight during the first movement of weight catch trials - Elderly participants');
suptitle( 'Adaptation to weight during the first movement of weight catch trials');

end
