% Spettro di densità di potenza di due sinusoidi immerse nel rumore.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Fs = 1000;  % Frequenza di campionamento
T = 1/Fs;   % Periodo di campionamento
L = 1500;   % Lunghezza del segnale
t = (0:L-1)*T;  % Asse dei tempi
s = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t); % Segnale pulito
x = s + 2*randn(size(t)); % Segnale rumoroso

plot(1000*t(1:50),x(1:50)); % Solo 50 valori, tempo in millisecondi
title('Segnale Corrotto da rumore Gaussiano');
xlabel('t (millisecondi)');
ylabel('x(t)');

Y = fft(x);
P = abs(Y/L); % Spettro di ampiezza bilatero
P1 = P(1:L/2+1); % Mezzo spettro bilatero
P1(2:end-1) = 2*P1(2:end-1); % Spettro di ampiezza monolatero
f = Fs*(0:(L/2))/L; % Asse delle frequenze

figure;
plot(f,P1);
title('Spettro di ampiezza monolatero di x(t)');
xlabel('f (Hz)');
ylabel('|P1(f)|');

% Segnale originale
Y = fft(s);
P = abs(Y/L);
P1 = P(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

figure;
plot(f,P1) ;
title('Spettro di ampiezza monolatero di s(t)');
xlabel('f (Hz)');
ylabel('|P1(f)|');