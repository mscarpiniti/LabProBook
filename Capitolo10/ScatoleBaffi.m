% Esempio di diagramma a scatole e baffi (boxplot)
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

L = 100;
M = 6;
x = randn(L, M);
m = ones(L, M) * diag(4*rand(M,1) + 4);        % Media casuale
v = ones(L, M) * diag(sqrt(2*rand(M,1) + 2));  % Deviazione standard casuale
y = v.*(x + m);
boxplot(y)
title('Esempio di box plot');
xlabel('Variabili');
ylabel('Valori');