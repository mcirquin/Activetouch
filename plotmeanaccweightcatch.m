function meanacc = plotmeanaccweightcatch(alignedacctable, tsteps, nparticipants)
%% Weight catch max (min to max weight)

%max weight catch under low friction 
nessais1=4;
lfLFcatchmax1=zeros(tsteps-1999,nessais1*nparticipants);


lfLFcatchmax1 = alignedacctable(:,33:108:end);  
lfLFcatchmax1 = [lfLFcatchmax1 alignedacctable(:,46:108:end)];
lfLFcatchmax1 = [lfLFcatchmax1 alignedacctable(:,71:108:end)];
lfLFcatchmax1 = [lfLFcatchmax1 alignedacctable(:,93:108:end)];


%min weight adaptation under low friction
nessais8=16;
lfLFadaptmin1=zeros(tsteps-1999,nessais8*nparticipants);


lfLFadaptmin1=alignedacctable(:,5:108:end);
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,6:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,18:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,52:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,53:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,54:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,65:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,66:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,84:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,32:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,44:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,45:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,68:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,69:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,70:108:end)];
lfLFadaptmin1=[lfLFadaptmin1 alignedacctable(:,92:108:end)];



%max weight catch under high friction 
nessais7=5;
lfHFcatchmax1=zeros(tsteps-1999,nessais7*nparticipants);


lfHFcatchmax1=alignedacctable(:,9:108:end);
lfHFcatchmax1=[lfHFcatchmax1 alignedacctable(:,21:108:end)];
lfHFcatchmax1=[lfHFcatchmax1 alignedacctable(:,40:108:end)];
lfHFcatchmax1=[lfHFcatchmax1 alignedacctable(:,89:108:end)];
lfHFcatchmax1=[lfHFcatchmax1 alignedacctable(:,107:108:end)];



%min weight adaptation under high friction
nessais4=18;
lfHFadaptmin1=zeros(tsteps-1999,nessais4*nparticipants);


lfHFadaptmin1=alignedacctable(:,30:108:end);
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,58:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,59:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,60:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,77:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,78:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,101:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,102:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,8:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,20:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,38:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,39:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,86:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,87:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,88:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,104:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,105:108:end)];
lfHFadaptmin1=[lfHFadaptmin1 alignedacctable(:,106:108:end)];




%% Weight catch min (max to min weight)
% min weight catch under low friction
nessais7=5;
lfLFcatchmin2=zeros(tsteps-1999,nessais7*nparticipants);


lfLFcatchmin2=alignedacctable(:,4:108:end);
lfLFcatchmin2=[lfLFcatchmin2 alignedacctable(:,17:108:end)];
lfLFcatchmin2=[lfLFcatchmin2 alignedacctable(:,51:108:end)];
lfLFcatchmin2=[lfLFcatchmin2 alignedacctable(:,64:108:end)];
lfLFcatchmin2=[lfLFcatchmin2 alignedacctable(:,83:108:end)];



% adaptation max under low friction
nessais6=20;
lfLFadaptmax2=zeros(tsteps-1999,nessais6*nparticipants);

lfLFadaptmax2=alignedacctable(:,2:108:end);
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,3:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,14:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,15:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,16:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,50:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,62:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,63:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,80:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,81:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,82:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,34:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,35:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,36:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,47:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,48:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,72:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,94:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,95:108:end)];
lfLFadaptmax2=[lfLFadaptmax2 alignedacctable(:,96:108:end)];



%min weight catch under high friction
nessais7=4;
lfHFcatchmin2=zeros(tsteps-1999,nessais7*nparticipants);


lfHFcatchmin2=alignedacctable(:,29:108:end);
lfHFcatchmin2=[lfHFcatchmin2 alignedacctable(:,57:108:end)];
lfHFcatchmin2=[lfHFcatchmin2 alignedacctable(:,76:108:end)];
lfHFcatchmin2=[lfHFcatchmin2 alignedacctable(:,100:108:end)];




%max weight adaptation under high friction
nessais8=18;
lfHFadaptmax2=zeros(tsteps-1999,nessais8*nparticipants);


lfHFadaptmax2=alignedacctable(:,26:108:end);
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,27:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,28:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,56:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,74:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,75:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,98:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,99:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,10:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,11:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,12:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,22:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,23:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,24:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,41:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,42:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,90:108:end)];
lfHFadaptmax2=[lfHFadaptmax2 alignedacctable(:,108:108:end)];


%% Calculation of means and standard deviations 
%Load Forces

% Cr??ation et remplissage avec moyennes et standards deviation 
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



%% Standard deviation boundaries computation

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
end

%% Plots 
% Figures LF
x=10:0.05:11.1;

