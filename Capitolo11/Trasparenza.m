% Esempio di trasparenza
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

N = 40;
[X, Y, Z] = sphere(N);
surf(X, Y, Z);
hold on
surf(2*X, 2*Y, 2*Z);
alpha(0.5);