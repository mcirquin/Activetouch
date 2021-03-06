function meancurves = oneplotmeancurvesfrictioncatch(alignedLFtable, alignedGFtable, tsteps, nparticipants, minimum)
%% Friction catch low friction (high to low friction)

%low friction catch under max weight 
nessais1=2;
lfmaxcatchLF1=zeros(tsteps-1999,nessais1*nparticipants);
gfmaxcatchLF1=zeros(tsteps-1999,nessais1*nparticipants);

lfmaxcatchLF1 = alignedLFtable(:,1);  
lfmaxcatchLF1 = [lfmaxcatchLF1 alignedLFtable(:,13)];
%lfmaxcatchLF1 = [lfmaxcatchLF1 alignedLFtable(:,61)];
%lfmaxcatchLF1 = [lfmaxcatchLF1 alignedLFtable(:,79)];

gfmaxcatchLF1=alignedGFtable(:,1);
gfmaxcatchLF1=[gfmaxcatchLF1 alignedGFtable(:,13)];
%gfmaxcatchLF1=[gfmaxcatchLF1 alignedGFtable(:,61)]
%gfmaxcatchLF1=[gfmaxcatchLF1 alignedGFtable(:,79)];

%high friction adaptation under max weight 
nessais2=18;
lfmaxadaptHF1=zeros(tsteps-1999,nessais2*nparticipants);
gfmaxadaptHF1=zeros(tsteps-1999,nessais2*nparticipants);

lfmaxadaptHF1=alignedLFtable(:,26);
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,27)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,28)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,56)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,74)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,75)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,98)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,99)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,10)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,11)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,12)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,22)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,23)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,24)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,41)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,42)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,90)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedLFtable(:,108)];

gfmaxadaptHF1=alignedGFtable(:,26);
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,27)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,28)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,56)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,74)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,75)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,98)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,99)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,10)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,11)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,12)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,22)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,23)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,24)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,41)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,42)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,90)];
gfmaxadaptHF1=[gfmaxadaptHF1 alignedGFtable(:,108)];



%low friction catch under min weight 
nessais3=1;
lfmincatchLF1=zeros(tsteps-1999,nessais3*nparticipants);
gfmincatchLF1=zeros(tsteps-1999,nessais3*nparticipants);

lfmincatchLF1=alignedLFtable(:,31);
%lfmincatchLF1=[lfmincatchLF1 alignedLFtable(:,43)];
%lfmincatchLF1=[lfmincatchLF1 alignedLFtable(:,91)];

gfmincatchLF1=alignedGFtable(:,31);
%gfmincatchLF1=[gfmincatchLF1 alignedGFtable(:,43)];
%gfmincatchLF1=[gfmincatchLF1 alignedGFtable(:,91)];

%high friction adaptation under min weight 
nessais4=18;
lfminadaptHF1=zeros(tsteps-1999,nessais4*nparticipants);
gfminadaptHF1=zeros(tsteps-1999,nessais4*nparticipants);

lfminadaptHF1=alignedLFtable(:,30);
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,58)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,59)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,60)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,77)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,78)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,101)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,102)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,8)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,20)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,38)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,39)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,86)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,87)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,88)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,104)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,105)];
lfminadaptHF1=[lfminadaptHF1 alignedLFtable(:,106)];

gfminadaptHF1=alignedGFtable(:,30);
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,58)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,59)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,60)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,77)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,78)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,101)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,102)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,8)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,20)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,38)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,39)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,86)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,87)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,88)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,104)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,105)];
gfminadaptHF1=[gfminadaptHF1 alignedGFtable(:,106)];


%% Friction catch high friction (low to high friction)

%high friction catch under max weight 
nessais5=2;
lfmaxcatchHF2=zeros(tsteps-1999,nessais5*nparticipants);
gfmaxcatchHF2=zeros(tsteps-1999,nessais5*nparticipants);

%lfmaxcatchHF2=alignedLFtable(:,55);
lfmaxcatchHF2=alignedLFtable(:,73);
lfmaxcatchHF2=[lfmaxcatchHF2 alignedLFtable(:,97)];

