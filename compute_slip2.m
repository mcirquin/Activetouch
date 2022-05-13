function [state_matrix] = compute_slip2(nparticipants,treshold)

%string vectors containing the names of participants in correct order 
if nparticipants == 15
    names=["AParache" ; "ARommel" ; "ASalden" ; "BDelhaye" ; "DDoumont" ; "FSchiltz" ; "GBrandsteert" ; "JDelforge"; "JDommisse"; "LColmant"; "MBronchart"; "MDausort"; "SLedoux" ; "SVandergooten" ; "VFischer"];
elseif nparticipants == 10
    names=["ARommel" ; "ASalden" ; "BDelhaye" ; "FSchiltz" ; "GBrandsteert" ; "JDommisse"; "LColmant"; "SLedoux" ; "SVandergooten" ; "VFischer"];
elseif nparticipants == 13
    names=["ADommisse" ; "AMarechal" ; "ATikke" ; "AWertelaers" ; "BJonnart" ; "CBedford" ; "CZwaenepoel" ;"ESchoonjans"; "ESpringel"; "LCirquin"; "MMaldague"; "MRenneson"; "PLefevre"];   
else
    names=["ADommisse" ; "AMarechal" ; "ATikke" ; "AWertelaers" ; "BJonnart" ; "CZwaenepoel" ;"ESchoonjans"; "ESpringel"; "LCirquin"; "MMaldague"; "MRenneson"; "PLefevre"];
end

STnames = string.empty; %vector to store the names of participants with ST table
for i = 1:nparticipants
    if exist(strcat(names(i),'ST.mat')) == 2
        STnames = [STnames names(i)];
    else
        STnames=STnames;
    end
end
disp(STnames)

for i=1:length(STnames)
    fname=strcat(STnames(i),'ST.mat');
    load(fname)
    n=numel(st);
    %p=[1 50 99]; % percentiles
    %D=zeros(n,length(p));

    for trial=1:n % loop over all trials
        if size(st{trial},2) ~= 7
            state = nan;
        else
            % coord of triangle centers
            stx=squeeze(st{trial}(:,1,:));
            sty=squeeze(st{trial}(:,2,:));

            % nan coordinates out of CA
            id=squeeze(isnan(st{trial}(:,4,:)));

            % only consider point staying in contact ALL THE TIME
            stx(any(id,2),:)=[];
            sty(any(id,2),:)=[];

            % displ between first and last frame (shortcut ;) )
            dx=diff(stx(:,[1 end]),1,2);
            dy=diff(sty(:,[1 end]),1,2);
            dl=sqrt(dx.^2+dy.^2);

            minimum=min(dl);
            if minimum > treshold*65
                state = 1; %if slip 
            else 
                state = 0; %if no slip
            end
            %D(trial,:)=prctile(dl,p)/65; % in mm
        end
        state_matrix(trial,i) = state;
    end
end

%% Extraction of states and sorting per conditions
%HF to LF catch friction min weight
state_LFcatchmin(1,:)=state_matrix(43,:);
for j=1:length(STnames)
    vector = state_LFcatchmin(:,j);
    ntrials = length(vector) - sum(isnan(vector));
    slips_LFcatchmin(j) = (sum(vector,'omitnan')/ntrials)*100;
end
    

%HF to LF catch friction max weight
state_LFcatchmax(1,:)=state_matrix(13,:);
state_LFcatchmax(2,:)=state_matrix(25,:);
for j=1:length(STnames)
    vector = state_LFcatchmax(:,j);
    ntrials = length(vector) - sum(isnan(vector));
    slips_LFcatchmax(j) = (sum(vector,'omitnan')/ntrials)*100;
end

%LF to HF catch friction min weight
state_HFcatchmin(1,:)=state_matrix(19,:);
state_HFcatchmin(2,:)=state_matrix(31,:);
state_HFcatchmin(4,:)=state_matrix(97,:);
for j=1:length(STnames)
    vector = state_HFcatchmin(:,j);
    ntrials = length(vector) - sum(isnan(vector));
    slips_HFcatchmin(j) = (sum(vector,'omitnan')/ntrials)*100;
end

%LF to HF catch friction max weight
state_HFcatchmax(1,:)=state_matrix(85,:);
state_HFcatchmax(2,:)=state_matrix(109,:);
for j=1:length(STnames)
    vector = state_HFcatchmax(:,j);
    ntrials = length(vector) - sum(isnan(vector));
    slips_HFcatchmax(j) = (sum(vector,'omitnan')/ntrials)*100;
