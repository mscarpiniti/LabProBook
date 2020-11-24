% Secondo esempio di ottimizzazione con l'approccio dei minimi quadrati
% (non lineari).
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

rng default   % Per la riproducibilità
A = [1, 2];
r = [-1, -3];
tdata = 3*rand(200, 1);
tdata = sort(tdata);
noisedata = 0.05*randn(size(tdata));   % Rumore aggiuntivo
ydata = A(1)*exp(r(1)*tdata) + A(2)*exp(r(2)*tdata) + noisedata;

% Grafico dei dati
figure;
grid on;
plot(tdata, ydata, 'r*');
title('Dati del modello');
xlabel('t');
ylabel('Risposta');


% Risoluzione del problema LS
A = optimvar('A', 2);
r = optimvar('r', 2);
fun = A(1)*exp(r(1)*tdata) + A(2)*exp(r(2)*tdata);
objfun = sum((fun - ydata).^2);
pointtoplane.Objective = objfun;
lsqproblem = optimproblem('Objective', objfun);
x0.A = [1/2, 3/2];
x0.r = [-1/2, -3/2];
[sol, fval] = solve(lsqproblem, x0);
disp(sol.A)
disp(sol.r)

% Grafico del risultato
figure;
grid on;
responsedata = evaluate(fun, sol);
plot(tdata, ydata, 'r*', tdata, responsedata, 'b-')
legend('Dati originali', 'Fitting')
xlabel('t')
ylabel('Risposta')
title('Fitting non lineare')
