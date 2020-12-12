% Esempio di creazione di modelli di sistemi attraverso la funzione di
% trasferimento.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

num = [1  1];
den = [1  5  6];

% Sistema analogico
H = tf(num, den)

% Sistema numerixo in z
Ts = 0.01;
H2 = tf(num, den, Ts)

% Sistema numerico in z^-1
H3 = tf(num, den, Ts, 'Variable', 'z^-1')