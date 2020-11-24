% Esempio di un grafico che contiene quattro sotto-figure
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x  = 0:pi/100:2*pi;
y1 = sin(x);
y2 = cos(3*x);
y3 = sin(2*x);
y4 = cos(4*x);
subplot(2, 2, 1);
plot(x, y1);
subplot(2, 2, 2);
plot(x, y2);
subplot(2, 2, 3);
plot(x, y3);
subplot(2, 2, 4);
plot(x, y4);