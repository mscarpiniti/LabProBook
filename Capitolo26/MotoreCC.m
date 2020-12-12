% Script di configurazione per l'esempio del motore in corrente continua
% simulato in Simulink attraverso una coppia di equazioni deifferenziali
% accoppiate.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)


J = 0.01;    % Momento di inerzia    [kg*m^2]
b = 0.1;     % Attrito               [N*m/(rad/s)]
K = 0.01;    % Costante del motore   [V/(rad/s)]
R = 1;       % Resistenza            [ohm]
L = 0.5;     % Induttanza            [H]