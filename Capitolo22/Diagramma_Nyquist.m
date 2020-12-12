% Esempio di creazione del diagramma di Nyquist di un sistema.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

num = [2  5  1];
den = [1  2  3];
H = tf(num, den);
nyquist(H);
grid on;