% Esempio di utilizzo dei comandi legend, text e annotation per
% personalizzare una figura
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x  = 0:pi/100:2*pi;
y1 = sin(x);
y2 = cos(3*x);
plot(x, y1); 
hold on;
plot(x, y2);
axis([0 2*pi -1 1]);
title('Grafico di due sinusoidi');
xlabel('Angolo [rad]');
ylabel('Ampiezza');
legend('Seno','Coseno');
text(1, sin(1)-0.1, 'Seno');
annotation('textarrow', [0.39 0.31], [0.25,0.4], 'String', 'Coseno');