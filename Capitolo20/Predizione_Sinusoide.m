% Esempio di predizione di un segnale sinusoidale.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

t = [0:0.1:9.9];
x = cos(2*pi*t);
a = lpc(x);
y = filter([0 -a(2:end)], 1, x);
yn = [0 -a(2:end)]*x.'

figure;
hold on;
plot(t,x, t,y,'r');
plot(10,cos(2*pi*101),'b+', 10,yn,'r+');
xlabel('Tempo');
ylabel('Ampiezza');
title('Paragone tra una sinusoide e la sua versione predetta');
legend('Segnale Originale', 'Segnale Predetto', 'Campione Originale', ...
    'Campione Predetto');
axis([0 11 -1.2 1.2]);
grid on