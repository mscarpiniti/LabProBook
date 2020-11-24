% Spettro di densità di potenza di una sinusoide.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

f0 = 100;
Fs = 1000;
L = 4000;
t = [0:L-1]/Fs;
x = cos(2*pi*f0*t);

% Opzione di default
X = fft(x);
P = abs(X).^2/L;     % Potenza del segnale
f = (0:L-1)*(Fs/L);  % Asse delle frequenze
plot(f,P);

% Con fftshift
Y = fftshift(X);
fc = (-L/2:L/2-1)*(Fs/L);  % Asse delle fequenze centrato in zero
Ps = abs(Y).^2/L;          % Potenza del segnale centrato
figure;
plot(fc,Ps);