end

%max to min catch weight LF
state_mincatchLF(1,:)=state_matrix(16,:);
state_mincatchLF(2,:)=state_matrix(29,:);
state_mincatchLF(3,:)=state_matrix(63,:);
state_mincatchLF(4,:)=state_matrix(76,:);
state_mincatchLF(5,:)=state_matrix(95,:);
for j=1:length(STnames)
    vector = state_mincatchLF(:,j);
    ntrials = length(vector) - sum(isnan(vector));
    slips_mincatchLF(j) = (sum(vector,'omitnan')/ntrials)*100;
end

%Max to min catch weight HF
state_mincatchHF(1,:)=state_matrix(41,:);
state_mincatchHF(2,:)=state_matrix(69,:);
state_mincatchHF(3,:)=state_matrix(88,:);
state_mincatchHF(4,:)=state_matrix(112,:);
for j=1:length(STnames)
    vector = state_mincatchHF(:,j);
    ntrials = length(vector) - sum(isnan(vector));
    slips_mincatchHF(j) = (sum(vector,'omitnan')/ntrials)*100;
end

%%min to max catch weight LF
state_maxcatchLF(1,:)=state_matrix(45,:);
state_maxcatchLF(2,:)=state_matrix(58,:);
state_maxcatchLF(3,:)=state_matrix(83,:);
state_maxcatchLF(4,:)=state_matrix(105,:);
for j=1:length(STnames)
    vector = state_maxcatchLF(:,j);
    ntrials = length(vector) - sum(isnan(vector));
    slips_maxcatchLF(j) = (sum(vector,'omitnan')/ntrials)*100;
end

%min to max catch weight HF
state_maxcatchHF(1,:)=state_matrix(21,:);
state_maxcatchHF(2,:)=state_matrix(33,:);
state_maxcatchHF(3,:)=state_matrix(52,:);
state_maxcatchHF(4,:)=state_matrix(101,:);
state_maxcatchHF(5,:)=state_matrix(119,:);
for j=1:length(STnames)
    vector = state_maxcatchHF(:,j);
    ntrials = length(vector) - sum(isnan(vector));
    slips_maxcatchHF(j) = (sum(vector,'omitnan')/ntrials)*100;
end

%Min LF normal
state_minLF(1,:)=state_matrix(17,:);
state_minLF(2,:)=state_matrix(18,:);
state_minLF(3,:)=state_matrix(30,:);
state_minLF(4,:)=state_matrix(64,:);
state_minLF(5,:)=state_matrix(65,:);
state_minLF(6,:)=state_matrix(66,:);
state_minLF(7,:)=state_matrix(77,:);
state_minLF(8,:)=state_matrix(78,:);
state_minLF(9,:)=state_matrix(96,:);
state_minLF(10,:)=state_matrix(44,:);
state_minLF(11,:)=state_matrix(56,:);
state_minLF(12,:)=state_matrix(57,:);
state_minLF(13,:)=state_matrix(80,:);
state_minLF(14,:)=state_matrix(81,:);
state_minLF(15,:)=state_matrix(82,:);
state_minLF(16,:)=state_matrix(104,:);
for j=1:length(STnames)
    vector = state_minLF(:,j);
    ntrials = length(vector) - sum(isnan(vector));
    slips_minLF(j) = (sum(vector,'omitnan')/ntrials)*100;
end

%Min HF normal
state_minHF(1,:)=state_matrix(42,:);
state_minHF(2,:)=state_matrix(70,:);
state_minHF(3,:)=state_matrix(71,:);
state_minHF(4,:)=state_matrix(72,:);
state_minHF(5,:)=state_matrix(89,:);
state_minHF(6,:)=state_matrix(90,:);
state_minHF(7,:)=state_matrix(113,:);
state_minHF(8,:)=state_matrix(114,:);
state_minHF(9,:)=state_matrix(20,:);
state_minHF(10,:)=state_matrix(32,:);
state_minHF(11,:)=state_matrix(51,:);
state_minHF(12,:)=state_matrix(98,:);
state_minHF(13,:)=state_matrix(99,:);
state_minHF(14,:)=state_matrix(100,:);
state_minHF(15,:)=state_matrix(116,:);
state_minHF(16,:)=state_matrix(117,:);
state_minHF(17,:)=state_matrix(118,:);
for j=1:length(STnames)
    vector = state_minHF(:,j);
    ntrials = length(vector) - sum(isnan(vector));
    slips_minHF(j) = (sum(vector,'omitnan')/ntrials)*100;
