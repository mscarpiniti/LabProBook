% Esempio di determinazione della derivata prima di una funzione
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = -2:0.01:3;
y = x.^3 - 3*x.^2 + 2*x - 1;
Dx = diff(x);
Dy = diff(y);
d1 = Dy./Dx;
figure;
hold on;
grid on;
plot(x, y, 'LineWidth', 1.5);
plot(x(1:end-1), d1, 'r', 'LineWidth', 1.5);
title('Funzione f(x) e sua derivata prima f''(x)');
xlabel('x');
ylabel('y');
legend('y = f(x)', 'y = f''(x)');