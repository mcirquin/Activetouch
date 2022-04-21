%Creates two matrices (ntrials,nparticipants) containing the max of the LF
%peak and the min of the LF
%for each trial of each participant. Calculates the difference between the
%two.
function output=at_importfoldersmaxandminLF(alignedLFtable, nparticipants)

maxalignedLF = alignedLFtable(1:400,:); %matrice de stockage des pics de LF
minalignedLF = alignedLFtable(100:500,:); %matrice de stockage des mins de LF

maxLF = max(maxalignedLF);
minLF = min(minalignedLF);

diffLF=(maxLF-minLF);

%% Weight catch max (min to max weight)

%max weight catch under low friction 
nessais1=4;
diffLFcatchmax1=zeros(nessais1*nparticipants);

diffLFcatchmax1 = diffLF(33:108:end);  
diffLFcatchmax1 = [diffLFcatchmax1 diffLF(46:108:end)];
diffLFcatchmax1 = [diffLFcatchmax1 diffLF(71:108:end)];
diffLFcatchmax1 = [diffLFcatchmax1 diffLF(93:108:end)];
meandiffLFcatchmax1 = mean(diffLFcatchmax1);

%min weight adaptation under low friction
nessais8=16;
diffLFadaptmin1=zeros(nessais8*nparticipants);

diffLFadaptmin1=diffLF(5:108:end);
diffLFadaptmin1=[diffLFadaptmin1 diffLF(6:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(18:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(52:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(53:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(54:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(65:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(66:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(84:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(32:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(44:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(45:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(68:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(69:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(70:108:end)];
diffLFadaptmin1=[diffLFadaptmin1 diffLF(92:108:end)];
meandiffLFadaptmin1 = mean(diffLFadaptmin1);


%max weight catch under high friction 
nessais7=5;
diffHFcatchmax1=zeros(nessais7*nparticipants);

diffHFcatchmax1=diffLF(9:108:end);
diffHFcatchmax1=[diffHFcatchmax1 diffLF(21:108:end)];
diffHFcatchmax1=[diffHFcatchmax1 diffLF(40:108:end)];
diffHFcatchmax1=[diffHFcatchmax1 diffLF(89:108:end)];
diffHFcatchmax1=[diffHFcatchmax1 diffLF(107:108:end)];
meandiffHFcatchmax1 = mean(diffHFcatchmax1);

%min weight adaptation under high friction
nessais4=18;
diffHFadaptmin1=zeros(nessais4*nparticipants);

diffHFadaptmin1=diffLF(30:108:end);
diffHFadaptmin1=[diffHFadaptmin1 diffLF(58:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(59:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(60:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(77:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(78:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(101:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(102:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(8:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(20:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(38:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(39:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(86:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(87:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(88:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(104:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(105:108:end)];
diffHFadaptmin1=[diffHFadaptmin1 diffLF(106:108:end)];
meandiffHFadaptmin1 = mean(diffHFadaptmin1);

%% Weight catch min (max to min weight)
% min weight catch under low friction
nessais7=5;
diffLFcatchmin2=zeros(nessais7*nparticipants);

diffLFcatchmin2=diffLF(4:108:end);
diffLFcatchmin2=[diffLFcatchmin2 diffLF(17:108:end)];
diffLFcatchmin2=[diffLFcatchmin2 diffLF(51:108:end)];
diffLFcatchmin2=[diffLFcatchmin2 diffLF(64:108:end)];
diffLFcatchmin2=[diffLFcatchmin2 diffLF(83:108:end)];
meandiffLFcatchmin2 = mean(diffLFcatchmin2);


% adaptation max under low friction
nessais6=20;
diffLFadaptmax2=zeros(nessais6*nparticipants);

diffLFadaptmax2=diffLF(2:108:end);
diffLFadaptmax2=[diffLFadaptmax2 diffLF(3:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(14:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(15:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(16:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(50:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(62:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(63:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(80:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(81:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(82:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(34:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(35:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(36:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(47:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(48:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(72:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(94:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(95:108:end)];
diffLFadaptmax2=[diffLFadaptmax2 diffLF(96:108:end)];
meandiffLFadaptmax2 = mean(diffLFadaptmax2);

%min weight catch under high friction
nessais7=4;
diffHFcatchmin2=zeros(nessais7*nparticipants);

diffHFcatchmin2=diffLF(29:108:end);
diffHFcatchmin2=[diffHFcatchmin2 diffLF(57:108:end)];
diffHFcatchmin2=[diffHFcatchmin2 diffLF(76:108:end)];
diffHFcatchmin2=[diffHFcatchmin2 diffLF(100:108:end)];
meandiffHFcatchmin2 = mean(diffHFcatchmin2);

%max weight adaptation under high friction
nessais8=18;
diffHFadaptmax2=zeros(nessais8*nparticipants);

diffHFadaptmax2=diffLF(26:108:end);
diffHFadaptmax2=[diffHFadaptmax2 diffLF(27:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(28:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(56:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(74:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(75:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(98:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(99:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(10:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(11:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(12:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(22:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(23:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(24:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(41:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(42:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(90:108:end)];
diffHFadaptmax2=[diffHFadaptmax2 diffLF(108:108:end)];
meandiffHFadaptmax2 = mean(diffHFadaptmax2);


%{
x=linspace(0,10);
y=linspace(0,10);
figure
plot(meandiffLFadaptmin1,meandiffLFcatchmax1,'r.', 'MarkerSize',10);
hold on
plot(meandiffHFadaptmin1,meandiffHFcatchmax1,'b.', 'MarkerSize',10);
hold on
plot(meandiffLFadaptmax2,meandiffLFcatchmax1,'r.', 'MarkerSize',10);
hold on
plot(meandiffHFadaptmax2,meandiffHFcatchmax1,'g.', 'MarkerSize',10);
hold on
plot(x,y,'Color',[0.2 0.2 0.2]) %identity line (x=y)
%}

subplot(1,2,1)
y=[ meandiffLFadaptmin1 meandiffLFcatchmax1;  meandiffHFadaptmin1 meandiffHFcatchmax1];%; meandiffLFadaptmax2  meandiffLFcatchmin2; meandiffHFadaptmax2 meandiffHFcatchmin2 ];
b = bar(y);
set(gca,'XTickLabel',{'Low friction';'High friction'})%;'Max weight LF';'Max weight HF'});
b(1).FaceColor = 'b';
b(2).FaceColor = 'r';
b(2).LineStyle = '--';
b(2).LineWidth = 1.5;
legend('Minimal weight normal','Maximal weight catch', 'Location','north')
ylabel('Difference LF (N)')
ylim([0 5]);

subplot(1,2,2)
y=[meandiffLFadaptmax2  meandiffLFcatchmin2; meandiffHFadaptmax2 meandiffHFcatchmin2];
b = bar(y);
set(gca,'XTickLabel',{'Low friction';'High friction'})%;'Max weight LF';'Max weight HF'});
b(1).FaceColor = 'r';
b(2).FaceColor = 'b';
b(2).LineStyle = '--';
b(2).LineWidth = 1.5;
legend('Maximal weight normal','Minimal weight catch', 'Location','north')
ylabel('Difference LF (N)')
ylim([0 5])

end

