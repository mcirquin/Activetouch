function meancurves = plotmeancurvesweightcatch(alignedLFtable, alignedGFtable, tsteps, nparticipants)
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
nessais8=16;
lfLFadaptmin1=zeros(tsteps-1999,nessais8*nparticipants);
gfLFadaptmin1=zeros(tsteps-1999,nessais8*nparticipants);

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
nessais7=5;
lfHFcatchmax1=zeros(tsteps-1999,nessais7*nparticipants);
gfHFcatchmax1=zeros(tsteps-1999,nessais7*nparticipants);

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
nessais7=5;
lfLFcatchmin2=zeros(tsteps-1999,nessais7*nparticipants);
gfLFcatchmin2=zeros(tsteps-1999,nessais7*nparticipants);

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


meanlfLFcatchmax1=mean(lfLFcatchmax1,2);
meanlfLFadaptmin1=mean(lfLFadaptmin1,2);
stdlfLFcatchmax1=std(lfLFcatchmax1, 0, 2);
stdlfLFadaptmin1=std(lfLFadaptmin1, 0, 2);
---------------------------------------------------------

meanlfHFcatchmax1=mean(lfHFcatchmax1,2);
meanlfLFadaptmax2=mean(lfLFadaptmax2,2);
stdlfHFcatchmax2=std(lfHFcatchmax1,0,2);
stdlfLFadaptmax2=std(lfLFadaptmax2,0,2);

meanlfLFcatchmin2=mean(lfLFcatchmin2,2);
meanlfHFadaptmin1=mean(lfHFadaptmin1,2);
stdlfLFcatchmin2=std(lfLFcatchmin2,0,2);
stdlfHFadaptmin1=std(lfHFadaptmin1,0,2);

meanlfHFcatchmin2=mean(lfmincatchHF2,2);
meanlfHFadaptmax2=mean(lfLFadaptmin1,2);
stdlfmincatchHF2=std(lfmincatchHF2,0,2);
stdlfminadaptLF2=std(lfLFadaptmin1,0,2);


%Grip Forces
meangfLFcatchmax1 = zeros(1,tsteps-1999);
meangfLFadaptmin1 = zeros(1,tsteps-1999);
stdgfLFcatchmax1 = zeros(1,tsteps-1999);
stdgfLFadaptmin1 = zeros(1,tsteps-1999);

meangfLFcatchmin2 = zeros(1,tsteps-1999);
meangfLFadaptmax2 = zeros(1,tsteps-1999);
stdgfLFcatchmin2 = zeros(1,tsteps-1999);
stdgfLFadaptmax2 = zeros(1,tsteps-1999);

meangfLFcatchmin2 = zeros(1,tsteps-1999);
meangfHFadaptmin1 = zeros(1,tsteps-1999);
stdgfLFcatchmin2 = zeros(1,tsteps-1999);
stdgfHFadaptmin1 = zeros(1,tsteps-1999);

meangfmincatchHF2 = zeros(1,tsteps-1999);
meangfminadaptLF2 = zeros(1,tsteps-1999);
stdgfmincatchHF2 = zeros(1,tsteps-1999);
stdgfminadaptLF2 = zeros(1,tsteps-1999);


meangfLFcatchmax1=mean(gfLFcatchmax1,2);
meangfLFadaptmin1=mean(gfHFadaptmax2,2);
stdgfLFcatchmax1=std(gfLFcatchmax1, 0,2);
stdgfLFadaptmin1=std(lfHFadaptmax2,0,2);

meangfLFcatchmin2=mean(gfLFcatchmin2,2);
meangfLFadaptmax2=mean(gfLFadaptmax2,2);
stdgfLFcatchmin2=std(gfLFcatchmin2,0,2);
stdgfLFadaptmax2=std(gfLFadaptmax2,0,2);

