function var = plotmeancurvesfrictioncatch(alignedLFtable, alignedGFtable, tsteps, nparticipants)
%% Friction catch low friction (high to low friction)

%low friction catch under max weight 
nessais1=4;
lfmaxcatchLF1=zeros(tsteps-1999,nessais1*nparticipants);
gfmaxcatchLF1=zeros(tsteps-1999,nessais1*nparticipants);

lfmaxcatchLF1 = alignedLFtable(:,1:108:end);  
lfmaxcatchLF1 = [lfmaxcatchLF1 alignedLFtable(:,13:108:end)];
lfmaxcatchLF1 = [lfmaxcatchLF1 alignedLFtable(:,61:108:end)];
lfmaxcatchLF1 = [lfmaxcatchLF1 alignedLFtable(:,79:108:end)];

gfmaxcatchLF1=alignedGFtable(:,1:108:end);
gfmaxcatchLF1=[gfmaxcatchLF1 alignedGFtable(:,13:108:end)];
gfmaxcatchLF1=[gfmaxcatchLF1 alignedGFtable(:,61:108:end)];
gfmaxcatchLF1=[gfmaxcatchLF1 alignedGFtable(:,61:108:end)];

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



%low friction catch under min weight 
nessais3=3;
lfmincatchLF1=zeros(tsteps-1999,nessais3*nparticipants);
gfmincatchLF1=zeros(tsteps-1999,nessais3*nparticipants);

lfmincatchLF1=alignedLFtable(:,31:108:end);
lfmincatchLF1=[lfmincatchLF1 alignedLFtable(:,43:108:end)];
lfmincatchLF1=[lfmincatchLF1 alignedLFtable(:,91:108:end)];

gfmincatchLF1=alignedGFtable(:,31:108:end);
gfmincatchLF1=[gfmincatchLF1 alignedGFtable(:,43:108:end)];
gfmincatchLF1=[gfmincatchLF1 alignedGFtable(:,91:108:end)];

%high friction adaptation under min weight 
nessais4=18;
lfminadaptHF1=zeros(tsteps-1999,nessais4*nparticipants);
gfminadaptHF1=zeros(tsteps-1999,nessais4*nparticipants);

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


%% Friction catch high friction (low to high friction)

%high friction catch under max weight 
nessais5=3;
lfmaxcatchLF2=zeros(tsteps-1999,nessais5*nparticipants);
gfmaxcatchLF2=zeros(tsteps-1999,nessais5*nparticipants);

lfmaxcatchLF2=alignedLFtable(:,55:108:end);
lfmaxcatchLF2=[lfmaxcatchLF2 alignedLFtable(:,73:108:end)];
lfmaxcatchLF2=[lfmaxcatchLF2 alignedLFtable(:,97:108:end)];

gfmaxcatchLF2=alignedGFtable(:,55:108:end);
gfmaxcatchLF2=[gfmaxcatchLF2 alignedGFtable(:,73:108:end)];
gfmaxcatchLF2=[gfmaxcatchLF2 alignedGFtable(:,97:108:end)];


%low friction adaptation under max weight 
nessais6=20;
lfmaxadaptHF2=zeros(tsteps-1999,nessais6*nparticipants);
gfmaxadaptHF2=zeros(tsteps-1999,nessais6*nparticipants);

lfmaxadaptHF2=alignedLFtable(:,2:108:end);
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,3:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,14:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,15:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,16:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,50:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,62:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,63:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,80:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,81:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,82:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,34:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,35:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,36:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,47:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,48:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,72:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,94:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,95:108:end)];
lfmaxadaptHF2=[lfmaxadaptHF2 alignedLFtable(:,96:108:end)];

gfmaxadaptHF2=alignedGFtable(:,2:108:end);
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,3:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,14:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,15:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,16:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,50:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,62:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,63:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,80:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,81:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,82:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,34:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,35:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,36:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,47:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,48:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,72:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,94:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,95:108:end)];
gfmaxadaptHF2=[gfmaxadaptHF2 alignedGFtable(:,96:108:end)];



