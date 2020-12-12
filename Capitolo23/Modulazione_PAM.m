% Esempio di modulazione numerica PAM.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

M = 8;
phi0 = pi/4;
SNR = 30;
x = randi([0, M-1], 1000, 1);
yt = pammod(x, M, phi0);   % Segnale PAM trasmesso
yr = awgn(yt, SNR);        % Segnale PAM ricevuto
scatterplot(yr);
title('Modulazione 8-PAM');