s1=subplot(2,2,1)
y1 = meanlfLFcatchmax1(1:23);
y2 = meanlfLFadaptmin1(1:23);
f1=fit(x(:),y1,'smoothingspline');
f2=fit(x(:),y2,'smoothingspline');
f1plot = plot(f1,x,y1)
set(f1plot,'Color','r')
set(f1plot(2),'Linestyle','--')
set(f1plot(2),'LineWidth',1.2)
hold on;
f2plot = plot(f2,x,y2)
set(f2plot,'Color','b')
set(f2plot(2),'LineWidth',1.2)
%fill([x fliplr(x)], [ul_lfLFcatchmax1 fliplr(ll_lfLFcatchmax1)], 'r', 'FaceAlpha', 0.2)
%hold on
%fill([x fliplr(x)], [ul_lfLFadaptmin1 fliplr(ll_lfLFadaptmin1)], 'b', 'FaceAlpha', 0.2)
legend('', '')
title('Low friction')
xlabel('Time (s)');
ylabel('Acceleration (cm/s^2)');
legend([f1plot(2) f2plot(2)],'Maximal weight catch', 'Minimal weight normal');
ylim([-200 300]);
grid on
ax = gca;
ax.GridAlpha = 0.07;  

s2=subplot(2,2,2)
y3 = meanlfHFcatchmax1(1:23);
y4 = meanlfHFadaptmin1(1:23);
f3=fit(x(:),y3,'smoothingspline');
f4=fit(x(:),y4,'smoothingspline');
f3plot = plot(f3,x,y3)
set(f3plot,'Color','r')
set(f3plot(2),'Linestyle','--')
set(f3plot(2),'LineWidth',1.2)
hold on;
f4plot = plot(f4,x,y4)
set(f4plot,'Color','b')
set(f4plot(2),'LineWidth',1.2)
%hold on
%fill([x fliplr(x)], [ul_lfHFcatchmax1 fliplr(ll_lfLFcatchmax1)], 'r', 'FaceAlpha', 0.2)
%fill([x fliplr(x)], [ul_lfHFadaptmin1 fliplr(ll_lfHFadaptmin1)], 'b', 'FaceAlpha', 0.2)
title('High friction')
xlabel('Time (s)');
ylabel('Acceleration (cm/s^2)');
legend([f3plot(2) f4plot(2)],'Maximal weight catch', 'Minimal weight normal');
grid on

s3=subplot(2,2,3)
y5 = meanlfLFcatchmin2(1:23);
y6 = meanlfLFadaptmax2(1:23);
f5=fit(x(:),y5,'smoothingspline');
f6=fit(x(:),y6,'smoothingspline');
f5plot = plot(f5,x,y5)
set(f5plot,'Color','b')
set(f5plot(2),'Linestyle','--')
set(f5plot(2),'LineWidth',1.2)
hold on;
f6plot = plot(f6,x,y6)
set(f6plot,'Color','r')
set(f6plot(2),'LineWidth',1.2)
%hold on
%fill([x fliplr(x)], [ul_lfLFcatchmin2 fliplr(ll_lfLFcatchmin2)], 'b', 'FaceAlpha', 0.2)
%fill([x fliplr(x)], [ul_lfLFadaptmax2 fliplr(ll_lfLFadaptmax2)], 'r', 'FaceAlpha', 0.2)
title('Low friction')
xlabel('Time (s)');
ylabel('Acceleration (cm/s^2)');
legend([f6plot(2) f5plot(2)],'Maximal weight normal','Minimal weight catch');
grid on

s4=subplot(2,2,4)
y7 = meanlfHFcatchmin2(1:23);
y8 = meanlfHFadaptmax2(1:23);
f7=fit(x(:),y7,'smoothingspline');
f8=fit(x(:),y8,'smoothingspline');
f7plot = plot(f7,x,y7)
set(f7plot,'Color','b')
set(f7plot(2),'Linestyle','--')
set(f7plot(2),'LineWidth',1.2)
hold on;
f8plot = plot(f8,x,y8)
set(f8plot,'Color','r')
set(f8plot(2),'LineWidth',1.2)
%hold on 
%fill([x fliplr(x)], [ul_lfHFcatchmin2 fliplr(ll_lfHFcatchmin2)], 'b', 'FaceAlpha', 0.2)
%fill([x fliplr(x)], [ul_lfHFadaptmax2 fliplr(ll_lfHFadaptmax2)], 'r', 'FaceAlpha', 0.2)
title('High friction')
xlabel('Time (s)');
ylabel('Acceleration (cm/s^2)');
legend([f8plot(2) f7plot(2)],'Maximal weight normal','Minimal weight catch');
grid on


% same scaling of the subplots
linkaxes([s1 s2 s3 s4], 'xy')
ax1.XLim = [10 11];
ax2.YLim = [-400 400];
%grid on all subplots 
hlink = linkprop([s1 s2 s3 s4],{'GridAlpha'});
  

%suptitle('Acceleration during the first movement of weight catch trials - Elderly participants');
%suptitle( 'Acceleration during the first movement of weight catch trials - Young participants');

end
