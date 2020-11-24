% Primo esempio di istogramma rappresentante la pdf e la cdf di un processo
% aleatorio
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

L = 10000;
M = 50;
x = randn(L, 1);
histogram(x, 50, 'Normalization', 'pdf');
figure;
histogram(x, 50, 'Normalization', 'cdf');