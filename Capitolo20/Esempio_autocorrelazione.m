% Esempio di determinazione della sequenza di autocorrelazione
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

N = 1000;
M = 10;
x = randn(N, 1);
[r, l] = xcorr(x, M, 'coeff');
stem(l, r);
title('Autocorrelazione Normalizzata');
xlabel('Indice n');
ylabel('Valore');