meangfLFcatchmin2=mean(gfLFcatchmin2,2);
meangfHFadaptmin1=mean(gfHFadaptmin1,2);
stdgfLFcatchmin2=std(gfLFcatchmin2,0,2);
stdgfHFadaptmin1=std(gfHFadaptmin1,0,2);

meangfmincatchHF2=mean(gfmincatchHF2,2);
meangfminadaptLF2=mean(gfLFadaptmin1,2);
stdgfmincatchHF2=std(gfmincatchHF2,0,2);
stdgfminadaptLF2=std(gfLFadaptmin1,0,2);


%% Standard deviation boundaries computation
%load force boundaries matrices
ul_lfLFcatchmax1 = zeros(1,tsteps-1999); %matrix for upper limit 
ll_lfLFcatchmax1 = zeros(1,tsteps-1999); %matrix for lower limit

ul_lfLFadaptmin1 = zeros(1,tsteps-1999); 
ll_lfLFadaptmin1 = zeros(1,tsteps-1999);

ul_lfHFcatchmax2 = zeros(1,tsteps-1999); 
ll_lfHFcatchmax2 = zeros(1,tsteps-1999);

ul_lfLFadaptmax2 = zeros(1,tsteps-1999); 
ll_lfLFadaptmax2 = zeros(1,tsteps-1999);

ul_lfLFcatchmin2 = zeros(1,tsteps-1999); 
ll_lfLFcatchmin2 = zeros(1,tsteps-1999);

ul_lfHFadaptmin1 = zeros(1,tsteps-1999); 
ll_lfHFadaptmin1 = zeros(1,tsteps-1999);

ul_lfmincatchHF2 = zeros(1,tsteps-1999); 
ll_lfmincatchHF2 = zeros(1,tsteps-1999);

ul_lfminadaptLF2 = zeros(1,tsteps-1999); 
ll_lfminadaptLF2 = zeros(1,tsteps-1999);

%grip forces boundaries matrices
ul_gfLFcatchmax1 = zeros(1,tsteps-1999); %matrix for upper limit 
ll_gfLFcatchmax1 = zeros(1,tsteps-1999); %matrix for lower limit

ul_gfLFadaptmin1 = zeros(1,tsteps-1999); 
ll_gfLFadaptmin1 = zeros(1,tsteps-1999);

ul_gfLFcatchmin2 = zeros(1,tsteps-1999); 
ll_gfLFcatchmin2 = zeros(1,tsteps-1999);

ul_gfLFadaptmax2 = zeros(1,tsteps-1999); 
ll_gfLFadaptmax2 = zeros(1,tsteps-1999);

ul_gfLFcatchmin2 = zeros(1,tsteps-1999); 
ll_gfLFcatchmin2 = zeros(1,tsteps-1999);

ul_gfHFadaptmin1 = zeros(1,tsteps-1999); 
ll_gfHFadaptmin1 = zeros(1,tsteps-1999);

ul_gfmincatchHF2 = zeros(1,tsteps-1999); 
ll_gfmincatchHF2 = zeros(1,tsteps-1999);

ul_gfminadaptLF2 = zeros(1,tsteps-1999); 
ll_gfminadaptLF2 = zeros(1,tsteps-1999);

