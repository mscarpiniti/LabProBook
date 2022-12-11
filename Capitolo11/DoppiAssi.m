% Esempio di grafico con doppi assi. Nel primo si visualizza l'isogramma di
% una funzione tridimensionale, mentre nel secondo è visualizzata la
% superficie in tre dimensioni.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = -2:0.1:2;
y = -2:0.1:2;
[X, Y] = meshgrid(x, y);
Z = X.*exp(-X.^2 - Y.^2);

h = figure;
ax1 = axes(h, 'Position', [0.1 0.1 0.7 0.7]);
ax2 = axes(h, 'Position', [0.65 0.65 0.28 0.28]);
contour(ax1, X, Y, Z);
surf(ax2, X, Y, Z);
