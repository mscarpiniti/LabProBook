% Spettro di ampiezza e fase di un'onda triangolare.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Fs = 1000;
t = 0:1/Fs:4;
x = sawtooth(2*pi*50*t, 0.5);
X = fft(x);
M = abs(X);
F = angle(X);
F2 = unwrap(F);

L = length(X);
f = (0:L-1)*(Fs/L);
plot(f,M)
subplot(1,2,1);
plot(f,F)
subplot(1,2,2);
plot(f,F2)