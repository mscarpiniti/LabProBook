% Esempio di sequenza numerica sinusoidale.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

n = -10:10;
x = cos(0.25*pi*n);
stem(n, x);
title('Sequenza sinusoidale');
xlabel('Indice \itn');
ylabel('Ampiezza');