% Utilizzo dell'interfaccia Signal Analyzer per visualizzare la
% spvrapposizione di sue sinusoidi a diverse frequenza.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Fs = 8000;    % Frequenza di campionamento
f1 = 1000;    % Frequenza prima sinusoide
f2 = 2000;    % Frequenza seconda sinusoide
t = 1:1/Fs:5;
x = 2*cos(2*pi*f1*t) + sin(2*pi*f2*t);
signalAnalyzer(x);