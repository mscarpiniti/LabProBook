% Esempio di modulazione numerica PSK.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

M = 16;
SNR = 30;
x = randi([0, M-1], 1000, 1);
yt = pskmod(x, M);   % Segnale PSK trasmesso
yr = awgn(yt, SNR);  % Segnale PSK ricevuto
scatterplot(yr);
title('Modulazione 16-PSK');