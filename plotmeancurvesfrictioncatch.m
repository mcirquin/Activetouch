function var = plotmeancurvesfrictioncatch(alignedLFtable, alignedGFtable, nparticipants)

%% Friction catch low friction (high to low friction)

%low friction catch under max weight 
nessais1=4;
lfmaxcatchLF1=zeros(nessais1, nparticipants);
lfmaxcatchLF1(1,:)=alignedLFtable(1,:);
lfmaxcatchLF1(2,:)=alignedLFtable(13,:);
lfmaxcatchLF1(3,:)=alignedLFtable(61,:);
lfmaxcatchLF1(4,:)=alignedLFtable(79,:);

gfmaxcatchLF1=zeros(nessais1, nparticipants);
gfmaxcatchLF1(1,:)=alignedGFtable(1,:);
gfmaxcatchLF1(2,:)=alignedGFtable(13,:);
gfmaxcatchLF1(3,:)=alignedGFtable(61,:);
gfmaxcatchLF1(4,:)=alignedGFtable(79,:);

%high friction adaptation under max weight 
nessais2=18;
lfmaxadaptHF1=zeros(nessais2, nparticipants);
lfmaxadaptHF1(1,:)=alignedLFtable(26,:);
lfmaxadaptHF1(2,:)=alignedLFtable(27,:);
lfmaxadaptHF1(3,:)=alignedLFtable(28,:);
lfmaxadaptHF1(4,:)=alignedLFtable(56,:);
lfmaxadaptHF1(5,:)=alignedLFtable(74,:);
lfmaxadaptHF1(6,:)=alignedLFtable(75,:);
lfmaxadaptHF1(7,:)=alignedLFtable(98,:);
lfmaxadaptHF1(8,:)=alignedLFtable(99,:);
lfmaxadaptHF1(9,:)=alignedLFtable(10,:);
lfmaxadaptHF1(10,:)=alignedLFtable(11,:);
lfmaxadaptHF1(11,:)=alignedLFtable(12,:);
lfmaxadaptHF1(12,:)=alignedLFtable(22,:);
lfmaxadaptHF1(13,:)=alignedLFtable(23,:);
lfmaxadaptHF1(14,:)=alignedLFtable(34,:);
lfmaxadaptHF1(15,:)=alignedLFtable(41,:);
lfmaxadaptHF1(16,:)=alignedLFtable(42,:);
lfmaxadaptHF1(17,:)=alignedLFtable(90,:);
lfmaxadaptHF1(18,:)=alignedLFtable(108,:);

gfmaxadaptHF1=zeros(nessais2, nparticipants);
gfmaxadaptHF1(1,:)=alignedGFtable(26,:);
gfmaxadaptHF1(2,:)=alignedGFtable(27,:);
gfmaxadaptHF1(3,:)=alignedGFtable(28,:);
gfmaxadaptHF1(4,:)=alignedGFtable(56,:);
gfmaxadaptHF1(5,:)=alignedGFtable(74,:);
gfmaxadaptHF1(6,:)=alignedGFtable(75,:);
gfmaxadaptHF1(7,:)=alignedGFtable(98,:);
gfmaxadaptHF1(8,:)=alignedGFtable(99,:);
gfmaxadaptHF1(9,:)=alignedGFtable(10,:);
gfmaxadaptHF1(10,:)=alignedGFtable(11,:);
gfmaxadaptHF1(3,:)=alignedGFtable(12,:);
gfmaxadaptHF1(4,:)=alignedGFtable(22,:);
gfmaxadaptHF1(1,:)=alignedGFtable(23,:);
gfmaxadaptHF1(2,:)=alignedGFtable(34,:);
gfmaxadaptHF1(3,:)=alignedGFtable(41,:);
gfmaxadaptHF1(4,:)=alignedGFtable(42,:);
gfmaxadaptHF1(2,:)=alignedGFtable(90,:);
gfmaxadaptHF1(3,:)=alignedGFtable(108,:);



%low friction catch under min weight 
nessais3=3;
lfmincatchLF1=zeros(nessais3, nparticipants);
lfmincatchLF1(1,:)=alignedLFtable(31,:);
lfmincatchLF1(2,:)=alignedLFtable(43,:);
lfmincatchLF1(3,:)=alignedLFtable(91,:);

