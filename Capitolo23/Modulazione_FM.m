% Esempio di modulazione analogica FM.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Fs = 100;   % Frequenza di campionamento
fp = 10;    % Frequenza portante
f0 = 1;     % Frequenza del segnale
fd = 5;
t = 0:1/Fs:10;
x = cos(2*pi*f0*t);
y = fmmod(x, fp, Fs, fd);
Y = fft(y);
L = length(x);
f = (0:L-1)*(Fs/L);  % Asse delle frequenze
P = abs(Y).^2/L;     % Spettro di potenza

% Grafico dello spettro di potenza
plot(f(1:(end-1)/2), P(1:(end-1)/2));
title('Spettro di potenza di un segnale modulato in frequenza (FM)');
xlabel('Frequenza [Hz]');
ylabel('Ampiezza');
figure

% Grafico del segnale temporale
plot(t(1:200), y(1:200), t(1:200), x(1:200),'--');
title('Segnale modulato in frequenza (FM)');
xlabel('Tempo [s]');
ylabel('Ampiezza');
grid on