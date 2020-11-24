% Secondo esempio di ottimizzazione non vincolata.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x0 = [-1, 2];
fun = @rosenbrockwithgrad;
options = optimoptions('fminunc', 'Algorithm', 'trust-region', 'SpecifyObjectiveGradient', true);
x = fminunc(fun, x0, options)


function [f, g] = rosenbrockwithgrad(x)
% Calcolo della funzione obiettivo f
f = 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;

% Calcolo del gradiente
g = [-400*(x(2) - x(1)^2)*x(1) - 2*(1 - x(1));
      200*(x(2) - x(1)^2)];
end