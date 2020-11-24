% Esempio di aliasing.
% Campionando a 8 kHz, la sinusoide con f0 = 5 kHz è visibile a 3 kHz.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Fs = 8000;         % Frequenza di campionamento
f0 = 5000;         % Frequenza della sinusoide
n = 0:1/Fs:10;
window = 256;
noverlap = 128;    % 50% di sovrapposizione
nfft = 256;
x = cos(2*pi*f0*n);
spectrogram(x, window, noverlap, nfft, Fs, 'yaxis');