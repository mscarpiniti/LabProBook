% Esempio di superficie con isogramma
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = -2:0.1:2;
y = -2:0.1:2;
[X, Y] = meshgrid(x, y);
Z = X.*exp(-X.^2 - Y.^2);

subplot(1, 2, 1);
contour(X, Y, Z);
title('Funzione contour');
xlabel('asse x');
ylabel('asse y');
zlabel('asse z');

subplot(1, 2, 2);
surfc(X, Y, Z),
title('Funzione surfc');
xlabel('asse x');
ylabel('asse y');
zlabel('asse z');