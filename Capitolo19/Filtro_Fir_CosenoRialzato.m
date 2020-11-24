% Esempio di filtro FIR a coseno rialzato.
%
% M. Scarpiniti (Dip. DIET - Sapienza Universit� di Roma)

gamma = 0.25;
s = 6;
nc = 4;
b = rcosdesign(gamma, s, nc);
stem(b);
xlabel('Indice \itn');
ylabel('Ampiezza');
title('Risposta impulsiva');
figure;
freqz(b, 1);