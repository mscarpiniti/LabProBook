% Esempio di creazione della risposta all'impulso e al gradino di un
% sistema.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

num = [1  1];
den = [1  5  6];
H = tf(num, den);
impulse(H);
figure;
step(H);