% Esempio di progetto di un semplice cross-over a tre vie: bassi, medi e
% alti.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

% Progetto dei singoli filtri
N = 6;
Rp = 1;
w1 = 0.136;
w2 = 0.317;
[bw, aw] = cheby1(N, Rp, w1);         % Woofer
[bm, am] = cheby1(N/2, Rp, [w1 w2]);  % Midrange
[bt, at] = cheby1(N, Rp, w2, 'high'); % Tweeter

% Grafico della risposta in frequenza
[Hw, ww] = freqz(bw, aw);
[Hm, wm] = freqz(bm, am);
[Ht, wt] = freqz(bt, at);
figure;
hold on;
grid on;
plot(ww/pi, mag2db(abs(Hw)));
plot(wm/pi, mag2db(abs(Hm)));
plot(wt/pi, mag2db(abs(Ht)));
axis([0 1 -100 10]);
title('Risposta in ampiezza del crossover');
xlabel('Pulsazione normalizzata (\omega/\pi)');
ylabel('Ampiezza');
legend('Woofer','Midrange','Tweeter');

% Filtraggio di un segnale audio
[x, Fs] = audioread('audio.wav');
yw = filter(bw, aw, x);   % Uscita del woofer
ym = filter(bm, am, x);   % Uscita del midrange
yt = filter(bt, at, x);   % Uscita del tweeter

% Grafico dei segnali audio
figure;
plot((0:length(x)-1)/Fs, [yw ym yt]);
title('Uscite del crossover');
xlabel('Tempo (s)');
ylabel('Ampiezza');
legend('Woofer','Midrange','Tweeter');

% Ascolto del segnale complessivo
soundsc(yw + ym + yt, Fs);
