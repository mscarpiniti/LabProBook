% Esempio di creazione di un modello di un controllare PID.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Kp = 1;

% Vesrione analogica
Ki = 2;
Kd = 3;
Tf = 0.5;
C = pid(Kp, Ki, Kd, Tf)

% Versione numerica
Ti = 2;
Td = 3;
N  = 4;
C2 = pidstd(Kp, Ti, Td, N)