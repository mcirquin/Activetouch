function meancurves = oneplotmeancurvesweightcatch(alignedLFtable, alignedGFtable, tsteps, nparticipants)
%% Weight catch max (min to max weight)

%max weight catch under low friction 
nessais1=4;
lfLFcatchmax1=zeros(tsteps-1999,nessais1*nparticipants);
gfLFcatchmax1=zeros(tsteps-1999,nessais1*nparticipants);

lfLFcatchmax1 = alignedLFtable(:,33);  
lfLFcatchmax1 = [lfLFcatchmax1 alignedLFtable(:,46)];
lfLFcatchmax1 = [lfLFcatchmax1 alignedLFtable(:,71)];
lfLFcatchmax1 = [lfLFcatchmax1 alignedLFtable(:,93)];

gfLFcatchmax1=alignedGFtable(:,33);
gfLFcatchmax1=[gfLFcatchmax1 alignedGFtable(:,46)];
gfLFcatchmax1=[gfLFcatchmax1 alignedGFtable(:,71)];
gfLFcatchmax1=[gfLFcatchmax1 alignedGFtable(:,93)];


%min weight adaptation under low friction
nessais8=16;
lfLFadaptmin1=zeros(tsteps-1999,nessais8*nparticipants);
gfLFadaptmin1=zeros(tsteps-1999,nessais8*nparticipants);

lfLFadaptmin1=alignedLFtable(:,5);
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,6)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,18)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,52)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,53)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,54)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,65)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,66)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,84)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,32)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,44)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,45)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,68)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,69)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,70)];
lfLFadaptmin1=[lfLFadaptmin1 alignedLFtable(:,92)];

gfLFadaptmin1=alignedGFtable(:,5);
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,6)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,18)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,52)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,53)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,54)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,65)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,66)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,84)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,32)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,44)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,45)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,68)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,69)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,70)];
gfLFadaptmin1=[gfLFadaptmin1 alignedGFtable(:,92)];


%max weight catch under high friction 
nessais7=5;
lfHFcatchmax1=zeros(tsteps-1999,nessais7*nparticipants);
gfHFcatchmax1=zeros(tsteps-1999,nessais7*nparticipants);

lfHFcatchmax1=alignedLFtable(:,9);
lfHFcatchmax1=[lfHFcatchmax1 alignedLFtable(:,21)];
lfHFcatchmax1=[lfHFcatchmax1 alignedLFtable(:,40)];
lfHFcatchmax1=[lfHFcatchmax1 alignedLFtable(:,89)];
lfHFcatchmax1=[lfHFcatchmax1 alignedLFtable(:,107)];

gfHFcatchmax1=alignedGFtable(:,9:108:end);
gfHFcatchmax1=[gfHFcatchmax1 alignedGFtable(:,21)];
gfHFcatchmax1=[gfHFcatchmax1 alignedGFtable(:,40)];
gfHFcatchmax1=[gfHFcatchmax1 alignedGFtable(:,89)];
gfHFcatchmax1=[gfHFcatchmax1 alignedGFtable(:,107)];


%min weight adaptation under high friction
nessais4=18;
lfHFadaptmin1=zeros(tsteps-1999,nessais4*nparticipants);
gfHFadaptmin1=zeros(tsteps-1999,nessais4*nparticipants);

lfHFadaptmin1=alignedLFtable(:,30);
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,58)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,59)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,60)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,77)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,78)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,101)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,102)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,8)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,20)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,38)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,39)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,86)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,87)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,88)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,104)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,105)];
lfHFadaptmin1=[lfHFadaptmin1 alignedLFtable(:,106)];

gfHFadaptmin1=alignedGFtable(:,30);
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,58)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,59)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,60)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,77)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,78)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,101)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,102)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,8)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,20)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,38)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,39)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,86)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,87)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,88)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,104)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,105)];
gfHFadaptmin1=[gfHFadaptmin1 alignedGFtable(:,106)];


%% Weight catch min (max to min weight)
% min weight catch under low friction
nessais7=5;
lfLFcatchmin2=zeros(tsteps-1999,nessais7*nparticipants);
gfLFcatchmin2=zeros(tsteps-1999,nessais7*nparticipants);

lfLFcatchmin2=alignedLFtable(:,4);
lfLFcatchmin2=[lfLFcatchmin2 alignedLFtable(:,17)];
lfLFcatchmin2=[lfLFcatchmin2 alignedLFtable(:,51)];
lfLFcatchmin2=[lfLFcatchmin2 alignedLFtable(:,64)];
lfLFcatchmin2=[lfLFcatchmin2 alignedLFtable(:,83)];

gfLFcatchmin2=alignedGFtable(:,4);
gfLFcatchmin2=[gfLFcatchmin2 alignedGFtable(:,17)];
gfLFcatchmin2=[gfLFcatchmin2 alignedGFtable(:,51)];
gfLFcatchmin2=[gfLFcatchmin2 alignedGFtable(:,64)];
gfLFcatchmin2=[gfLFcatchmin2 alignedGFtable(:,83)];


% adaptation max under low friction
nessais6=20;
lfLFadaptmax2=zeros(tsteps-1999,nessais6*nparticipants);
gfLFadaptmax2=zeros(tsteps-1999,nessais6*nparticipants);

lfLFadaptmax2=alignedLFtable(:,2);
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,3)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,14)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,15)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,16)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,50)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,62)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,63)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,80)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,81)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,82)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,34)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,35)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,36)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,47)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,48)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,72)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,94)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,95)];
lfLFadaptmax2=[lfLFadaptmax2 alignedLFtable(:,96)];

