% Esempio di modulazione numerica QAM.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

M = 64;
SNR = 20;
x = randi([0, M-1], 1000, 1);
yt = qammod(x, M);   % Segnale QAM trasmesso
yr = awgn(yt, SNR);  % Segnale QAM ricevuto
scatterplot(yr);
title('Modulazione 64-QAM rumorosa');