% Esempio di grafici di superfici 3D
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = -2:0.1:2;
y = -2:0.1:2;
[X, Y] = meshgrid(x, y);
Z = X.*exp(-X.^2 - Y.^2);

subplot(1, 2, 1);
mesh(X, Y, Z);
title('Funzione mesh');
xlabel('asse x');
ylabel('asse y');
zlabel('asse z');

subplot(1, 2, 2);
surf(X, Y, Z),
title('Funzione surf');
xlabel('asse x');
ylabel('asse y');
zlabel('asse z');