%high friction catch under min weight 
nessais7=4;
lfmincatchLF2=zeros(tsteps-1999,nessais7*nparticipants);
gfmincatchLF2=zeros(tsteps-1999,nessais7*nparticipants);

lfmincatchLF2=alignedLFtable(:,7:108:end);
lfmincatchLF2=[lfmincatchLF2 alignedLFtable(:,19:108:end)];
lfmincatchLF2=[lfmincatchLF2 alignedLFtable(:,37:108:end)];
lfmincatchLF2=[lfmincatchLF2 alignedLFtable(:,85:108:end)];

gfmincatchLF2=alignedGFtable(:,7:108:end);
gfmincatchLF2=[gfmincatchLF2 alignedGFtable(:,19:108:end)];
gfmincatchLF2=[gfmincatchLF2 alignedGFtable(:,37:108:end)];
gfmincatchLF2=[gfmincatchLF2 alignedGFtable(:,85:108:end)];


%low friction adaptation under min weight 
nessais8=16;
lfminadaptHF2=zeros(tsteps-1999,nessais8*nparticipants);
gfminadaptHF2=zeros(tsteps-1999,nessais8*nparticipants);

lfminadaptHF2=alignedLFtable(:,5:108:end);
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,6:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,18:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,52:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,53:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,54:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,65:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,66:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,84:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,32:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,44:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,45:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,68:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,69:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,70:108:end)];
lfminadaptHF2=[lfminadaptHF2 alignedLFtable(:,92:108:end)];

gfminadaptHF2=alignedGFtable(:,5:108:end);
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,6:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,18:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,52:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,53:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,54:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,65:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,66:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,84:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,32:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,44:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,45:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,68:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,69:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,70:108:end)];
gfminadaptHF2=[gfminadaptHF2 alignedGFtable(:,92:108:end)];



%% Calculation of means and standard deviations 
%Load Forces
meanlfmaxcatchLF1 = zeros(1,tsteps-1999);
meanlfmaxadaptHF1 = zeros(1,tsteps-1999);
stdlfmaxcatchLF1 = zeros(1,tsteps-1999);
stdlfmaxadaptHF1 = zeros(1,tsteps-1999);

meanlfmaxcatchLF2 = zeros(1,tsteps-1999);
meanlfmaxadaptHF2 = zeros(1,tsteps-1999);
stdlfmaxcatchLF2 = zeros(1,tsteps-1999);
stdlfmaxadaptHF2 = zeros(1,tsteps-1999);

meanlfmincatchLF1 = zeros(1,tsteps-1999);
meanlfminadaptHF1 = zeros(1,tsteps-1999);
stdlfmincatchLF1 = zeros(1,tsteps-1999);
stdlfminadaptHF1 = zeros(1,tsteps-1999);

meanlfmincatchLF2 = zeros(1,tsteps-1999);
meanlfminadaptHF2 = zeros(1,tsteps-1999);
stdlfmincatchLF2 = zeros(1,tsteps-1999);
stdlfminadaptHF2 = zeros(1,tsteps-1999);

for j = 1:length(lfmaxcatchLF1(:,1))
    meanlfmaxcatchLF1(j)=mean(lfmaxcatchLF1,2);
    meanlfmaxadaptHF1(j)=mean(lfmaxadaptHF1,2);
    stdlfmaxcatchLF1(j)=std(lfmaxcatchLF1,2);
    stdlfmaxadaptHF1(j)=std(lfmaxadaptHF1,2);
    
    meanlfmaxcatchLF2(j)=mean(lfmaxcatchLF2,2);
    meanlfmaxadaptHF2(j)=mean(lfmaxadaptHF2,2);
    stdlfmaxcatchLF2(j)=std(lfmaxcatchLF2,2);
    stdlfmaxadaptHF2(j)=std(lfmaxadaptHF2,2);
    
    meanlfmincatchLF1(j)=mean(lfmincatchLF1,2);
    meanlfminadaptHF1(j)=mean(lfminadaptHF1,2);
    stdlfmincatchLF1(j)=std(lfmincatchLF1,2);
    stdlfminadaptHF1(j)=std(lfminadaptHF1,2);
    
    meanlfmincatchLF2(j)=mean(lfmincatchLF2,2);
    meanlfminadaptHF2(j)=mean(lfminadaptHF2,2);
    stdlfmincatchLF2(j)=std(lfmincatchLF2,2);
    stdlfminadaptHF2(j)=std(lfminadaptHF2,2);
