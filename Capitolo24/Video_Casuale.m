% Esempio di generazione di un video casuale a partire dalla FFT.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

for k = 1:16
    plot(fft(eye(k+16)));
    axis([-1 1 -1 1]);
    F(k) = getframe;
end
movie(F, 5);   % Si visualizza per 5 volte consecutivo