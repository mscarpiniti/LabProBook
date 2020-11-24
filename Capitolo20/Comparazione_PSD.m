% Comparazione delle diverse tecniche utilizzate per la stima dello spettro
% di densità di potenza di un segnale.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

n = 0:319;
x = cos(pi/4*n) + randn(size(n));

% Metodo del periodogramma
[Pxx1, w1] = periodogram(x);
figure
plot(w1, 10*log10(Pxx1));
title('Spettro di densità di potenza con il periodogramma');
xlabel('Frequenza numerica');
ylabel('Spettro di potenza');

% Metodo del periodogramma modificato
[Pxx2, w2] = periodogram(x, hamming(length(x)));
figure
plot(w2, 10*log10(Pxx2));
title('Spettro di densità di potenza con il periodogramma modificato');
xlabel('Frequenza numerica');
ylabel('Spettro di potenza');

% Metodo di Welch
[Pxx3, w3] = pwelch(x);
figure
plot(w3, 10*log10(Pxx3));
title('Spettro di densità di potenza con Welch');
xlabel('Frequenza numerica');
ylabel('Spettro di potenza');

% Metodo multitaper
[Pxx4, w4] = pmtm(x);
figure
plot(w4, 10*log10(Pxx4));
title('Spettro di densità di potenza con multitaper');
xlabel('Frequenza numerica');
ylabel('Spettro di potenza');