end

%Grip Forces
meangfmaxcatchLF1 = zeros(1,tsteps-1999);
meangfmaxadaptHF1 = zeros(1,tsteps-1999);
stdgfmaxcatchLF1 = zeros(1,tsteps-1999);
stdgfmaxadaptHF1 = zeros(1,tsteps-1999);

meangfmaxcatchLF2 = zeros(1,tsteps-1999);
meangfmaxadaptHF2 = zeros(1,tsteps-1999);
stdgfmaxcatchLF2 = zeros(1,tsteps-1999);
stdgfmaxadaptHF2 = zeros(1,tsteps-1999);

meangfmincatchLF1 = zeros(1,tsteps-1999);
meangfminadaptHF1 = zeros(1,tsteps-1999);
stdgfmincatchLF1 = zeros(1,tsteps-1999);
stdgfminadaptHF1 = zeros(1,tsteps-1999);

meangfmincatchLF2 = zeros(1,tsteps-1999);
meangfminadaptHF2 = zeros(1,tsteps-1999);
stdgfmincatchLF2 = zeros(1,tsteps-1999);
stdgfminadaptHF2 = zeros(1,tsteps-1999);

for j = 1:length(gfmaxcatchLF1(:,1))
    meangfmaxcatchLF1(j)=mean(gfmaxcatchLF1,2);
    meangfmaxadaptHF1(j)=mean(gfmaxadaptHF1,2);
    stdgfmaxcatchLF1(j)=std(gfmaxcatchLF1,2);
    stdgfmaxadaptHF1(j)=std(lfmaxadaptHF1,2);

    meangfmaxcatchLF2(j)=mean(gfmaxcatchLF2,2);
    meangfmaxadaptHF2(j)=mean(gfmaxadaptHF2,2);
    stdgfmaxcatchLF2(j)=std(gfmaxcatchLF2,2);
    stdgfmaxadaptHF2(j)=std(gfmaxadaptHF2,2);

    meangfmincatchLF1(j)=mean(gfmincatchLF1,2);
    meangfminadaptHF1(j)=mean(gfminadaptHF1,2);
    stdgfmincatchLF1(j)=std(gfmincatchLF1,2);
    stdgfminadaptHF1(j)=std(gfminadaptHF1,2);

    meangfmincatchLF2(j)=mean(gfmincatchLF2,2);
    meangfminadaptHF2(j)=mean(gfminadaptHF2,2);
    stdgfmincatchLF2(j)=std(gfmincatchLF2,2);
    stdgfminadaptHF2(j)=std(gfminadaptHF2,2);
end

%% Standard deviation boundaries computation
%load force boundaries matrices
ul_lfmaxcatchLF1 = zeros(1,tsteps-1999); %matrix for upper limit 
ll_lfmaxcatchLF1 = zeros(1,tsteps-1999); %matrix for lower limit

ul_lfmaxadaptHF1 = zeros(1,tsteps-1999); 
ll_lfmaxadaptHF1 = zeros(1,tsteps-1999);

ul_lfmaxcatchLF2 = zeros(1,tsteps-1999); 
ll_lfmaxcatchLF2 = zeros(1,tsteps-1999);

ul_lfmaxadaptHF2 = zeros(1,tsteps-1999); 
ll_lfmaxadaptHF2 = zeros(1,tsteps-1999);

