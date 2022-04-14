function meancurves = plotmeanaccfrictioncatch(alignedacctable, tsteps, nparticipants)
%% Friction catch low friction (high to low friction)

%low friction catch under max weight 
nessais1=4;
lfmaxcatchLF1=zeros(tsteps-1999,nessais1*nparticipants);

lfmaxcatchLF1 = alignedacctable(:,1:108:end);  
lfmaxcatchLF1 = [lfmaxcatchLF1 alignedacctable(:,13:108:end)];
lfmaxcatchLF1 = [lfmaxcatchLF1 alignedacctable(:,61:108:end)];
lfmaxcatchLF1 = [lfmaxcatchLF1 alignedacctable(:,79:108:end)];


%high friction adaptation under max weight 
nessais2=18;
lfmaxadaptHF1=zeros(tsteps-1999,nessais2*nparticipants);

lfmaxadaptHF1=alignedacctable(:,26:108:end);
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,27:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,28:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,56:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,74:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,75:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,98:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,99:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,10:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,11:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,12:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,22:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,23:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,24:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,41:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,42:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,90:108:end)];
lfmaxadaptHF1=[lfmaxadaptHF1 alignedacctable(:,108:108:end)];


%low friction catch under min weight 
nessais3=3;
lfmincatchLF1=zeros(tsteps-1999,nessais3*nparticipants);

lfmincatchLF1=alignedacctable(:,31:108:end);
lfmincatchLF1=[lfmincatchLF1 alignedacctable(:,43:108:end)];
lfmincatchLF1=[lfmincatchLF1 alignedacctable(:,91:108:end)];


%high friction adaptation under min weight 
nessais4=18;
lfminadaptHF1=zeros(tsteps-1999,nessais4*nparticipants);


lfminadaptHF1=alignedacctable(:,30:108:end);
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,58:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,59:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,60:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,77:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,78:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,101:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,102:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,8:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,20:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,38:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,39:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,86:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,87:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,88:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,104:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,105:108:end)];
lfminadaptHF1=[lfminadaptHF1 alignedacctable(:,106:108:end)];

%% Friction catch high friction (low to high friction)

%high friction catch under max weight 
nessais5=3;
lfmaxcatchHF2=zeros(tsteps-1999,nessais5*nparticipants);

lfmaxcatchHF2=alignedacctable(:,55:108:end);
lfmaxcatchHF2=[lfmaxcatchHF2 alignedacctable(:,73:108:end)];
lfmaxcatchHF2=[lfmaxcatchHF2 alignedacctable(:,97:108:end)];

%low friction adaptation under max weight 
nessais6=20;
lfmaxadaptLF2=zeros(tsteps-1999,nessais6*nparticipants);

lfmaxadaptLF2=alignedacctable(:,2:108:end);
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,3:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,14:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,15:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,16:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,50:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,62:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,63:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,80:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,81:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,82:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,34:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,35:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,36:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,47:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,48:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,72:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,94:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,95:108:end)];
lfmaxadaptLF2=[lfmaxadaptLF2 alignedacctable(:,96:108:end)];

%high friction catch under min weight 
nessais7=4;
lfmincatchHF2=zeros(tsteps-1999,nessais7*nparticipants);

lfmincatchHF2=alignedacctable(:,7:108:end);
lfmincatchHF2=[lfmincatchHF2 alignedacctable(:,19:108:end)];
lfmincatchHF2=[lfmincatchHF2 alignedacctable(:,37:108:end)];
lfmincatchHF2=[lfmincatchHF2 alignedacctable(:,85:108:end)];

%low friction adaptation under min weight 
nessais8=16;
lfminadaptLF2=zeros(tsteps-1999,nessais8*nparticipants);


lfminadaptLF2=alignedacctable(:,5:108:end);
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,6:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,18:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,52:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,53:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,54:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,65:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,66:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,84:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,32:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,44:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,45:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,68:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,69:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,70:108:end)];
lfminadaptLF2=[lfminadaptLF2 alignedacctable(:,92:108:end)];


%% Calculation of means and standard deviations 
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


%% Standard deviation boundaries computation
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
    
end

%% Plots 
% Figures LF

figure; 

x=10:0.05:12.45;
subplot(2,2,1)
y1 = meanlfmaxcatchLF1(1:50);
y2 = meanlfmaxadaptHF1(1:50);
plot(x,y1,'r--', x, y2, 'b', 'LineWidth', 1.5)
%hold on 
%fill([x fliplr(x)], [ul_lfmaxcatchLF1 fliplr(ll_lfmaxcatchLF1)], 'r', 'FaceAlpha', 0.2)
%hold on
%fill([x fliplr(x)], [ul_lfmaxadaptHF1 fliplr(ll_lfmaxadaptHF1)], 'b', 'FaceAlpha', 0.2)
legend('', '')
title('Maximal manipulandum weight')
xlabel('Time (s)');
ylabel('Acceleration (cm/s^2)');
legend('Low friction catch', 'High friction normal');
ylim([- 200 300]);

subplot(2,2,2)
y3 = meanlfmincatchLF1(1:50);
y4 = meanlfminadaptHF1(1:50);
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
%hold on
%fill([x fliplr(x)], [ul_lfmincatchLF1 fliplr(ll_lfmincatchLF1)], 'r', 'FaceAlpha', 0.2)
%fill([x fliplr(x)], [ul_lfminadaptHF1 fliplr(ll_lfminadaptHF1)], 'b', 'FaceAlpha', 0.2)
title('Minimal manipulandum weight')
xlabel('Time (s)');
ylabel('Acceleration (cm/s^2)');
legend('Low friction catch', 'High friction normal');

subplot(2,2,3)
y5 = meanlfmaxcatchHF2(1:50);
y6 = meanlfmaxadaptLF2(1:50);
plot(x,y6,'r', x,y5,'b--','LineWidth', 1.5)
%hold on
%fill([x fliplr(x)], [ul_lfmaxcatchHF2 fliplr(ll_lfmaxcatchHF2)], 'b', 'FaceAlpha', 0.2)
%fill([x fliplr(x)], [ul_lfmaxadaptLF2 fliplr(ll_lfmaxadaptLF2)], 'r', 'FaceAlpha', 0.2)
title('Maximal manipulandum weight')
xlabel('Time (s)');
ylabel('Acceleration (cm/s^2)');
legend('Low friction normal', 'High friction catch');

subplot(2,2,4)
y7 = meanlfmincatchHF2(1:50);
y8 = meanlfminadaptLF2(1:50);
plot(x,y8,'r', x,y7,'b--','LineWidth', 1.5)
%hold on 
%fill([x fliplr(x)], [ul_lfmincatchHF2 fliplr(ll_lfmincatchHF2)], 'b', 'FaceAlpha', 0.2)
%fill([x fliplr(x)], [ul_lfminadaptLF2 fliplr(ll_lfminadaptLF2)], 'r', 'FaceAlpha', 0.2)
title('Minimal manipulandum weight')
xlabel('Time (s)');
ylabel('Acceleration (cm/s^2)');
legend('Low friction normal', 'High friction catch');

suptitle( 'Adaptation to friction during the first movement of friction catch trials - Elderly participants');
%suptitle( 'Adaptation to friction during the first movement of friction catch trials - Young participants');
end