% Esempio di predizione con il comando schurrc.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

L = 10;
x = 0.2*randn(L, 1);
r = xcorr(x);
k = schurrc(r(L:end))