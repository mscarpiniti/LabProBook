% Esempio di generazione della matrice dati e della matrice di 
% autocorrelazione.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

N = 5;
x = rand(1, N);
[X, R] = corrmtx(x, N-1);
R
sqrt(N)*X
