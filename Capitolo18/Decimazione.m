% Esempio di decimazione di un segnale.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Fs = 4000;  % Frequenza di campionamento
f1 = 30;    % Frequenza prima sinusoide
f2 = 60;    % Frequenza seconda sinusoide
D = 4;      % Fattore di decimazione
t = 0:1/Fs:1;
x = sin(2*pi*f1*t) + sin(2*pi*f2*t);
y = decimate(x, D);  % Decimazione

% Grafici dei due segnali
stem(x(1:120));
axis([0 120 -2 2]);
title('Segnale Originale');
figure;
stem(y(1:30));
title('Segnale Decimato');