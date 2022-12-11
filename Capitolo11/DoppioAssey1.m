% Primo esempio di grafico con doppio asse
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = 0:pi/20:2*pi;
y1 = sin(x);
y2 = exp(x);
h = plotyy(x, y1, x, y2);
title('Grafico con due assi Y');
xlabel('Angolo [rad]');
ylabel(h(1), 'Sinusoide');
ylabel(h(2), 'Esponenziale');