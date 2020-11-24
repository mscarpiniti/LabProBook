% Secondo esempio di istogramma rappresentante la pdf e la cdf di un 
% processo aleatorio
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = 0:0.01:10;
mu = 3;
y = pdf('Exponential', x, mu);
plot(x, y);
title('Funzione di Densità di Probabilità');
xlabel('x');
ylabel('Valore');

z = cdf('Exponential', x, mu);
figure;
plot(x, z);
title('Funzione di Ripartizione di Probabilità');
xlabel('x');
ylabel('Valore');