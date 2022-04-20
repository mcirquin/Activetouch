function acccurves = plotmeanaccfrictioncatch(alignedacctable, tsteps, nparticipants)
%% Friction catch low friction (high to low friction)

%low friction catch under max weight 
nessais1=2;
accmaxcatchacc1=zeros(tsteps-1999,nessais1*nparticipants);

accmaxcatchacc1 = alignedacctable(:,1:108:end);  
accmaxcatchacc1 = [accmaxcatchacc1 alignedacctable(:,13:108:end)];
%accmaxcatchacc1 = [accmaxcatchacc1 alignedacctable(:,61:108:end)];
%accmaxcatchacc1 = [accmaxcatchacc1 alignedacctable(:,79:108:end)];


%high friction adaptation under max weight 
nessais2=18;
accmaxadaptHF1=zeros(tsteps-1999,nessais2*nparticipants);

accmaxadaptHF1=alignedacctable(:,26:108:end);
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,27:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,28:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,56:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,74:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,75:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,98:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,99:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,10:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,11:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,12:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,22:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,23:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,24:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,41:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,42:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,90:108:end)];
accmaxadaptHF1=[accmaxadaptHF1 alignedacctable(:,108:108:end)];


%low friction catch under min weight 
nessais3=1;
accmincatchacc1=zeros(tsteps-1999,nessais3*nparticipants);

accmincatchacc1=alignedacctable(:,31:108:end);
%accmincatchacc1=[accmincatchacc1 alignedacctable(:,43:108:end)];
%accmincatchacc1=[accmincatchacc1 alignedacctable(:,91:108:end)];


%high friction adaptation under min weight 
nessais4=18;
accminadaptHF1=zeros(tsteps-1999,nessais4*nparticipants);


accminadaptHF1=alignedacctable(:,30:108:end);
accminadaptHF1=[accminadaptHF1 alignedacctable(:,58:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,59:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,60:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,77:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,78:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,101:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,102:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,8:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,20:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,38:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,39:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,86:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,87:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,88:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,104:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,105:108:end)];
accminadaptHF1=[accminadaptHF1 alignedacctable(:,106:108:end)];

%% Friction catch high friction (low to high friction)

%high friction catch under max weight 
nessais5=2;
accmaxcatchHF2=zeros(tsteps-1999,nessais5*nparticipants);

%accmaxcatchHF2=alignedacctable(:,55:108:end);
accmaxcatchHF2=alignedacctable(:,73:108:end);
accmaxcatchHF2=[accmaxcatchHF2 alignedacctable(:,97:108:end)];

%low friction adaptation under max weight 
nessais6=20;
accmaxadaptacc2=zeros(tsteps-1999,nessais6*nparticipants);

accmaxadaptacc2=alignedacctable(:,2:108:end);
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,3:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,14:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,15:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,16:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,50:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,62:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,63:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,80:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,81:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,82:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,34:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,35:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,36:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,47:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,48:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,72:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,94:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,95:108:end)];
accmaxadaptacc2=[accmaxadaptacc2 alignedacctable(:,96:108:end)];

%high friction catch under min weight 
nessais7=3;
accmincatchHF2=zeros(tsteps-1999,nessais7*nparticipants);

accmincatchHF2=alignedacctable(:,7:108:end);
accmincatchHF2=[accmincatchHF2 alignedacctable(:,19:108:end)];
%accmincatchHF2=[accmincatchHF2 alignedacctable(:,37:108:end)];
accmincatchHF2=[accmincatchHF2 alignedacctable(:,85:108:end)];

%low friction adaptation under min weight 
nessais8=16;
accminadaptacc2=zeros(tsteps-1999,nessais8*nparticipants);


accminadaptacc2=alignedacctable(:,5:108:end);
accminadaptacc2=[accminadaptacc2 alignedacctable(:,6:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,18:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,52:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,53:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,54:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,65:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,66:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,84:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,32:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,44:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,45:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,68:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,69:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,70:108:end)];
accminadaptacc2=[accminadaptacc2 alignedacctable(:,92:108:end)];


%% Calculation of means and standard deviations 
meanaccmaxcatchacc1=mean(accmaxcatchacc1,2);
meanaccmaxadaptHF1=mean(accmaxadaptHF1,2);
stdaccmaxcatchacc1=std(accmaxcatchacc1, 0, 2);
stdaccmaxadaptHF1=std(accmaxadaptHF1, 0, 2);


meanaccmaxcatchHF2=mean(accmaxcatchHF2,2);
meanaccmaxadaptacc2=mean(accmaxadaptacc2,2);
stdaccmaxcatchHF2=std(accmaxcatchHF2,0,2);
stdaccmaxadaptacc2=std(accmaxadaptacc2,0,2);

meanaccmincatchacc1=mean(accmincatchacc1,2);
meanaccminadaptHF1=mean(accminadaptHF1,2);
stdaccmincatchacc1=std(accmincatchacc1,0,2);
stdaccminadaptHF1=std(accminadaptHF1,0,2);

meanaccmincatchHF2=mean(accmincatchHF2,2);
meanaccminadaptacc2=mean(accminadaptacc2,2);
stdaccmincatchHF2=std(accmincatchHF2,0,2);
stdaccminadaptacc2=std(accminadaptacc2,0,2);