%gfmaxcatchHF2=alignedGFtable(:,55);
gfmaxcatchHF2=alignedGFtable(:,73);
gfmaxcatchHF2=[gfmaxcatchHF2 alignedGFtable(:,97)];


%low friction adaptation under max weight 
nessais6=20;
lfmaxadaptLF2=zeros(tsteps-1999,nessais6*nparticipants);
gfmaxadaptLF2=zeros(tsteps-1999,nessais6*nparticipants);

lfmaxadaptLF2=alignedLFtable(:,2);
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,3)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,14)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,15)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,16)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,50)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,62)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,63)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,80)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,81)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,82)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,34)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,35)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,36)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,47)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,48)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,72)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,94)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,95)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedLFtable(:,96)];

gfmaxadaptLF2=alignedGFtable(:,2:108:end);
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,3)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,14)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,15)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,16)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,50)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,62)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,63)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,80)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,81)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,82)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,34)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,35)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,36)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,47)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,48)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,72)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,94)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,95)];
gfmaxadaptLF2=[gfmaxadaptLF2 alignedGFtable(:,96)];



%high friction catch under min weight 
nessais7=3;
lfmincatchHF2=zeros(tsteps-1999,nessais7*nparticipants);
gfmincatchHF2=zeros(tsteps-1999,nessais7*nparticipants);

lfmincatchHF2=alignedLFtable(:,7);
lfmincatchHF2=[lfmincatchHF2 alignedLFtable(:,19)];
%lfmincatchHF2=[lfmincatchHF2 alignedLFtable(:,37)];
lfmincatchHF2=[lfmincatchHF2 alignedLFtable(:,85)];

gfmincatchHF2=alignedGFtable(:,7);
gfmincatchHF2=[gfmincatchHF2 alignedGFtable(:,19)];
%gfmincatchHF2=[gfmincatchHF2 alignedGFtable(:,37)];
gfmincatchHF2=[gfmincatchHF2 alignedGFtable(:,85)];


%low friction adaptation under min weight 
nessais8=16;
lfminadaptLF2=zeros(tsteps-1999,nessais8*nparticipants);
gfminadaptLF2=zeros(tsteps-1999,nessais8*nparticipants);

lfminadaptLF2=alignedLFtable(:,5);
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,6)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,18)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,52)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,53)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,54)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,65)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,66)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,84)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,32)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,44)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,45)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,68)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,69)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,70)];
lfminadaptLF2=[lfminadaptLF2 alignedLFtable(:,92)];

gfminadaptLF2=alignedGFtable(:,5);
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,6)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,18)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,52)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,53)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,54)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,65)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,66)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,84)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,32)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,44)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,45)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,68)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,69)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,70)];
gfminadaptLF2=[gfminadaptLF2 alignedGFtable(:,92)];



%% Calculation of means and standard deviations 
%Load Forces
meanlfmaxcatchLF1 = zeros(tsteps-1999,1);
meanlfmaxadaptHF1 = zeros(tsteps-1999,1);
stdlfmaxcatchLF1 = zeros(tsteps-1999,1);
stdlfmaxadaptHF1 = zeros(tsteps-1999,1);

meanlfmaxcatchHF2 = zeros(1,tsteps-1999);
meanlfmaxadaptLF2 = zeros(1,tsteps-1999);
stdlfmaxcatchHF2 = zeros(1,tsteps-1999);
stdlfmaxadaptLF2 = zeros(1,tsteps-1999);

meanlfmincatchLF1 = zeros(1,tsteps-1999);
meanlfminadaptHF1 = zeros(1,tsteps-1999);
stdlfmincatchLF1 = zeros(1,tsteps-1999);
stdlfminadaptHF1 = zeros(1,tsteps-1999);

meanlfmincatchHF2 = zeros(1,tsteps-1999);
meanlfminadaptLF2 = zeros(1,tsteps-1999);
stdlfmincatchHF2 = zeros(1,tsteps-1999);
stdlfminadaptLF2 = zeros(1,tsteps-1999);

