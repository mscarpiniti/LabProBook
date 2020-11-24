% Metodi alternativi per il campionamento di segnali tempo continui.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

A = 3;      % Ampiezza
f0 = 100;   % Frequenza sinusoide
Fs = 1000;  % Frequenza di campionamento
T = 4;      % Finestra temporale

% Primo metodo
n = [0:T*Fs-1]/Fs;
x = A*cos(2*pi*f0*n);

% Secondo metodo
n = [0:1/Fs:T];
x = A*cos(2*pi*f0*n);