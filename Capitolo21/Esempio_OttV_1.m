% Primo esempio di ottimizzazione vincolata.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

fun = @(x)100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
x0 = [-1, 2];
A = [1, 2];
b = 1;
x = fmincon(fun, x0, A, b)