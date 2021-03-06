function [indexglass1, thumbglass1, indexblue, thumbblue] = at_frictionplots(dataDir, flist, tsteps)
%Fonction qui calcule les frictions d'un participant grâce aux 6 fichiers
%de mesure de friction
%dataDir est le nom du dossier, par exemple 'GBrandsteert', filelist contient les
%fichiers triés dans l'ordre et tsteps correspond au nombre d'échantillons

range=1:tsteps; % Nombre d'échantillons
index.conditions = cell(1,3); % Structures de données pour enregistrer les paramètres
show_graphs=true; % Paramètre à changer en fonction de si l'on veut afficher les courbes temporelles des signaux
correct_forces=false; % A mettre sur "True" si l'on veut corriger  la dérive des capteurs
clear h;
cond_tab={'Weak','Medium','Strong'};

%% %% Boucle pour le calcul de la friction de l'échantillon "non-glissant"
%index CF
for i=1:3
    if i==1
        forcesFile = strcat(flist(i).name);
    elseif i==2
        forcesFile = strcat(flist(i).name);
    elseif i==3
        forcesFile = strcat(flist(i).name);
    end
    data = at_import(fullfile(dataDir,forcesFile));
    
    cond=cond_tab{i};
    
    data=data(range,:);
    y_COP=(data.copy_cam+33)/1000;
    ft=[data.fx_cam data.fy_cam];
    NF=-data.fz_cam;
    
    if i==1
        x=1:length(NF);
        NF=NF-interp1([1 length(NF)],[NF(1) NF(end)],x)';
        ft(:,1)=ft(:,1)-interp1([1 length(NF)],[ft(1,1) ft(end,1)],x)';
        ft(:,2)=ft(:,2)-interp1([1 length(NF)],[ft(1,2) ft(end,2)],x)';
    end
    
    [mu_l,slip_indexes_l,search_zones_l] = get_mu_points(y_COP,ft,NF,'fs_science',200,'y_thresh',0.02);
    indexblue.conditions{i}=cond;
    indexblue.(cond).NF=NF;
    indexblue.(cond).TF=ft;
    indexblue.(cond).mu=mu_l;
    indexblue.(cond).slip_indexes=slip_indexes_l;
    indexblue.(cond).search_zones=search_zones_l;

end

indexblue=get_mu_fit(indexblue);

%thumb CF
for i=1:3
    if i==1
        forcesFile = strcat(flist(i).name);
    elseif i==2
        forcesFile = strcat(flist(i).name);
    elseif i==3
        forcesFile = strcat(flist(i).name);
    end
    data = at_import(fullfile(dataDir,forcesFile));
    
    cond=cond_tab{i};
    
    data=data(range,:);
    y_COP=(data.copy_led+33)/1000;
    ft=[-(data.fx_led) -(data.fy_led)];
    NF=data.fz_led;
    
    if i==1
        x=1:length(NF);
        NF=NF-interp1([1 length(NF)],[NF(1) NF(end)],x)';
        ft(:,1)=ft(:,1)-interp1([1 length(NF)],[ft(1,1) ft(end,1)],x)';
        ft(:,2)=ft(:,2)-interp1([1 length(NF)],[ft(1,2) ft(end,2)],x)';
    end
    
    [mu_l,slip_thumb_l,search_zones_l] = get_mu_points(y_COP,ft,NF,'fs_science',200,'y_thresh',0.02);
    thumbblue.conditions{i}=cond;
    thumbblue.(cond).NF=NF;
    thumbblue.(cond).TF=ft;
    thumbblue.(cond).mu=mu_l;
    thumbblue.(cond).slip_indexes=slip_thumb_l;
    thumbblue.(cond).search_zones=search_zones_l;

end

thumbblue=get_mu_fit(thumbblue);

%% Boucle pour le calcul de la friction de l'échantillon "glissant"
%index CF
for i=1:3
    if i==1
        forcesFile = strcat(flist(i+3).name);
    elseif i==2
        forcesFile = strcat(flist(i+3).name);
    else
        forcesFile = strcat(flist(i+3).name);
    end
    data = at_import(fullfile(dataDir,forcesFile),true,40,40,40,10);
    
    cond=cond_tab{i};
    
    data=data(range,:);
    y_COP=(data.copy_cam+33)/1000; % Ajustement du COP pour que zéro soit le centre de la vitre
    ft=[data.fx_cam data.fy_cam];
    NF=-data.fz_cam;
    
    if correct_forces %Correction de la dérive des capteurs
        x=1:length(NF);
        NF=NF-interp1([1 length(NF)],[NF(1) NF(end)],x)';
        ft(:,1)=ft(:,1)-interp1([1 length(NF)],[ft(1,1) ft(end,1)],x)';
        ft(:,2)=ft(:,2)-interp1([1 length(NF)],[ft(1,2) ft(end,2)],x)';
    end
    
    
    [mu_l,slip_indexes_l,search_zones_l] = get_mu_points(y_COP,ft,NF,'fs_science',200,'y_thresh',0.02); %previously,y=0.025
    index.conditions{i}=cond;
    index.(cond).NF=NF;
    index.(cond).TF=ft;
    index.(cond).mu=mu_l;
    index.(cond).slip_indexes=slip_indexes_l;
    index.(cond).search_zones=search_zones_l;

end

indexglass1=get_mu_fit(index);

%thumb CF
for i=1:3
    if i==1
        forcesFile = strcat(flist(i+3).name);
    elseif i==2
        forcesFile = strcat(flist(i+3).name);
    else
        forcesFile = strcat(flist(i+3).name);
    end
    data = at_import(fullfile(dataDir,forcesFile),true,40,40,40,10);
    
    cond=cond_tab{i};
    
    data=data(range,:);
    y_COP=(data.copy_led+33)/1000; % Ajustement du COP pour que zéro soit le centre de la vitre
    ft=[-(data.fx_led) -(data.fy_led)];
    NF=data.fz_led;
    
    if correct_forces %Correction de la dérive des capteurs
        x=1:length(NF);
        NF=NF-interp1([1 length(NF)],[NF(1) NF(end)],x)';
        ft(:,1)=ft(:,1)-interp1([1 length(NF)],[ft(1,1) ft(end,1)],x)';
        ft(:,2)=ft(:,2)-interp1([1 length(NF)],[ft(1,2) ft(end,2)],x)';
    end
    
    
    [mu_l,slip_thumb_l,search_zones_l] = get_mu_points(y_COP,ft,NF,'fs_science',200,'y_thresh',0.02); %previously,y=0.025
    thumb.conditions{i}=cond;
    thumb.(cond).NF=NF;
    thumb.(cond).TF=ft;
    thumb.(cond).mu=mu_l;
    thumb.(cond).slip_indexes=slip_thumb_l;
    thumb.(cond).search_zones=search_zones_l;

end

thumbglass1=get_mu_fit(thumb);
