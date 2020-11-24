% Esempio di progetto di un filtro con il metodo di Yule-Walker.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

N = 8;
f = [0 0.6 0.6 1];
m = [1 1 0 0];
[b, a] = yulewalk(N, f, m);
[H, w] = freqz(b, a, 128);

% Grafico risposta in frequenza
plot(w/pi, abs(H), f, m,'--');
xlabel('Frequenza normalizzata (\omega/\pi)');
ylabel('Ampiezza');
legend('Yule-Walker','Maschera'),