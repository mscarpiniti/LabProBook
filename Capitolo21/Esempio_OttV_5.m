% Quinto esempio di ottimizzazione vincolata.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

fun = @(x)100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
options = optimoptions('fmincon', 'Display', 'iter', 'Algorithm', 'sqp');
A = [];
b = [];
Aeq = [];
beq = [];
lb = [];
ub = [];
nonlcon = @unitdisk;
x0 = [0, 0];
x = fmincon(fun, x0, A, b, Aeq, beq, lb, ub, nonlcon, options)


% Funzione che descrive i vincoli
function [c, ceq] = unitdisk(x)
c = x(1)^2 + x(2)^2 - 1;
ceq = [];
end