%% Standard deviation boundaries computation
%computation of the boundaries
for i=1:length(meanaccmaxcatchacc1)
    %load forces
    ul_accmaxcatchacc1(i) = meanaccmaxcatchacc1(i) + stdaccmaxcatchacc1(i); 
    ll_accmaxcatchacc1(i) = meanaccmaxcatchacc1(i) - stdaccmaxcatchacc1(i);

    ul_accmaxadaptHF1(i) = meanaccmaxadaptHF1(i) + stdaccmaxadaptHF1(i);
    ll_accmaxadaptHF1(i) = meanaccmaxadaptHF1(i) - stdaccmaxadaptHF1(i);

    ul_accmaxcatchHF2(i) = meanaccmaxcatchHF2(i) + stdaccmaxcatchHF2(i); 
    ll_accmaxcatchHF2(i) = meanaccmaxcatchHF2(i) - stdaccmaxcatchHF2(i);

    ul_accmaxadaptacc2(i) = meanaccmaxadaptacc2(i) + stdaccmaxadaptacc2(i);
    ll_accmaxadaptacc2(i) = meanaccmaxadaptacc2(i) - stdaccmaxadaptacc2(i);

    ul_accmincatchacc1(i) = meanaccmincatchacc1(i) + stdaccmincatchacc1(i);
    ll_accmincatchacc1(i) = meanaccmincatchacc1(i) - stdaccmincatchacc1(i);

    ul_accminadaptHF1(i) = meanaccminadaptHF1(i) + stdaccminadaptHF1(i); 
    ll_accminadaptHF1(i) = meanaccminadaptHF1(i) - stdaccminadaptHF1(i);

    ul_accmincatchHF2(i) = meanaccmincatchHF2(i) + stdaccmincatchHF2(i); 
    ll_accmincatchHF2(i) = meanaccmincatchHF2(i) - stdaccmincatchHF2(i);

    ul_accminadaptacc2(i) = meanaccminadaptacc2(i) + stdaccminadaptacc2(i); 
    ll_accminadaptacc2(i) = meanaccminadaptacc2(i) - stdaccminadaptacc2(i);
    
end

%% Plots 
% Figures acc

figure; 

x=10:0.05:12.45;
subplot(2,2,1)
y1 = meanaccmaxcatchacc1(1:50);
y2 = meanaccmaxadaptHF1(1:50);
plot(x,y1,'r--', x, y2, 'b', 'LineWidth', 1.5)
%hold on 
%fill([x fliplr(x)], [ul_accmaxcatchacc1 fliplr(ll_accmaxcatchacc1)], 'r', 'FaceAlpha', 0.2)
%hold on
%fill([x fliplr(x)], [ul_accmaxadaptHF1 fliplr(ll_accmaxadaptHF1)], 'b', 'FaceAlpha', 0.2)
legend('', '')
title('Maximal manipulandum weight')
xlabel('Time (s)');
ylabel('Acceleration (cm/s^2)');
legend('Low friction catch', 'High friction normal');
ylim([- 200 300]);

subplot(2,2,2)
y3 = meanaccmincatchacc1(1:50);
y4 = meanaccminadaptHF1(1:50);
plot(x,y3,'r--',x,y4,'b','LineWidth', 1.5)
%hold on
%fill([x fliplr(x)], [ul_accmincatchacc1 fliplr(ll_accmincatchacc1)], 'r', 'FaceAlpha', 0.2)
%fill([x fliplr(x)], [ul_accminadaptHF1 fliplr(ll_accminadaptHF1)], 'b', 'FaceAlpha', 0.2)
title('Minimal manipulandum weight')
xlabel('Time (s)');
ylabel('Acceleration (cm/s^2)');
legend('Low friction catch', 'High friction normal');

subplot(2,2,3)
y5 = meanaccmaxcatchHF2(1:50);
y6 = meanaccmaxadaptacc2(1:50);
plot(x,y6,'r', x,y5,'b--','LineWidth', 1.5)
%hold on
%fill([x fliplr(x)], [ul_accmaxcatchHF2 fliplr(ll_accmaxcatchHF2)], 'b', 'FaceAlpha', 0.2)
%fill([x fliplr(x)], [ul_accmaxadaptacc2 fliplr(ll_accmaxadaptacc2)], 'r', 'FaceAlpha', 0.2)
title('Maximal manipulandum weight')
xlabel('Time (s)');
ylabel('Acceleration (cm/s^2)');
legend('Low friction normal', 'High friction catch');

subplot(2,2,4)
y7 = meanaccmincatchHF2(1:50);
y8 = meanaccminadaptacc2(1:50);
plot(x,y8,'r', x,y7,'b--','LineWidth', 1.5)
%hold on 
%fill([x fliplr(x)], [ul_accmincatchHF2 fliplr(ll_accmincatchHF2)], 'b', 'FaceAlpha', 0.2)
%fill([x fliplr(x)], [ul_accminadaptacc2 fliplr(ll_accminadaptacc2)], 'r', 'FaceAlpha', 0.2)
title('Minimal manipulandum weight')
xlabel('Time (s)');
ylabel('Acceleration (cm/s^2)');
legend('Low friction normal', 'High friction catch');

suptitle( 'Adaptation to friction during the first movement of friction catch trials - Elderly participants');
%suptitle( 'Adaptation to friction during the first movement of friction catch trials - Young participants');
end
