% Esempio di grafico tridimensionale
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = linspace(0,10*pi,1000);
y = cos(x);
z = sin(x);
plot3(x, y, z);
grid on;
title('Una spirale');
xlabel('Angolo');
ylabel('cos(x)');
zlabel('sin(x)');