%computation of the boundaries
for i=1:length(meanlfLFcatchmax1)
    %load forces
    ul_lfLFcatchmax1(i) = meanlfLFcatchmax1(i) + stdlfLFcatchmax1(i); 
    ll_lfLFcatchmax1(i) = meanlfLFcatchmax1(i) - stdlfLFcatchmax1(i);

    ul_lfLFadaptmin1(i) = meanlfLFadaptmin1(i) + stdlfLFadaptmin1(i);
    ll_lfLFadaptmin1(i) = meanlfLFadaptmin1(i) - stdlfLFadaptmin1(i);

    ul_lfHFcatchmax2(i) = meanlfHFcatchmax1(i) + stdlfHFcatchmax2(i); 
    ll_lfHFcatchmax2(i) = meanlfHFcatchmax1(i) - stdlfHFcatchmax2(i);

    ul_lfLFadaptmax2(i) = meanlfLFadaptmax2(i) + stdlfLFadaptmax2(i);
    ll_lfLFadaptmax2(i) = meanlfLFadaptmax2(i) - stdlfLFadaptmax2(i);

    ul_lfLFcatchmin2(i) = meanlfLFcatchmin2(i) + stdlfLFcatchmin2(i);
    ll_lfLFcatchmin2(i) = meanlfLFcatchmin2(i) - stdlfLFcatchmin2(i);

    ul_lfHFadaptmin1(i) = meanlfHFadaptmin1(i) + stdlfHFadaptmin1(i); 
    ll_lfHFadaptmin1(i) = meanlfHFadaptmin1(i) - stdlfHFadaptmin1(i);

    ul_lfmincatchHF2(i) = meanlfHFcatchmin2(i) + stdlfmincatchHF2(i); 
    ll_lfmincatchHF2(i) = meanlfHFcatchmin2(i) - stdlfmincatchHF2(i);

    ul_lfminadaptLF2(i) = meanlfHFadaptmax2(i) + stdlfminadaptLF2(i); 
    ll_lfminadaptLF2(i) = meanlfHFadaptmax2(i) - stdlfminadaptLF2(i);
    
    %grip forces
    ul_gfLFcatchmax1(i) = meangfLFcatchmax1(i) + stdgfLFcatchmax1(i); 
    ll_gfLFcatchmax1(i) = meangfLFcatchmax1(i) - stdgfLFcatchmax1(i);

    ul_gfLFadaptmin1(i) = meangfLFadaptmin1(i) + stdgfLFadaptmin1(i);
    ll_gfLFadaptmin1(i) = meangfLFadaptmin1(i) - stdgfLFadaptmin1(i);

    ul_gfLFcatchmin2(i) = meangfLFcatchmin2(i) + stdgfLFcatchmin2(i); 
    ll_gfLFcatchmin2(i) = meangfLFcatchmin2(i) - stdgfLFcatchmin2(i);

    ul_gfLFadaptmax2(i) = meangfLFadaptmax2(i) + stdgfLFadaptmax2(i);
    ll_gfLFadaptmax2(i) = meangfLFadaptmax2(i) - stdgfLFadaptmax2(i);

    ul_gfLFcatchmin2(i) = meangfLFcatchmin2(i) + stdgfLFcatchmin2(i);
    ll_gfLFcatchmin2(i) = meangfLFcatchmin2(i) - stdgfLFcatchmin2(i);

    ul_gfHFadaptmin1(i) = meangfHFadaptmin1(i) + stdgfHFadaptmin1(i); 
    ll_gfHFadaptmin1(i) = meangfHFadaptmin1(i) - stdgfHFadaptmin1(i);
    
    ul_gfmincatchHF2(i) = meangfmincatchHF2(i) + stdgfmincatchHF2(i); 
    ll_gfmincatchHF2(i) = meangfmincatchHF2(i) - stdgfmincatchHF2(i);

    ul_gfminadaptLF2(i) = meangfminadaptLF2(i) + stdgfminadaptLF2(i); 
    ll_gfminadaptLF2(i) = meangfminadaptLF2(i) - stdgfminadaptLF2(i);
end

%% Plots 
% Figures LF

figure; 

x=10.005:0.005:13.8;
subplot(2,2,1)
y1 = meanlfLFcatchmax1;
y2 = meanlfLFadaptmin1;
plot(x,y1,'r--', x, y2, 'b', 'LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_lfLFcatchmax1 fliplr(ll_lfLFcatchmax1)], 'r', 'FaceAlpha', 0.2)
hold on
fill([x fliplr(x)], [ul_lfLFadaptmin1 fliplr(ll_lfLFadaptmin1)], 'b', 'FaceAlpha', 0.2)
legend('', '')
title('Maximal manipulandum weight')
xlabel('Time (s)');
ylabel('LF (N)');
legend('Low friction catch', 'High friction normal');

subplot(2,2,2)
y3 = meanlfLFcatchmin2;
y4 = meanlfHFadaptmin1;
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_lfLFcatchmin2 fliplr(ll_lfLFcatchmin2)], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfHFadaptmin1 fliplr(ll_lfHFadaptmin1)], 'b', 'FaceAlpha', 0.2)
title('Minimal manipulandum weight')
xlabel('Time (s)');
ylabel('LF (N)');
legend('Low friction catch', 'High friction normal');

