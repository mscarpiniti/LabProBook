% Esempio di interpolazione di un segnale.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Fs = 1000;   % Frequenza di campionamento
f1 = 30;     % Frequenza prima sinusoide
f2 = 60;     % Frequenza seconda sinusoide
L = 4;       % Fattore di interpolazione
t = 0:1/Fs:1;
x = sin(2*pi*f1*t) + sin(2*pi*f2*t);
y = interp(x, L);   % Interpolazione

% Grafici dei due segnali
stem(x(1:30));
title('Segnale Originale');
figure;
stem(y(1:120));
title('Segnale Interpolato');