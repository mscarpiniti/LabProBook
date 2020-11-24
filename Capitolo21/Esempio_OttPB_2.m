% Secondo esempio di ottimizzazione con l'approccio problem-based.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = optimvar('x', 1, 2);  % Vettore 1x2
objfun = 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
prob = optimproblem('Objective', objfun);
nlcons = x(1)^2 + x(2)^2 <= 1;
prob.Constraints.circlecons = nlcons;
x0.x = [0, 0];
[sol, fval, exitflag] = solve(prob, x0)