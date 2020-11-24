% Esempio di ottimizzazione con la programmazione quadratica.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

N = 400;
x = optimvar('x', N, 'LowerBound' ,0, 'UpperBound', 0.9);
x(N).LowerBound = -Inf;
x(N).UpperBound = Inf;
prevtime = 1:N-1;
nexttime = 2:N;
objfun = 2*sum(x.^2) - 2*sum(x(nexttime).*x(prevtime)) - 2*x(1) - 2*x(end);

qprob = optimproblem('Objective', objfun);
opts = optimoptions('quadprog', 'Algorithm', 'trust-region-reflective', 'Display', 'off');
x0 = 0.5*ones(N, 1);
x00 = struct('x', x0);
[sol, fval, exitflag, output] = solve(qprob, x00, 'options', opts);

% Grafico della soluzione
plot(sol.x, 'b-')
xlabel('Indice')
ylabel('x_i')