gfLFadaptmax2=alignedGFtable(:,2);
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,3)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,14)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,15)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,16)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,50)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,62)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,63)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,80)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,81)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,82)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,34)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,35)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,36)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,47)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,48)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,72)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,94)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,95)];
gfLFadaptmax2=[gfLFadaptmax2 alignedGFtable(:,96)];


%min weight catch under high friction
nessais7=4;
lfHFcatchmin2=zeros(tsteps-1999,nessais7*nparticipants);
gfHFcatchmin2=zeros(tsteps-1999,nessais7*nparticipants);

lfHFcatchmin2=alignedLFtable(:,29);
lfHFcatchmin2=[lfHFcatchmin2 alignedLFtable(:,57)];
lfHFcatchmin2=[lfHFcatchmin2 alignedLFtable(:,76)];
lfHFcatchmin2=[lfHFcatchmin2 alignedLFtable(:,100)];

gfHFcatchmin2=alignedGFtable(:,29);
gfHFcatchmin2=[gfHFcatchmin2 alignedGFtable(:,57)];
gfHFcatchmin2=[gfHFcatchmin2 alignedGFtable(:,76)];
gfHFcatchmin2=[gfHFcatchmin2 alignedGFtable(:,100)];


%max weight adaptation under high friction
nessais8=18;
lfHFadaptmax2=zeros(tsteps-1999,nessais8*nparticipants);
gfHFadaptmax2=zeros(tsteps-1999,nessais8*nparticipants);

lfHFadaptmax2=alignedLFtable(:,26);
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,27)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,28)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,56)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,74)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,75)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,98)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,99)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,10)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,11)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,12)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,22)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,23)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,24)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,41)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,42)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,90)];
lfHFadaptmax2=[lfHFadaptmax2 alignedLFtable(:,108)];

gfHFadaptmax2=alignedGFtable(:,26);
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,27)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,28)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,56)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,74)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,75)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,98)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,99)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,10)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,11)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,12)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,22)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,23)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,24)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,41)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,42)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,90)];
gfHFadaptmax2=[gfHFadaptmax2 alignedGFtable(:,108)];


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
title('Low friction')
xlabel('Time (s)');
ylabel('LF (N)');
legend('Maximal weight catch', 'Minimal weight normal');

subplot(2,2,2)
y3 = meanlfHFcatchmax1;
y4 = meanlfHFadaptmin1;
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_lfHFcatchmax1 fliplr(ll_lfLFcatchmax1)], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfHFadaptmin1 fliplr(ll_lfHFadaptmin1)], 'b', 'FaceAlpha', 0.2)
title('High friction')
xlabel('Time (s)');
ylabel('LF (N)');
legend('Maximal weight catch', 'Minimal weight normal');

subplot(2,2,3)
y5 = meanlfLFcatchmin2;
y6 = meanlfLFadaptmax2;
plot(x,y6,'r', x,y5,'b--','LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_lfLFcatchmin2 fliplr(ll_lfLFcatchmin2)], 'b', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfLFadaptmax2 fliplr(ll_lfLFadaptmax2)], 'r', 'FaceAlpha', 0.2)
title('Low friction')
xlabel('Time (s)');
ylabel('LF (N)');
legend('Maximal weight normal','Minimal weight catch');

subplot(2,2,4)
y7 = meanlfHFcatchmin2;
y8 = meanlfHFadaptmax2;
plot(x,y8,'r', x,y7,'b--','LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_lfHFcatchmin2 fliplr(ll_lfHFcatchmin2)], 'b', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_lfHFadaptmax2 fliplr(ll_lfHFadaptmax2)], 'r', 'FaceAlpha', 0.2)
title('High friction')
xlabel('Time (s)');
ylabel('LF (N)');
legend('Maximal weight normal','Minimal weight catch');

suptitle( 'Adaptation to weight during the first movement of weight catch trials - Elderly participant PL');
%suptitle( 'Adaptation to weight during the first movement of weight catch trials - Young participants');

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
title('Low friction')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 15]);
legend('Maximal weight catch', 'Minimal weight normal');

subplot(2,2,2)
y3 = meangfHFcatchmax1;
y4 = meangfHFadaptmin1;
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_gfHFcatchmax1 fliplr(ll_gfHFcatchmax1)], 'r', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_gfHFadaptmin1 fliplr(ll_gfHFadaptmin1)], 'b', 'FaceAlpha', 0.2)
title('High friction')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 15]);
legend('Maximal weight catch', 'Minimal weight normal');

subplot(2,2,3)
y5 = meangfLFcatchmin2;
y6 = meangfLFadaptmax2;
plot(x,y6,'r',x,y5,'b--', 'LineWidth', 1.5)
hold on
fill([x fliplr(x)], [ul_gfLFcatchmin2 fliplr(ll_gfLFcatchmin2)], 'b', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_gfLFadaptmax2 fliplr(ll_gfLFadaptmax2)], 'r', 'FaceAlpha', 0.2)
title('Low friction')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 15]);
legend('Maximal weight normal','Minimal weight catch');

subplot(2,2,4)
y7 = meangfHFcatchmin2;
y8 = meangfHFadaptmax2;
plot(x,y8,'r',x,y7,'b--','LineWidth', 1.5)
hold on 
fill([x fliplr(x)], [ul_gfHFcatchmin2 fliplr(ll_gfHFcatchmin2)], 'b', 'FaceAlpha', 0.2)
fill([x fliplr(x)], [ul_gfHFadaptmax2 fliplr(ll_gfHFadaptmax2)], 'r', 'FaceAlpha', 0.2)
title('High friction')
xlabel('Time (s)');
ylabel('GF (N)');
ylim([0 15]);
legend('Maximal weight normal','Minimal weight catch');

suptitle( 'Adaptation to weight during the first movement of weight catch trials - Elderly participant PL');
%suptitle( 'Adaptation to weight during the first movement of weight catch trials - Young participants');

end