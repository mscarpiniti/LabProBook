% Esempio di risoluzione di equazioni differenziali
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

syms y(t)

% Equazione del primo ordine
eq1 = diff(y, t) == y;
cond1 = y(0) == 5;
y(t) = dsolve(eq1, cond1)

% Equazione del secondo ordine
eq2 = diff(y, t, 2) == y;
Dy = diff(y, t);
cond2 = [y(0) == 2, Dy(0) == -1];
y(t) = dsolve(eq2, cond2)
