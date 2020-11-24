% Primo esempio di ottimizzazione con l'approccio problem-based.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

% Variabili di ottimizzazione
x = optimvar('x');
y = optimvar('y');

% Funzione obiettivo
objfun = myfun(x, y);

% Si crea l'oggetto collegato al problema di ottimizzazione
prob = optimproblem('Objective', objfun);

% Vincoli
TiltEllipse = x.*y/2 + (x+2).^2 + (y-2).^2/2 <= 2;
prob.Constraints.constr = TiltEllipse;

% Condizioni iniziali
x0.x = -3;
x0.y = 3;

% Si visualizza il problema
show(prob)

% Si risolve il problema
[sol, fval] = solve(prob, x0)

% Seconda soluzione con diversa inizializzazione
disp('Premi un tasto per continuare');
pause;
x0.x = -1;
x0.y = 1;
[sol2, fval2] = solve(prob, x0)


% Rappresentazione grafica delle soluzioni
f = @myfun;
g = @(x,y) x.*y/2+(x+2).^2+(y-2).^2/2-2;
rnge = [-5.5 -0.25 -0.25 7];
fimplicit(g, 'k-', 'LineWidth', 1.2);
axis(rnge);
hold on
fcontour(f, rnge, 'LevelList', logspace(-1,1));
plot(sol.x, sol.y, 'rs', 'LineWidth', 2, 'MarkerSize', 8);
plot(sol2.x, sol2.y, 'ko', 'LineWidth', 2, 'MarkerSize', 6);
legend('Vincolo', 'Isogramma', 'Soluzione Globale','Soluzione Locale', ...
    'Location', 'northeast');
xlabel('x');
ylabel('y');
hold off


% Funzione obiettivo da minimizzare
function f = myfun(x, y)
f = exp(x).*(4*x.^2 + 2*y.^2 + 4*x.*y + 2*y - 1);
end