subplot(2,2,3)
y5 = meanlfHFcatchmax1;
y6 = meanlfLFadaptmax2;
plot(x,y6,'r', x,y5,'b--','LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_lfHFcatchmax2 fliplr(ll_lfHFcatchmax2)], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfLFadaptmax2 fliplr(ll_lfLFadaptmax2)], 'b', 'FaceAlpha', 0.2)
title('Maximal manipulandum weight')
xlabel('Time (s)');
ylabel('LF (N)');
legend('Low friction normal', 'High friction catch');

subplot(2,2,4)
y7 = meanlfHFcatchmin2;
y8 = meanlfHFadaptmax2;
plot(x,y8,'r', x,y7,'b--','LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_lfmincatchHF2 fliplr(ll_lfmincatchHF2)], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfminadaptLF2 fliplr(ll_lfminadaptLF2)], 'b', 'FaceAlpha', 0.2)
title('Minimal manipulandum weight')
xlabel('Time (s)');
ylabel('LF (N)');
legend('Low friction normal', 'High friction catch');

suptitle( 'Adaptation to friction during the first movement of friction catch trials - Elderly participants');
suptitle( 'Adaptation to friction during the first movement of friction catch trials - Young participants');

% Figures GF

figure; 

x=10.005:0.005:13.8;
subplot(2,2,1)
y1 = meangfLFcatchmax1;
y2 = meangfLFadaptmin1;
plot(x,y1,'r--',x, y2, 'b', 'LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_gfLFcatchmax1 fliplr(ll_gfLFcatchmax1)], 'r', 'FaceAlpha', 0.2)
hold on
fill([x fliplr(x)], [ul_gfLFadaptmin1 fliplr(ll_gfLFadaptmin1)], 'b', 'FaceAlpha', 0.2)
legend('', '')
title('Maximal manipulandum weight')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 15]);
legend('Low friction catch', 'High friction normal');

subplot(2,2,2)
y3 = meangfLFcatchmin2;
y4 = meangfHFadaptmin1;
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_gfLFcatchmin2 fliplr(ll_gfLFcatchmin2)], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_gfHFadaptmin1 fliplr(ll_gfHFadaptmin1)], 'b', 'FaceAlpha', 0.2)
title('Minimal manipulandum weight')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 15]);
legend('Low friction catch', 'High friction normal');

subplot(2,2,3)
y5 = meangfLFcatchmin2;
y6 = meangfLFadaptmax2;
plot(x,y6,'r',x,y5,'b--', 'LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_gfLFcatchmin2 fliplr(ll_gfLFcatchmin2)], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_gfLFadaptmax2 fliplr(ll_gfLFadaptmax2)], 'b', 'FaceAlpha', 0.2)
title('Maximal manipulandum weight')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 15]);
legend('Low friction normal', 'High friction catch');

subplot(2,2,4)
y7 = meangfmincatchHF2;
y8 = meangfminadaptLF2;
plot(x,y8,'r',x,y7,'b--','LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_gfmincatchHF2 fliplr(ll_lfmincatchHF2)], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_gfminadaptLF2 fliplr(ll_lfminadaptLF2)], 'b', 'FaceAlpha', 0.2)
title('Minimal manipulandum weight')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 15]);
legend('Low friction normal', 'High friction catch');

suptitle( 'Adaptation to friction during the first movement of friction catch trials - Elderly participants');
suptitle( 'Adaptation to friction during the first movement of friction catch trials - Young participants');

end