% Esempio di un grafico con titolo ed etichette sugli assi
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = 0:0.001:10;
y = 2*sin(2*pi*x);
plot(x, y);
grid on;
title('Grafico di una sinusoide');
xlabel('Tempo [s]');
ylabel('Ampiezza');