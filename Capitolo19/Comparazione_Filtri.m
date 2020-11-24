% Esempio di comparazione tra filtri di: Butterworth, Chebyshev del I e II 
% tipo ed Ellittico.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

% Parametri
Fs = 10e9;
P = 4096;
N = 5;
ft = 2e9;
Rp = 3;
Aa = 30;
wt = ft/(Fs/2);

% Progetto dei filtri
[b_b, a_b] = butter(N, wt);
[H_b, w_b] = freqz(b_b, a_b, P, Fs);
[b_c1, a_c1] = cheby1(N, Rp, wt);
[H_c1, w_c1] = freqz(b_c1, a_c1, P, Fs);
[b_c2, a_c2] = cheby2(N, Aa, wt);
[H_c2, w_c2] = freqz(b_c2, a_c2, P, Fs);
[b_e, a_e] = ellip(N, Rp, Aa, wt);
[H_e, w_e] = freqz(b_e, a_e, P, Fs);

% Grafici della risposta in frequenza
figure;
hold on;
plot(w_b, mag2db(abs(H_b)));
plot(w_c1,mag2db(abs(H_c1)));
plot(w_c2,mag2db(abs(H_c2)));
plot(w_e, mag2db(abs(H_e)));
axis([0 4e9 -40 5]);
grid on;
xlabel('Frequenza (GHz)');
ylabel('Attenuazione (dB)');
legend('butter','cheby1','cheby2','ellip');