meanlfmaxcatchLF1=mean(lfmaxcatchLF1,2);
meanlfmaxadaptHF1=mean(lfmaxadaptHF1,2);
stdlfmaxcatchLF1=std(lfmaxcatchLF1, 0, 2);
stdlfmaxadaptHF1=std(lfmaxadaptHF1, 0, 2);


meanlfmaxcatchHF2=mean(lfmaxcatchHF2,2);
meanlfmaxadaptLF2=mean(lfmaxadaptLF2,2);
stdlfmaxcatchHF2=std(lfmaxcatchHF2,0,2);
stdlfmaxadaptLF2=std(lfmaxadaptLF2,0,2);

meanlfmincatchLF1=mean(lfmincatchLF1,2);
meanlfminadaptHF1=mean(lfminadaptHF1,2);
stdlfmincatchLF1=std(lfmincatchLF1,0,2);
stdlfminadaptHF1=std(lfminadaptHF1,0,2);

meanlfmincatchHF2=mean(lfmincatchHF2,2);
meanlfminadaptLF2=mean(lfminadaptLF2,2);
stdlfmincatchHF2=std(lfmincatchHF2,0,2);
stdlfminadaptLF2=std(lfminadaptLF2,0,2);


%Grip Forces
meangfmaxcatchLF1 = zeros(1,tsteps-1999);
meangfmaxadaptHF1 = zeros(1,tsteps-1999);
stdgfmaxcatchLF1 = zeros(1,tsteps-1999);
stdgfmaxadaptHF1 = zeros(1,tsteps-1999);

meangfmaxcatchHF2 = zeros(1,tsteps-1999);
meangfmaxadaptLF2 = zeros(1,tsteps-1999);
stdgfmaxcatchHF2 = zeros(1,tsteps-1999);
stdgfmaxadaptLF2 = zeros(1,tsteps-1999);

meangfmincatchLF1 = zeros(1,tsteps-1999);
meangfminadaptHF1 = zeros(1,tsteps-1999);
stdgfmincatchLF1 = zeros(1,tsteps-1999);
stdgfminadaptHF1 = zeros(1,tsteps-1999);

meangfmincatchHF2 = zeros(1,tsteps-1999);
meangfminadaptLF2 = zeros(1,tsteps-1999);
stdgfmincatchHF2 = zeros(1,tsteps-1999);
stdgfminadaptLF2 = zeros(1,tsteps-1999);


meangfmaxcatchLF1=mean(gfmaxcatchLF1,2);
meangfmaxadaptHF1=mean(gfmaxadaptHF1,2);
stdgfmaxcatchLF1=std(gfmaxcatchLF1, 0,2);
stdgfmaxadaptHF1=std(lfmaxadaptHF1,0,2);

meangfmaxcatchHF2=mean(gfmaxcatchHF2,2);
meangfmaxadaptLF2=mean(gfmaxadaptLF2,2);
stdgfmaxcatchHF2=std(gfmaxcatchHF2,0,2);
stdgfmaxadaptLF2=std(gfmaxadaptLF2,0,2);

meangfmincatchLF1=mean(gfmincatchLF1,2);
meangfminadaptHF1=mean(gfminadaptHF1,2);
stdgfmincatchLF1=std(gfmincatchLF1,0,2);
stdgfminadaptHF1=std(gfminadaptHF1,0,2);

meangfmincatchHF2=mean(gfmincatchHF2,2);
meangfminadaptLF2=mean(gfminadaptLF2,2);
stdgfmincatchHF2=std(gfmincatchHF2,0,2);
stdgfminadaptLF2=std(gfminadaptLF2,0,2);


%% Standard deviation boundaries computation
%load force boundaries matrices
ul_lfmaxcatchLF1 = zeros(1,tsteps-1999); %matrix for upper limit 
ll_lfmaxcatchLF1 = zeros(1,tsteps-1999); %matrix for lower limit

ul_lfmaxadaptHF1 = zeros(1,tsteps-1999); 
ll_lfmaxadaptHF1 = zeros(1,tsteps-1999);

