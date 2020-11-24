% Esempio di determinazione della funzione di ripartizione empirica
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

y = random('wbl', 3, 1, 15, 1);
[z, x] = ecdf(y);
plot(x, z);
title('Funzione di Ripartizione di Probabilità Empirica');
xlabel('x');
ylabel('Valore');