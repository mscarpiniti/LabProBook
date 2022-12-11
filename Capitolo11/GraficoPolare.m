% Esempio di grafico polare
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = 0:pi/100:pi;
y = sin(x);
polarplot(x, y);
title('Funzione sinusoidale in coordinate polari');