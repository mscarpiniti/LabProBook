% Esempio di filtro FIR con tecniche ai minimi quadrati.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

N = 24;
f = [0 0.3 0.4 0.6 0.7 0.9];
m = [0 1.0 0.0 0.0 0.5 0.5];

% Utilizzando firls
b1 = firls(N, f, m);
[H1, w1] = freqz(b1, 1);

plot(w1/pi, abs(H1), f, m, '--')
xlabel('Pulsazione normalizzata (\omega/\pi)');
ylabel('Ampiezza');
legend('firls','Maschera');


% Utilizzando firpm
b2 = firpm(N, f, m);
[H2, w2] = freqz(b2, 1);

figure;
plot(w2/pi, abs(H2), f, m, '--')
xlabel('Pulsazione normalizzata (\omega/\pi)');
ylabel('Ampiezza');
legend('firpm','Maschera');