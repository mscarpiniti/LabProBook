% Quarto esempio di ottimizzazione non vincolata.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

options = optimoptions('fminunc','Algorithm','trust-region','SpecifyObjectiveGradient',true);
problem.options = options;
problem.x0 = [-1, 2];
problem.objective = @rosenbrockwithgrad;
problem.solver = 'fminunc';
x = fminunc(problem)


function [f, g] = rosenbrockwithgrad(x)
% Calcolo della funzione obiettivo f
f = 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;

% Calcolo del gradiente
g = [-400*(x(2) - x(1)^2)*x(1) - 2*(1 - x(1));
      200*(x(2) - x(1)^2)];
end