% Effetto della lunghezza della finestra nel calcolo della trasformata di
% Fourier discrete (DFT) tramite FFT.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Fs = 1000;     % Frequenza di campionamento
f0 = 100;      % Frequenza della sinusoide
t = 0:1/Fs:1;  % Asse temporale

Na = 1000;     % Prima lughezza della FFT
Nb = 1024;     % Seconda lughezza della FFT
Nc = 256;      % Terza lughezza della FFT
Nd = 128;      % Quarta lughezza della FFT
fa = (-Na/2:Na/2-1)*(Fs/Na);  % Asse delle frequenze corrispondente a Na
fb = (-Nb/2:Nb/2-1)*(Fs/Nb);  
fc = (-Nc/2:Nc/2-1)*(Fs/Nc);
fd = (-Nd/2:Nd/2-1)*(Fs/Nd);

x = cos(2*pi*f0*t);   % Sinusoide

Xa = fft(x, Na);      % FFT su Na punti
Xb = fft(x, Nb);      % FFT su Nb punti
Xc = fft(x, Nc);      % FFT su Nc punti
Xd = fft(x, Nd);      % FFT su Nc punti


% Grafico della FFT su Na punti
figure
plot(fa, abs(fftshift(Xa))/Na, LineWidth=1.2)
grid on
title('FFT con lunghezza N_a = 1000')
xlabel('Frequenza [Hz]')
ylabel('Ampiezza')

% Grafico della FFT su Nb punti
figure
plot(fb, abs(fftshift(Xb))/Nb, LineWidth=1.2)
grid on
title('FFT con lunghezza N_b = 1024')
xlabel('Frequenza [Hz]')
ylabel('Ampiezza')

% Grafico della FFT su Nc punti
figure
plot(fc, abs(fftshift(Xc))/Nc, LineWidth=1.2)
grid on
title('FFT con lunghezza N_c = 256')
xlabel('Frequenza [Hz]')
ylabel('Ampiezza')

% Grafico della FFT su Nd punti
figure
plot(fd, abs(fftshift(Xd))/Nd, LineWidth=1.2)
grid on
title('FFT con lunghezza N_d = 128')
xlabel('Frequenza [Hz]')
ylabel('Ampiezza')
