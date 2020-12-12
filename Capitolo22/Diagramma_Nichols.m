% Esempio di creazione del diagramma di Nichols di un sistema.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

num = [-4  48  -18  250  600];
den = [ 1  30  282  525   60];
H = tf(num, den);
nichols(H);
ngrid;