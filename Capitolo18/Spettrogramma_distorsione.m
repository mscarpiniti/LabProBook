% Spettrogramma di una sinusoide a 3 kHz.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Fs = 8000;  % Frequenza di campionamento
f0 = 700;   % Frequenza sinusoide
beta = 1.2;
n = 0:1/Fs:10;
x = cos(2*pi*f0*n);
y = tanh(beta*x);   % Distorsione non lineare

% Grafici degli spettrogrammi
subplot(1,2,1);
spectrogram(x, 256, 128, 256, Fs, 'yaxis');
subplot(1,2,2);
spectrogram(y, 256, 128, 256, Fs, 'yaxis');