ul_lfmincatchLF1 = zeros(1,tsteps-1999); 
ll_lfmincatchLF1 = zeros(1,tsteps-1999);

ul_lfminadaptHF1 = zeros(1,tsteps-1999); 
ll_lfminadaptHF1 = zeros(1,tsteps-1999);

ul_lfmincatchLF2 = zeros(1,tsteps-1999); 
ll_lfmincatchLF2 = zeros(1,tsteps-1999);

ul_lfminadaptHF2 = zeros(1,tsteps-1999); 
ll_lfminadaptHF2 = zeros(1,tsteps-1999);

%grip forces boundaries matrices
ul_gfmaxcatchLF1 = zeros(1,tsteps-1999); %matrix for upper limit 
ll_gfmaxcatchLF1 = zeros(1,tsteps-1999); %matrix for lower limit

ul_gfmaxadaptHF1 = zeros(1,tsteps-1999); 
ll_gfmaxadaptHF1 = zeros(1,tsteps-1999);

ul_gfmaxcatchLF2 = zeros(1,tsteps-1999); 
ll_gfmaxcatchLF2 = zeros(1,tsteps-1999);

ul_gfmaxadaptHF2 = zeros(1,tsteps-1999); 
ll_gfmaxadaptHF2 = zeros(1,tsteps-1999);

ul_gfmincatchLF1 = zeros(1,tsteps-1999); 
ll_gfmincatchLF1 = zeros(1,tsteps-1999);

ul_gfminadaptHF1 = zeros(1,tsteps-1999); 
ll_gfminadaptHF1 = zeros(1,tsteps-1999);

ul_gfmincatchLF2 = zeros(1,tsteps-1999); 
ll_gfmincatchLF2 = zeros(1,tsteps-1999);

ul_gfminadaptHF2 = zeros(1,tsteps-1999); 
ll_gfminadaptHF2 = zeros(1,tsteps-1999);

%computation of the boundaries
for i=1:length(meanlfmaxcatchLF1)
    %load forces
    ul_lfmaxcatchLF1(i) = meanlfmaxcatchLF1(i) + stdlfmaxcatchLF1(i); 
    ll_lfmaxcatchLF1(i) = meanlfmaxcatchLF1(i) - stdlfmaxcatchLF1(i);

    ul_lfmaxadaptHF1(i) = meanlfmaxadaptHF1(i) + stdlfmaxadaptHF1(i);
    ll_lfmaxadaptHF1(i) = meanlfmaxadaptHF1(i) - stdlfmaxadaptHF1(i);

    ul_lfmaxcatchLF2(i) = meanlfmaxcatchLF2(i) + stdlfmaxcatchLF2(i); 
    ll_lfmaxcatchLF2(i) = meanlfmaxcatchLF2(i) - stdlfmaxcatchLF2(i);

    ul_lfmaxadaptHF2(i) = meanlfmaxadaptHF2(i) + stdlfmaxadaptHF2(i);
    ll_lfmaxadaptHF2(i) = meanlfmaxadaptHF2(i) - stdlfmaxadaptHF2(i);

    ul_lfmincatchLF1(i) = meanlfmincatchLF1(i) + stdlfmincatchLF1(i);
    ll_lfmincatchLF1(i) = meanlfmincatchLF1(i) - stdlfmincatchLF1(i);

    ul_lfminadaptHF1(i) = meanlfminadaptHF1(i) + stdlfminadaptHF1(i); 
    ll_lfminadaptHF1(i) = meanlfminadaptHF1(i) - stdlfminadaptHF1(i);

    ul_lfmincatchLF2(i) = meanlfmincatchLF2(i) + stdlfmincatchLF2(i); 
    ll_lfmincatchLF2(i) = meanlfmincatchLF2(i) - stdlfmincatchLF2(i);

    ul_lfminadaptHF2(i) = meanlfminadaptHF2(i) + stdlfminadaptHF2(i); 
    ll_lfminadaptHF2(i) = meanlfminadaptHF2(i) - stdlfminadaptHF2(i);
    
    %grip forces
    ul_gfmaxcatchLF1(i) = meangfmaxcatchLF1(i) + stdgfmaxcatchLF1(i); 
    ll_gfmaxcatchLF1(i) = meangfmaxcatchLF1(i) - stdgfmaxcatchLF1(i);

    ul_gfmaxadaptHF1(i) = meangfmaxadaptHF1(i) + stdgfmaxadaptHF1(i);
    ll_gfmaxadaptHF1(i) = meangfmaxadaptHF1(i) - stdgfmaxadaptHF1(i);

    ul_gfmaxcatchLF2(i) = meangfmaxcatchLF2(i) + stdgfmaxcatchLF2(i); 
    ll_gfmaxcatchLF2(i) = meangfmaxcatchLF2(i) - stdgfmaxcatchLF2(i);

    ul_gfmaxadaptHF2(i) = meangfmaxadaptHF2(i) + stdgfmaxadaptHF2(i);
    ll_gfmaxadaptHF2(i) = meangfmaxadaptHF2(i) - stdgfmaxadaptHF2(i);

    ul_gfmincatchLF1(i) = meangfmincatchLF1(i) + stdgfmincatchLF1(i);
    ll_gfmincatchLF1(i) = meangfmincatchLF1(i) - stdgfmincatchLF1(i);

    ul_gfminadaptHF1(i) = meangfminadaptHF1(i) + stdgfminadaptHF1(i); 
    ll_gfminadaptHF1(i) = meangfminadaptHF1(i) - stdgfminadaptHF1(i);
    
    ul_gfmincatchLF2(i) = meangfmincatchLF2(i) + stdgfmincatchLF2(i); 
    ll_gfmincatchLF2(i) = meangfmincatchLF2(i) - stdgfmincatchLF2(i);

    ul_gfminadaptHF2(i) = meangfminadaptHF2(i) + stdgfminadaptHF2(i); 
    ll_gfminadaptHF2(i) = meangfminadaptHF2(i) - stdgfminadaptHF2(i);
