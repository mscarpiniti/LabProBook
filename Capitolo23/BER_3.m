% Comparazione del bit error rate (BER) di diverse modulazioni numeriche
% nel caso codifica.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

M = 16;
SNR = [0:12].';
BER1 = berawgn(SNR, 'qam', M);
BER2 = bercoding(SNR, 'RS', 'hard', 15, 11, 'qam', M);

semilogy(SNR, [BER1 BER2]);
grid on;
legend('BER senza codifica','BER con codifica');
title('Confronto del BER con e senza codifica');
xlabel('SNR [dB]');
ylabel('BER');