end

%Max LF normal
state_maxLF(1,:)=state_matrix(14,:);
state_maxLF(2,:)=state_matrix(15,:);
state_maxLF(3,:)=state_matrix(26,:);
state_maxLF(4,:)=state_matrix(27,:);
state_maxLF(5,:)=state_matrix(28,:);
state_maxLF(6,:)=state_matrix(62,:);
state_maxLF(7,:)=state_matrix(74,:);
state_maxLF(8,:)=state_matrix(75,:);
state_maxLF(9,:)=state_matrix(92,:);
state_maxLF(10,:)=state_matrix(93,:);
state_maxLF(11,:)=state_matrix(94,:);
state_maxLF(12,:)=state_matrix(46,:);
state_maxLF(13,:)=state_matrix(47,:);
state_maxLF(14,:)=state_matrix(48,:);
state_maxLF(15,:)=state_matrix(59,:);
state_maxLF(16,:)=state_matrix(60,:);
state_maxLF(17,:)=state_matrix(84,:);
state_maxLF(18,:)=state_matrix(106,:);
state_maxLF(19,:)=state_matrix(107,:);
state_maxLF(20,:)=state_matrix(108,:);
for j=1:length(STnames)
    vector = state_maxLF(:,j);
    ntrials = length(vector) - sum(isnan(vector));
    slips_maxLF(j) = (sum(vector,'omitnan')/ntrials)*100;
end

%Max HF normal
state_maxHF(1,:)=state_matrix(38,:);
state_maxHF(2,:)=state_matrix(39,:);
state_maxHF(3,:)=state_matrix(40,:);
state_maxHF(4,:)=state_matrix(68,:);
state_maxHF(5,:)=state_matrix(86,:);
state_maxHF(6,:)=state_matrix(87,:);
state_maxHF(7,:)=state_matrix(110,:);
state_maxHF(8,:)=state_matrix(111,:);
state_maxHF(9,:)=state_matrix(22,:);
state_maxHF(10,:)=state_matrix(23,:);
state_maxHF(11,:)=state_matrix(24,:);
state_maxHF(12,:)=state_matrix(34,:);
state_maxHF(13,:)=state_matrix(35,:);
state_maxHF(14,:)=state_matrix(36,:);
state_maxHF(15,:)=state_matrix(53,:);
state_maxHF(16,:)=state_matrix(54,:);
state_maxHF(17,:)=state_matrix(102,:);
state_maxHF(18,:)=state_matrix(120,:);
for j=1:length(STnames)
    vector = state_maxHF(:,j);
    ntrials = length(vector) - sum(isnan(vector));
    slips_maxHF(j) = (sum(vector,'omitnan')/ntrials)*100;
end

%% Plot barplots for each participant
baraxis = 100;

for i=1:length(STnames)
    figure(1);hold on;
    subplot(3,4,i)
    y=[slips_minLF(i) slips_minHF(i) slips_maxLF(i) slips_maxHF(i); slips_LFcatchmin(i) slips_HFcatchmin(i) slips_LFcatchmax(i) slips_HFcatchmax(i) ; slips_mincatchLF(i) slips_mincatchHF(i) slips_maxcatchLF(i) slips_maxcatchHF(i)];% ;meanminLF meanmincatchHF ; meanmaxLF meanmaxcatchHF];
    b = bar(y);
    b(1).FaceColor = [0, 0.4470, 0.7410];
    b(2).FaceColor = [0.8500, 0.3250, 0.0980];
    b(3).FaceColor = [0.9290, 0.6940, 0.1250];
    b(4).FaceColor = [0.4940, 0.1840, 0.5560];
    b(1).FaceAlpha = 0.7;
    b(2).FaceAlpha = 0.7;
    b(3).FaceAlpha = 0.7;
    b(4).FaceAlpha = 0.7;
    set(gca,'XTickLabel',{'Normal'; 'Friction catch' ; 'Weight catch'})
    title("Subject" + " " + i) 
    ylabel('Slip (%)')
    ylim([0 baraxis])
    grid on;
    ax = gca;
    ax.GridAlpha = 0.07;
            
end
figure(1);hold on;
legend('Min LF','Min HF', 'Max LF', 'Max HF', 'Location','northeast')
