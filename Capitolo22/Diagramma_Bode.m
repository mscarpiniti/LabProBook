% Esempio di creazione del diagramma di Bode di un sistema.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

num = [1  1];
den = [1  5  6];
H = tf(num, den);
bode(H);
grid on;