gfmincatchLF1=zeros(nessais3, nparticipants);
gfmincatchLF1(1,:)=alignedGFtable(31,:);
gfmincatchLF1(2,:)=alignedGFtable(43,:);
gfmincatchLF1(3,:)=alignedGFtable(91,:);

%high friction adaptation under min weight 
nessais4=18;
lfminadaptHF1=zeros(nessais4, nparticipants);
lfminadaptHF1(1,:)=alignedLFtable(30,:);
lfminadaptHF1(2,:)=alignedLFtable(58,:);
lfminadaptHF1(3,:)=alignedLFtable(59,:);
lfminadaptHF1(4,:)=alignedLFtable(60,:);
lfminadaptHF1(5,:)=alignedLFtable(77,:);
lfminadaptHF1(6,:)=alignedLFtable(78,:);
lfminadaptHF1(7,:)=alignedLFtable(101,:);
lfminadaptHF1(8,:)=alignedLFtable(102,:);
lfminadaptHF1(9,:)=alignedLFtable(8,:);
lfminadaptHF1(10,:)=alignedLFtable(20,:);
lfminadaptHF1(11,:)=alignedLFtable(38,:);
lfminadaptHF1(12,:)=alignedLFtable(39,:);
lfminadaptHF1(13,:)=alignedLFtable(86,:);
lfminadaptHF1(14,:)=alignedLFtable(87,:);
lfminadaptHF1(15,:)=alignedLFtable(88,:);
lfminadaptHF1(16,:)=alignedLFtable(104,:);
lfminadaptHF1(17,:)=alignedLFtable(105,:);
lfminadaptHF1(18,:)=alignedLFtable(106,:);

gfminadaptHF1=zeros(nessais4, nparticipants);
gfminadaptHF1(1,:)=alignedGFtable(30,:);
gfminadaptHF1(2,:)=alignedGFtable(58,:);
gfminadaptHF1(3,:)=alignedGFtable(59,:);
gfminadaptHF1(4,:)=alignedGFtable(60,:);
gfminadaptHF1(5,:)=alignedGFtable(77,:);
gfminadaptHF1(6,:)=alignedGFtable(78,:);
gfminadaptHF1(7,:)=alignedGFtable(101,:);
gfminadaptHF1(8,:)=alignedGFtable(102,:);
gfminadaptHF1(9,:)=alignedGFtable(8,:);
gfminadaptHF1(10,:)=alignedGFtable(20,:);
gfminadaptHF1(11,:)=alignedGFtable(38,:);
gfminadaptHF1(12,:)=alignedGFtable(39,:);
gfminadaptHF1(13,:)=alignedGFtable(86,:);
gfminadaptHF1(14,:)=alignedGFtable(87,:);
gfminadaptHF1(15,:)=alignedGFtable(88,:);
gfminadaptHF1(16,:)=alignedGFtable(104,:);
gfminadaptHF1(17,:)=alignedGFtable(105,:);
gfminadaptHF1(18,:)=alignedGFtable(106,:);

%% Friction catch high friction (low to high friction)

%high friction catch under max weight 
nessais5=3;
lfmaxcatchLF2=zeros(nessais5, nparticipants);
lfmaxcatchLF2(1,:)=alignedLFtable(55,:);
lfmaxcatchLF2(2,:)=alignedLFtable(73,:);
lfmaxcatchLF2(3,:)=alignedLFtable(97,:);

gfmaxcatchLF2=zeros(nessais5, nparticipants);
gfmaxcatchLF2(1,:)=alignedGFtable(55,:);
gfmaxcatchLF2(2,:)=alignedGFtable(73,:);
gfmaxcatchLF2(3,:)=alignedGFtable(97,:);


