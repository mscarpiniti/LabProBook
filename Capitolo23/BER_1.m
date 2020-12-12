% Comparazione del bit error rate (BER) di diverse modulazioni numeriche.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

M1 = 64;
M2 = 16;
M3 = 8;
SNR = [0:10].';
BER1 = berawgn(SNR, 'qam', M1);                % 64-QAM
BER2 = berawgn(SNR, 'psk', M3, 'nodiff');      % 16-PSK
BER3 = berawgn(SNR, 'fsk', M3, 'noncoherent'); % 8-FSK

semilogy(SNR, [BER1 BER2 BER3]);
title('Bit Error Rate');
xlabel('SNR [dB]');
ylabel('BER');
legend('16-QAM','16-PSK','8-FSK');
grid on;