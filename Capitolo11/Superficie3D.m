% Esempio di grafici di superfici 3D
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = linspace(1, 50, 10);
y = linspace(500, 1000, 3);
z = [1,  2,  3,  4,  5,  6,  7,  8,  9, 10;
     2,  4,  6,  8, 10, 12, 14, 16, 18, 20;
     3,  4,  5,  6,  7,  8,  9, 10, 11, 12];
subplot(1, 2, 1);
mesh(x, y, z);
xlabel('asse x');
ylabel('asse y');
zlabel('asse z');

subplot(1, 2, 2);
surf(x, y, z);
xlabel('asse x');
ylabel('asse y');
zlabel('asse z');