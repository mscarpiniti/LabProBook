% Esempio di filtro di Ellittico.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Fs = 1000;   % Frequenza di campionamento

% Filtro passa-basso
Rp = 10;
Aa = 50;
N_basso = 6;
ft = 300;
wt_basso = ft/(Fs/2);
[b1, a1] = ellip(N_basso, Rp, Aa, wt_basso);
freqz(b1, a1);

% Filtro passa-banda
N_banda = 8;
ft1 = 200;
ft2 = 300;
wt_banda = [ft1 ft2]/(Fs/2);
[b2, a2] = ellip(N_banda, Rp, Aa, wt_banda, 'bandpass');
figure;
freqz(b2, a2);