ul_lfmaxcatchHF2 = zeros(1,tsteps-1999); 
ll_lfmaxcatchHF2 = zeros(1,tsteps-1999);

ul_lfmaxadaptLF2 = zeros(1,tsteps-1999); 
ll_lfmaxadaptLF2 = zeros(1,tsteps-1999);

ul_lfmincatchLF1 = zeros(1,tsteps-1999); 
ll_lfmincatchLF1 = zeros(1,tsteps-1999);

ul_lfminadaptHF1 = zeros(1,tsteps-1999); 
ll_lfminadaptHF1 = zeros(1,tsteps-1999);

ul_lfmincatchHF2 = zeros(1,tsteps-1999); 
ll_lfmincatchHF2 = zeros(1,tsteps-1999);

ul_lfminadaptLF2 = zeros(1,tsteps-1999); 
ll_lfminadaptLF2 = zeros(1,tsteps-1999);

%grip forces boundaries matrices
ul_gfmaxcatchLF1 = zeros(1,tsteps-1999); %matrix for upper limit 
ll_gfmaxcatchLF1 = zeros(1,tsteps-1999); %matrix for lower limit

ul_gfmaxadaptHF1 = zeros(1,tsteps-1999); 
ll_gfmaxadaptHF1 = zeros(1,tsteps-1999);

ul_gfmaxcatchHF2 = zeros(1,tsteps-1999); 
ll_gfmaxcatchHF2 = zeros(1,tsteps-1999);

ul_gfmaxadaptLF2 = zeros(1,tsteps-1999); 
ll_gfmaxadaptLF2 = zeros(1,tsteps-1999);

ul_gfmincatchLF1 = zeros(1,tsteps-1999); 
ll_gfmincatchLF1 = zeros(1,tsteps-1999);

ul_gfminadaptHF1 = zeros(1,tsteps-1999); 
ll_gfminadaptHF1 = zeros(1,tsteps-1999);

ul_gfmincatchHF2 = zeros(1,tsteps-1999); 
ll_gfmincatchHF2 = zeros(1,tsteps-1999);

ul_gfminadaptLF2 = zeros(1,tsteps-1999); 
ll_gfminadaptLF2 = zeros(1,tsteps-1999);

