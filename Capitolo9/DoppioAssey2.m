% Secondo esempio di grafico con doppio asse
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = 0:pi/20:2*pi;
y1 = sin(x);
y2 = exp(x);
figure;
title('Grafico con due assi Y');
xlabel('Angolo [rad]');
yyaxis left
plot(x, y1);
ylabel('Sinusoide');

yyaxis right
plot(x, y2);
ylabel('Esponenziale');
