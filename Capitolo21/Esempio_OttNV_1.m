% Primo esempio di ottimizzazione non vincolata.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)


fun = @(x)3*x(1)^2 + 2*x(1)*x(2) + x(2)^2 - 4*x(1) + 5*x(2);
x0 = [1, 1];
[x, fval] = fminunc(fun, x0)


fp = @(x1,x2)3*x1^2 + 2*x1*x2 + x2^2 - 4*x1 + 5*x2;
fmesh(fp, [-1 3 -5 5]);
hold on;
plot3(x(1), x(2), fval, 'r^', 'MarkerSize', 5, 'LineWidth', 5);
title('Minimizzazione non vincolata');
xlabel('x_1');
ylabel('x_2');
zlabel('f(x_1,x_2)');