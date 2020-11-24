% Esempio di ricampionamento di un segnale. Nel caso specifico si passa da
% F1 = 44.1 kHz a F2 = 48 kHz.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

[x, F1] = audioread('audio.wav');
F2 = 48000;
[L, D] = rat(F2/F1);
y = resample(x, L, D);