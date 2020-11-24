% Esempio di filtro FIR.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

N = 30;
f = [0 0.6 0.6 1];
m = [1 1 0 0];
b = fir2(N, f, m);
[H, w] = freqz(b, 1);

% Grafico della risposta in frequenza
plot(w/pi, abs(H), f, m, '--')
xlabel('Pulsazione normalizzata (\omega/\pi)');
ylabel('Ampiezza');
legend('FIR2','Maschera');