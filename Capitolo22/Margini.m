% Esempio di determinazione del margine di guadagno e del margine di fase 
% di un sistema.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

num = [1  1];
den = [1  5  6];
H = tf(num, den);

% Margine di guadagno
Gm = getPeakGain(H);
mag2db(Gm)

% Margine di fase
wc = getGainCrossover(H, db2mag(-20))

% Grafico dei margini di guadagno e di fase
num = [30  30];
den = [1  5  6  4  1];
H = tf(num, den);
margin(H);
grid on;