% Primo esempio di ottimizzazione con l'approccio dei minimi quadrati
% (lineari).
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

pointtoplane = optimproblem;
x = optimvar('x', 3);
objfun = sum(x.^2);
pointtoplane.Objective = objfun;
v = [1, 2, 4];
pointtoplane.Constraints = dot(x, v) == 7;
[sol, fval] = solve(pointtoplane);
disp(sol.x)

