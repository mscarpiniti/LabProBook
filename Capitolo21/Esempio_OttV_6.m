% Sesto esempio di ottimizzazione vincolata.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

options = optimoptions('fmincon', 'Display', 'iter', 'Algorithm', 'sqp');
problem.options = options;
problem.solver = 'fmincon';
problem.objective = @(x) 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
problem.x0 = [0, 0];
problem.nonlcon = @unitdisk;
x = fmincon(problem)


% Funzione che descrive i vincoli
function [c, ceq] = unitdisk(x)
c = x(1)^2 + x(2)^2 - 1;
ceq = [];
end