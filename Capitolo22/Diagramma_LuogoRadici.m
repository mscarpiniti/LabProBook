% Esempio di creazione del luogo delle radici di un sistema.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

num = [2  5  1];
den = [1  2  3];
H = tf(num, den);
rlocus(H);