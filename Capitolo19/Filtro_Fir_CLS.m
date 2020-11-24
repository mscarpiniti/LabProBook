% Esempio di filtro FIR vincolato.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

N = 55;
f = [0 0.4 1];
at = [1 0];
up = [1.02 0.008];
lo = [0.98 -0.008];

% Utilizzando fircls
b1 = fircls(N, f, at, up, lo);
freqz(b1, 1);

wt = 0.3;
dp = 0.02;
da = 0.008;
% Utilizzando fircls1
b2 = fircls1(N, wt, dp, da);
figure;
freqz(b2, 1);