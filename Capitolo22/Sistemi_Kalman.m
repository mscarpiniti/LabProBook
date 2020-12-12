% Esempio di creazione di un filtro di Kalman.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

% Impostazione delle matrici della rappresentazione
A = [1.1269   -0.4940    0.1129;
     1.0000         0         0;
          0    1.0000         0];

B = [-0.3832;
      0.5919;
      0.5191];

C = [1 0 0];

D = 0;

% Creazione del sistema nello spazio di stato
H = ss(A, B, C, D);

Q = 1;
R = 1;
N = 0;

% Filtro di Kalman
[K, L, P] = kalman(H, Q, R, N)