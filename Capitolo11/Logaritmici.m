% Esempio di grafici in scala logaritmica
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = 0:0.1:50;
y = 5*x.^2;
subplot(2,2,1);
plot(x, y);
grid on;
title('Grafico lineare/lineare');
xlabel('x');
ylabel('y');

subplot(2,2,2);
semilogx(x, y);
grid on;
title('Grafico logaritmico/lineare');
xlabel('x');
ylabel('y');

subplot(2,2,3);
semilogy(x, y);
grid on;
title('Grafico lineare/logaritmico');
xlabel('x');
ylabel('y');

subplot(2,2,4);
loglog(x, y);
grid on;
title('Grafico logaritmico/logaritmico');
xlabel('x');
ylabel('y');