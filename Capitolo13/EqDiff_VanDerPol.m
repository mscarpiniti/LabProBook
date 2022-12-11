% Risoluzione numerica dell'equazione differenziale di Van der Pol.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

f = @(t,y) [y(2); (1 - y(1)^2)*y(2) - y(1)];

% Risoluzione con il metodo di Runge-Kutta (formula di Dormand-Prince)
[t, y] = ode45(f, [0, 20], [2; 0]);

% Grafico delle soluzioni
plot(t,y(:,1),'-o',t,y(:,2),'-o');
title('Risoluzione dell''equazione di Van der Pol');
xlabel('Tempo t');
ylabel('Soluzione y');
legend('y_1','y_2')