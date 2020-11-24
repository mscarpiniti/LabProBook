% Esempio di predizione con il comando levinson.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

L = 10000;
x = 0.2*randn(L, 1);
w = [1 0.1 -0.8];
y = filter(1, w, x);
r = xcorr(y);
a = levinson(r(L:end), 2)