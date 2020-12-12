% Esempio di creazione della risposta di un sistema ad un generico
% ingresso.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

num = [1  1];
den = [1  5  6];
H = tf(num, den);
t = 0:0.001:10;
u = 0.1*exp(0.2*t);
lsim(H, u, t);