end

%% Plots 

x=10:0.005:13.8;
subplot(2,2,1)
y1 = meanlfmaxcatchLF1;
y2 = meanlfmaxadaptHF1;
plot(x,y1,'r', x, y2, 'b')
hold on 
fill([x fliplr(x)], [ul_lfmaxcatchLF1 fliplr(ll_lfmaxcatchLF1)], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfmaxadaptLF1 fliplr(ll_lfmaxadaptLF1)], 'b', 'FaceAlpha', 0.2)
legend('', '')
title('Subplot 1: sin(x)')

subplot(2,2,2)
y3 = meanlfmincatchLF1;
y4 = meanlfminadaptHF1;
plot(x,y3,'r',x,y4,'b')
hold on
fill([x fliplr(x)], [ul_lfmincatchLF1 fliplr(ll_lfmincatchLF1)], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfminadaptLF1 fliplr(ll_lfminadaptLF1)], 'b', 'FaceAlpha', 0.2)
title('Subplot 2: sin(2x)')

subplot(2,2,3)
y5 = meanlfmaxcatchLF2;
y6 = meanlfmaxadaptHF2;
plot(x,y5,'r',x,y6,'b')
hold on
fill([x fliplr(x)], [ul_lfmaxcatchLF2 fliplr(ll_lfmaxcatchLF2)], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfmaxadaptLF2 fliplr(ll_lfmaxadaptLF2)], 'b', 'FaceAlpha', 0.2)
title('Subplot 3: sin(4x)')

subplot(2,2,4)
y7 = meanlfmincatchLF2;
y8 = meanlfminadaptHF2;
plot(x,y7,'r',x,y8,'b')
hold on 
fill([x fliplr(x)], [ul_lfmincatchLF2 fliplr(ll_lfmincatchLF2)], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfminadaptLF2 fliplr(ll_lfminadaptLF2)], 'b', 'FaceAlpha', 0.2)
title('Subplot 4: sin(8x)')

end
