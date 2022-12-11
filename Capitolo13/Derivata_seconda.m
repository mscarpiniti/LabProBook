% Esempio di determinazione della derivata seconda di una funzione
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = -2:0.01:3;
y = x.^3 - 3*x.^2 + 2*x - 1;
Dx  = diff(x);
D2y = diff(y, 2);
D3y = diff(y, 3);
d2  = D2y./Dx(1:end-1).^2;
d3  = D3y./Dx(1:end-2).^3;
figure;
hold on;
grid on;
plot(x, y, 'LineWidth', 1.5);
plot(x(1:end-2), d2, 'r', 'LineWidth', 1.5);
plot(x(1:end-3), d3, 'g', 'LineWidth', 1.5);
title('Funzione f(x) e sue derivate seconda e terza');
xlabel('x');
ylabel('y');
legend('y = f(x)', 'y = f''''(x)', 'y = f''''''(x)');