% Esempio di creazione di un file audio in formato WAV contenente una
% sinusoide.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Fs = 8000;
f0 = 1000;
T = 5;
n = 0:1/Fs:T;
x = cos(2*pi*f0*n);
audiowrite('Seno.wav', x, Fs);