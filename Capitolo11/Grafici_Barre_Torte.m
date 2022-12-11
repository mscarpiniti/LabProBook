% Esempio di grafici a barre e a torta
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = [1, 2, 5, 4, 8];

% Grafico a barre
figure;
bar(x);
title('Grafico a barre');
xlabel('x');
ylabel('Valore');

% Grafico a barre orizzontali
figure;
barh(x);
title('Grafico a barre orizzontali');
xlabel('Valore');
ylabel('x');

% Grafico a torta
figure;
pie(x);
title('Grafico a torta');

% Grafico a barre multiple
figure;
A = [1 2 3; 4 5 6; 7 8 9];
bar(A);
title('Grafico a barre multiple');
xlabel('x');
ylabel('Valore');

% Grafico a torta esplosa
pie(x, [1, 0, 1, 0, 0]);
pie(x, {'Gennaio','Febbraio','Marzo','Aprile','Maggio'});
title('Grafico a torta esplosa');
