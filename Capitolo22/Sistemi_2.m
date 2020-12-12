% Esempio di creazione di un modello di sistema attraverso la
% rappresentazione poli/zero/guadagno.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

Z = -1;        % Un solo zero
P = [-2  -3];  % Due poli
K = 3;         % Guadagno
Ts = 0.01;

% Versione analogica
H = zpk(Z, P, K)

% Versione numerica
H2 = zpk(Z, P, K, Ts, 'Variable', 'z^-1')