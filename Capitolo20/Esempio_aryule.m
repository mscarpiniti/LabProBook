% Esempio di predizione con il comando aryule.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

L = 1000;
x = 0.2*randn(L, 1);
w = [1 0.1 -0.8];
y = filter(1, w, x);
a = aryule(y, 2)