% Esempio di creazione delle diverse connessioni di più sistemi (cascata,
% parallelo e feedback).
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

num1 = [1  1];
den1 = [1  5  6];
num2 = [1  2];
den2 = [1  4  3];

% Creazione di due sistemi
H1 = tf(num1, den1);
H2 = tf(num2, den2);

% Connessione in cascata
Hs = series(H1, H2)

% Connessione in parallelo
Hp = parallel(H1, H2)

% Connessione a retroazione (feedback)
Hf = feedback(H1, H2)
