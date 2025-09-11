% Effetto della lunghezza della finestra sulla risoluzione in frequenza
% della trasformata di Fourier discrete (DFT) tramite FFT.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Fs = 1000;     % Frequenza di campionamento
f1 = 100;      % Frequenza prima sinusoide
f2 = 102;      % Frequenza seconda sinusoide
t = 0:1/Fs:1;  % Asse temporale

Na = 1024;     % Prima lughezza della FFT
Nb = 256;      % Seconda lughezza della FFT
fa = (0:Na-1)*(Fs/Na);  % Asse delle frequenze corrispondente a Na
fb = (0:Nb-1)*(Fs/Nb);

x = cos(2*pi*f1*t) + 0.8*cos(2*pi*f2*t);   % Sinusoide

Xa = fft(x, Na);      % FFT su Na punti
Xb = fft(x, Nb);      % FFT su Nb punti


% Grafico della FFT su Na punti
figure
plot(fa(1:end/2+1), abs(Xa(1:end/2+1))/Na, LineWidth=1.2)
xlim([60, 200])
grid on
title('FFT con lunghezza N_a = 1024')
xlabel('Frequenza [Hz]')
ylabel('Ampiezza')

% Grafico della FFT su Nb punti
figure
plot(fb(1:end/2+1), abs(Xb(1:end/2+1))/Nb, LineWidth=1.2)
xlim([60, 200])
grid on
title('FFT con lunghezza N_b = 256')
xlabel('Frequenza [Hz]')
ylabel('Ampiezza')
