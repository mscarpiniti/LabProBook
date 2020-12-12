% Esempio di creazione del diagramma poli/zeri di un sistema.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

num = [2  5  1];
den = [1  3  5];
H = tf(num, den);
pzmap(H);
sgrid