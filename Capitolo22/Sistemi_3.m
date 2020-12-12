% Esempio di creazione di un modello di sistema attraverso la
% rappresentazione nello spazio di stato.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

A = [0  1; -5  -2];
B = [0; 3];
C = [0  1];
D = 0;

% Versione analogica
H = ss(A, B, C, D)
