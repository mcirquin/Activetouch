function meanstabGF = at_importminstabilisation(fpath,tstart,tstop,tresholdmin)
%fonction qui extrait les valeurs de GF pour les périodes de stabilisation
%sur base des LF (dans le cas d'essais au poids minimal)
%tsart: pas de temps du début; tstop: pas de temps de fin
%treshold: seuil (par rapport au poids) à partir duquel on suppose que c'est la phase de stabilisation  


x = at_import(fpath, 'freqFiltForces', 99); %importation du fichier
x = x(tstart:tstop,:);
LF=x.lf;  %exctraction des LF 
stabGF = []; %matrice de stockage des GF de stabilisation

indexes = find(LF>=2*tresholdmin); %reprend les indexes de toutes les LF qui sont plus grandes que poids*treshold
for i = indexes
    stabGF = [stabGF, x.gf(i)]; %crée un vecteur avec les valeur des GF pour ces indexes
end

meanstabGF = mean(stabGF);