%computation of the boundaries
for i=1:length(meanlfmaxcatchLF1)
    %load forces
    ul_lfmaxcatchLF1(i) = meanlfmaxcatchLF1(i) + stdlfmaxcatchLF1(i); 
    ll_lfmaxcatchLF1(i) = meanlfmaxcatchLF1(i) - stdlfmaxcatchLF1(i);

    ul_lfmaxadaptHF1(i) = meanlfmaxadaptHF1(i) + stdlfmaxadaptHF1(i);
    ll_lfmaxadaptHF1(i) = meanlfmaxadaptHF1(i) - stdlfmaxadaptHF1(i);

    ul_lfmaxcatchHF2(i) = meanlfmaxcatchHF2(i) + stdlfmaxcatchHF2(i); 
    ll_lfmaxcatchHF2(i) = meanlfmaxcatchHF2(i) - stdlfmaxcatchHF2(i);

    ul_lfmaxadaptLF2(i) = meanlfmaxadaptLF2(i) + stdlfmaxadaptLF2(i);
    ll_lfmaxadaptLF2(i) = meanlfmaxadaptLF2(i) - stdlfmaxadaptLF2(i);

    ul_lfmincatchLF1(i) = meanlfmincatchLF1(i) + stdlfmincatchLF1(i);
    ll_lfmincatchLF1(i) = meanlfmincatchLF1(i) - stdlfmincatchLF1(i);

    ul_lfminadaptHF1(i) = meanlfminadaptHF1(i) + stdlfminadaptHF1(i); 
    ll_lfminadaptHF1(i) = meanlfminadaptHF1(i) - stdlfminadaptHF1(i);

    ul_lfmincatchHF2(i) = meanlfmincatchHF2(i) + stdlfmincatchHF2(i); 
    ll_lfmincatchHF2(i) = meanlfmincatchHF2(i) - stdlfmincatchHF2(i);

    ul_lfminadaptLF2(i) = meanlfminadaptLF2(i) + stdlfminadaptLF2(i); 
    ll_lfminadaptLF2(i) = meanlfminadaptLF2(i) - stdlfminadaptLF2(i);
    
    %grip forces
    ul_gfmaxcatchLF1(i) = meangfmaxcatchLF1(i) + stdgfmaxcatchLF1(i); 
    ll_gfmaxcatchLF1(i) = meangfmaxcatchLF1(i) - stdgfmaxcatchLF1(i);

    ul_gfmaxadaptHF1(i) = meangfmaxadaptHF1(i) + stdgfmaxadaptHF1(i);
    ll_gfmaxadaptHF1(i) = meangfmaxadaptHF1(i) - stdgfmaxadaptHF1(i);

    ul_gfmaxcatchHF2(i) = meangfmaxcatchHF2(i) + stdgfmaxcatchHF2(i); 
    ll_gfmaxcatchHF2(i) = meangfmaxcatchHF2(i) - stdgfmaxcatchHF2(i);

    ul_gfmaxadaptLF2(i) = meangfmaxadaptLF2(i) + stdgfmaxadaptLF2(i);
    ll_gfmaxadaptLF2(i) = meangfmaxadaptLF2(i) - stdgfmaxadaptLF2(i);

    ul_gfmincatchLF1(i) = meangfmincatchLF1(i) + stdgfmincatchLF1(i);
    ll_gfmincatchLF1(i) = meangfmincatchLF1(i) - stdgfmincatchLF1(i);

    ul_gfminadaptHF1(i) = meangfminadaptHF1(i) + stdgfminadaptHF1(i); 
    ll_gfminadaptHF1(i) = meangfminadaptHF1(i) - stdgfminadaptHF1(i);
    
    ul_gfmincatchHF2(i) = meangfmincatchHF2(i) + stdgfmincatchHF2(i); 
    ll_gfmincatchHF2(i) = meangfmincatchHF2(i) - stdgfmincatchHF2(i);

    ul_gfminadaptLF2(i) = meangfminadaptLF2(i) + stdgfminadaptLF2(i); 
    ll_gfminadaptLF2(i) = meangfminadaptLF2(i) - stdgfminadaptLF2(i);
end

%% Plots 
% Figures LF

figure; 
timealigned=minimum*0.005; %temps o?? toutes les courbes sont align??es
x=-timealigned:0.005:(-timealigned+2.495); %500 pas de temps, le 0 se trouve ?? l'alignement des courbes
subplot(2,2,1)
y1 = meanlfmaxcatchLF1(1:500);
y2 = meanlfmaxadaptHF1(1:500);
plot(x,y1,'r--', x, y2, 'b', 'LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_lfmaxcatchLF1(1:500) fliplr(ll_lfmaxcatchLF1(1:500))], 'r', 'FaceAlpha', 0.2)
hold on
fill([x fliplr(x)], [ul_lfmaxadaptHF1(1:500) fliplr(ll_lfmaxadaptHF1(1:500))], 'b', 'FaceAlpha', 0.2)
legend('', '')
title('Maximal manipulandum weight')
xlabel('Time (s)');
ylabel('LF (N)');
xlim([-timealigned 2]);
legend('Low friction catch', 'High friction normal');

subplot(2,2,2)
y3 = meanlfmincatchLF1(1:500);
y4 = meanlfminadaptHF1(1:500);
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_lfmincatchLF1(1:500) fliplr(ll_lfmincatchLF1(1:500))], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfminadaptHF1(1:500) fliplr(ll_lfminadaptHF1(1:500))], 'b', 'FaceAlpha', 0.2)
title('Minimal manipulandum weight')
xlabel('Time (s)');
ylabel('LF (N)');
xlim([-timealigned 2]);
legend('Low friction catch', 'High friction normal');

