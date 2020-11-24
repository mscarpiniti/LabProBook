% Esempio di filtro FIR.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

N = 48;
wt = [0.35 0.65];
b = fir1(N, wt);
freqz(b, 1);