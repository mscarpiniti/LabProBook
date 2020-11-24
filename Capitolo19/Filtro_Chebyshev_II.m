% Esempio di filtro di Chebyshev del II tipo.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Fs = 1000;   % Frequenza di campionamento

% Filtro passa-basso
Aa = 50;
N_basso = 6;
ft = 300;
wt_basso = ft/(Fs/2);
[b1, a1] = cheby2(N_basso, Aa, wt_basso);
freqz(b1, a1);

% Filtro passa-banda
N_banda = 8;
ft1 = 200;
ft2 = 300;
wt_banda = [ft1 ft2]/(Fs/2);
[b2, a2] = cheby2(N_banda, Aa, wt_banda, 'bandpass');
figure;
freqz(b2, a2);