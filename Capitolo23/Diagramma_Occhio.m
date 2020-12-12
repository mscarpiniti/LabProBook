% Comparazione di generazione del diagramma ad occhio.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

M = 4;
phi0 = pi/4;
SNR1 = 20;
SNR2 = 5;
x = randi([0, M-1], 1000, 1);
y = pskmod(x, M, phi0);
z1 = awgn(y, SNR1);
eyediagram(z1, 2);

z2 = qwgn(y, SNR2);
eyediagram(z2, 2);