subplot(2,2,3)
y5 = meanlfmaxcatchHF2(1:500);
y6 = meanlfmaxadaptLF2(1:500);
plot(x,y6,'r', x,y5,'b--','LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_lfmaxcatchHF2(1:500) fliplr(ll_lfmaxcatchHF2(1:500))], 'b', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfmaxadaptLF2(1:500) fliplr(ll_lfmaxadaptLF2(1:500))], 'r', 'FaceAlpha', 0.2)
title('Maximal manipulandum weight')
xlabel('Time (s)');
ylabel('LF (N)');
xlim([-timealigned 2]);
legend('Low friction normal', 'High friction catch');

subplot(2,2,4)
y7 = meanlfmincatchHF2(1:500);
y8 = meanlfminadaptLF2(1:500);
plot(x,y8,'r', x,y7,'b--','LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_lfmincatchHF2(1:500) fliplr(ll_lfmincatchHF2(1:500))], 'b', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfminadaptLF2(1:500) fliplr(ll_lfminadaptLF2(1:500))], 'r', 'FaceAlpha', 0.2)
title('Minimal manipulandum weight')
xlabel('Time (s)');
xlim([-timealigned 2]);
ylabel('LF (N)');
legend('Low friction normal', 'High friction catch');

suptitle( 'Adaptation to friction during the first movement of friction catch trials - Elderly participant PL');
%suptitle( 'Adaptation to friction during the first movement of friction catch trials - Young participants');

% Figures GF

figure; 

subplot(2,2,1)
y1 = meangfmaxcatchLF1(1:500);
y2 = meangfmaxadaptHF1(1:500);
plot(x,y1,'r--',x, y2, 'b', 'LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_gfmaxcatchLF1(1:500) fliplr(ll_gfmaxcatchLF1(1:500))], 'r', 'FaceAlpha', 0.2)
hold on
fill([x fliplr(x)], [ul_gfmaxadaptHF1(1:500) fliplr(ll_gfmaxadaptHF1(1:500))], 'b', 'FaceAlpha', 0.2)
legend('', '')
title('Maximal manipulandum weight')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 15]);
xlim([-timealigned 2]);
legend('Low friction catch', 'High friction normal');

subplot(2,2,2)
y3 = meangfmincatchLF1(1:500);
y4 = meangfminadaptHF1(1:500);
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_gfmincatchLF1(1:500) fliplr(ll_gfmincatchLF1(1:500))], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_gfminadaptHF1(1:500) fliplr(ll_gfminadaptHF1(1:500))], 'b', 'FaceAlpha', 0.2)
title('Minimal manipulandum weight')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 15]);
xlim([-timealigned 2]);
legend('Low friction catch', 'High friction normal');

subplot(2,2,3)
y5 = meangfmaxcatchHF2(1:500);
y6 = meangfmaxadaptLF2(1:500);
plot(x,y6,'r',x,y5,'b--', 'LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_gfmaxcatchHF2(1:500) fliplr(ll_gfmaxcatchHF2(1:500))], 'b', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_gfmaxadaptLF2(1:500) fliplr(ll_gfmaxadaptLF2(1:500))], 'r', 'FaceAlpha', 0.2)
title('Maximal manipulandum weight')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 15]);
xlim([-timealigned 2]);
legend('Low friction normal', 'High friction catch');

subplot(2,2,4)
y7 = meangfmincatchHF2(1:500);
y8 = meangfminadaptLF2(1:500);
plot(x,y8,'r',x,y7,'b--','LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_gfmincatchHF2(1:500) fliplr(ll_gfmincatchHF2(1:500))], 'b', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_gfminadaptLF2(1:500) fliplr(ll_gfminadaptLF2(1:500))], 'r', 'FaceAlpha', 0.2)
title('Minimal manipulandum weight')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 15]);
xlim([-timealigned 2]);
legend('Low friction normal', 'High friction catch');

suptitle( 'Adaptation to friction during the first movement of friction catch trials - Elderly participant PL');
%suptitle( 'Adaptation to friction during the first movement of friction catch trials - Young participants');

end