%low friction adaptation under max weight 
nessais6=20;
lfmaxadaptHF2=zeros(nessais6, nparticipants);
lfmaxadaptHF2(1,:)=alignedLFtable(2,:);
lfmaxadaptHF2(2,:)=alignedLFtable(3,:);
lfmaxadaptHF2(3,:)=alignedLFtable(14,:);
lfmaxadaptHF2(4,:)=alignedLFtable(15,:);
lfmaxadaptHF2(5,:)=alignedLFtable(16,:);
lfmaxadaptHF2(6,:)=alignedLFtable(50,:);
lfmaxadaptHF2(7,:)=alignedLFtable(62,:);
lfmaxadaptHF2(8,:)=alignedLFtable(63,:);
lfmaxadaptHF2(9,:)=alignedLFtable(80,:);
lfmaxadaptHF2(10,:)=alignedLFtable(81,:);
lfmaxadaptHF2(11,:)=alignedLFtable(82,:);
lfmaxadaptHF2(12,:)=alignedLFtable(34,:);
lfmaxadaptHF2(13,:)=alignedLFtable(35,:);
lfmaxadaptHF2(14,:)=alignedLFtable(36,:);
lfmaxadaptHF2(15,:)=alignedLFtable(47,:);
lfmaxadaptHF2(16,:)=alignedLFtable(48,:);
lfmaxadaptHF2(17,:)=alignedLFtable(72,:);
lfmaxadaptHF2(18,:)=alignedLFtable(94,:);
lfmaxadaptHF2(19,:)=alignedLFtable(95,:);
lfmaxadaptHF2(20,:)=alignedLFtable(96,:);

gfmaxadaptHF2=zeros(nessais6, nparticipants);
gfmaxadaptHF2(1,:)=alignedGFtable(2,:);
gfmaxadaptHF2(2,:)=alignedGFtable(3,:);
gfmaxadaptHF2(3,:)=alignedGFtable(14,:);
gfmaxadaptHF2(4,:)=alignedGFtable(15,:);
gfmaxadaptHF2(5,:)=alignedGFtable(16,:);
gfmaxadaptHF2(6,:)=alignedGFtable(50,:);
gfmaxadaptHF2(7,:)=alignedGFtable(62,:);
gfmaxadaptHF2(8,:)=alignedGFtable(63,:);
gfmaxadaptHF2(9,:)=alignedGFtable(80,:);
gfmaxadaptHF2(10,:)=alignedGFtable(81,:);
gfmaxadaptHF2(11,:)=alignedGFtable(82,:);
gfmaxadaptHF2(12,:)=alignedGFtable(34,:);
gfmaxadaptHF2(13,:)=alignedGFtable(35,:);
gfmaxadaptHF2(14,:)=alignedGFtable(36,:);
gfmaxadaptHF2(15,:)=alignedGFtable(47,:);
gfmaxadaptHF2(16,:)=alignedGFtable(48,:);
gfmaxadaptHF2(17,:)=alignedGFtable(72,:);
gfmaxadaptHF2(18,:)=alignedGFtable(94,:);
gfmaxadaptHF2(19,:)=alignedGFtable(95,:);
gfmaxadaptHF2(20,:)=alignedGFtable(96,:);



%high friction catch under min weight 
nessais7=4;
lfmincatchLF2=zeros(nessais7, nparticipants);
lfmincatchLF2(1,:)=alignedLFtable(7,:);
lfmincatchLF2(2,:)=alignedLFtable(19,:);
lfmincatchLF2(3,:)=alignedLFtable(37,:);
lfmincatchLF2(3,:)=alignedLFtable(85,:);

gfmincatchLF2=zeros(nessais7, nparticipants);
gfmincatchLF2(1,:)=alignedGFtable(7,:);
gfmincatchLF2(2,:)=alignedGFtable(19,:);
gfmincatchLF2(3,:)=alignedGFtable(37,:);
gfmincatchLF2(3,:)=alignedGFtable(85,:);


