% Terzo esempio di ottimizzazione vincolata.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

fun = @(x)100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
lb = [0, 0];
ub = [1, 2];
x0 = (lb + ub)/2;  % Valore centrale dell'intervallo
A = [];
b = [];
Aeq = [];
beq = [];
x = fmincon(fun, x0, A, b, Aeq, beq, lb, ub)