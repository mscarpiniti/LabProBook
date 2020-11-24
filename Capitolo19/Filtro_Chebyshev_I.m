% Esempio di filtro di Chebyshev del I tipo.
%
% M. Scarpiniti (Dip. DIET - Sapienza UniversitÓ di Roma)

Fs = 1000;   % Frequenza di campionamento

% Filtro passa-basso
Rp = 10;
N_basso = 6;
ft = 300;
wt_basso = ft/(Fs/2);
[b1, a1] = cheby1(N_basso, Rp, wt_basso);
freqz(b1, a1);

% Filtro passa-banda
N_banda = 8;
ft1 = 200;
ft2 = 300;
wt_banda = [ft1 ft2]/(Fs/2);
[b2, a2] = cheby1(N_banda, Rp, wt_banda, 'bandpass');
figure;
freqz(b2, a2);