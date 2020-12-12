% Comparazione del bit error rate (BER) di diverse modulazioni numeriche
% nel caso di fading.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

M = 32;
SNR = [8:20].';
BER = zeros(length(SNR), 11);
for k = 1:2:21
    BER(:,k) = berfading(SNR, 'qam', M, k);
end

semilogy(SNR, BER);
text(18.5, 0.02, sprintf('L=%d',1));
text(18.5, 1e-7, sprintf('L=%d',21));
title('Bit Error Rate nel caso di canale con fading');
xlabel('SNR [dB]');
ylabel('BER');
grid on;