%low friction adaptation under min weight 
nessais8=16;
lfminadaptHF2=zeros(nessais8, nparticipants);
lfminadaptHF2(1,:)=alignedLFtable(5,:);
lfminadaptHF2(2,:)=alignedLFtable(6,:);
lfminadaptHF2(3,:)=alignedLFtable(18,:);
lfminadaptHF2(4,:)=alignedLFtable(52,:);
lfminadaptHF2(5,:)=alignedLFtable(53,:);
lfminadaptHF2(6,:)=alignedLFtable(54,:);
lfminadaptHF2(7,:)=alignedLFtable(65,:);
lfminadaptHF2(8,:)=alignedLFtable(66,:);
lfminadaptHF2(9,:)=alignedLFtable(84,:);
lfminadaptHF2(10,:)=alignedLFtable(32,:);
lfminadaptHF2(11,:)=alignedLFtable(44,:);
lfminadaptHF2(12,:)=alignedLFtable(45,:);
lfminadaptHF2(13,:)=alignedLFtable(68,:);
lfminadaptHF2(14,:)=alignedLFtable(69,:);
lfminadaptHF2(15,:)=alignedLFtable(70,:);
lfminadaptHF2(16,:)=alignedLFtable(92,:);

gfminadaptHF2=zeros(nessais8, nparticipants);
gfminadaptHF2(1,:)=alignedGFtable(5,:);
gfminadaptHF2(2,:)=alignedGFtable(6,:);
gfminadaptHF2(3,:)=alignedGFtable(18,:);
gfminadaptHF2(4,:)=alignedGFtable(52,:);
gfminadaptHF2(5,:)=alignedGFtable(53,:);
gfminadaptHF2(6,:)=alignedGFtable(54,:);
gfminadaptHF2(7,:)=alignedGFtable(65,:);
gfminadaptHF2(8,:)=alignedGFtable(66,:);
gfminadaptHF2(9,:)=alignedGFtable(84,:);
gfminadaptHF2(10,:)=alignedGFtable(32,:);
gfminadaptHF2(11,:)=alignedGFtable(44,:);
gfminadaptHF2(12,:)=alignedGFtable(45,:);
gfminadaptHF2(13,:)=alignedGFtable(68,:);
gfminadaptHF2(14,:)=alignedGFtable(69,:);
gfminadaptHF2(15,:)=alignedGFtable(70,:);
gfminadaptHF2(16,:)=alignedGFtable(92,:);


%% Calculation of means and standard deviations 
%Load Forces
meanlfmaxcatchLF1 = zeros(1,nessais1);
meanlfmaxadaptHF1 = zeros(1,nessais2);
stdlfmaxcatchLF1 = zeros(1,nessais1);
stdlfmaxadaptHF1 = zeros(1,nessais2);

meanlfmaxcatchLF2 = zeros(1,nessais5);
meanlfmaxadaptHF2 = zeros(1,nessais6);
stdlfmaxcatchLF2 = zeros(1,nessais5);
stdlfmaxadaptHF2 = zeros(1,nessais6);

meanlfmincatchLF1 = zeros(1,nessais3);
meanlfminadaptHF1 = zeros(1,nessais4);
stdlfmincatchLF1 = zeros(1,nessais3);
stdlfminadaptHF1 = zeros(1,nessais4);

meanlfmincatchLF2 = zeros(1,nessais7);
meanlfminadaptHF2 = zeros(1,nessais8);
stdlfmincatchLF2 = zeros(1,nessais7);
stdlfminadaptHF2 = zeros(1,nessais8);

%Grip Forces
meangfmaxcatchLF1 = zeros(1,nessais1);
meangfmaxadaptHF1 = zeros(1,nessais2);
stdgfmaxcatchLF1 = zeros(1,nessais1);
stdgfmaxadaptHF1 = zeros(1,nessais2);

meangfmaxcatchLF2 = zeros(1,nessais5);
meangfmaxadaptHF2 = zeros(1,nessais6);
stdgfmaxcatchLF2 = zeros(1,nessais5);
stdgfmaxadaptHF2 = zeros(1,nessais6);

meangfmincatchLF1 = zeros(1,nessais3);
meangfminadaptHF1 = zeros(1,nessais4);
stdgfmincatchLF1 = zeros(1,nessais3);
stdgfminadaptHF1 = zeros(1,nessais4);

meangfmincatchLF2 = zeros(1,nessais7);
meangfminadaptHF2 = zeros(1,nessais8);
stdgfmincatchLF2 = zeros(1,nessais7);
stdgfminadaptHF2 = zeros(1,nessais8);

%Computation of mean and standard deviations of the matrices
for i = 1:nessais1
    meanlfmaxcatchLF1(i)=mean(lfmaxcatchLF1,2)
end

