% Esempio di convoluzione attraverso la matrice dati, costruita
% manualmente.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

N = 5;
M = 4;
h = ones(1, M)/M;
x = randn(1, N);

% Uscita con la convoluzione classica
y1 = conv(h, x)

% Costruzione della matrice dati X
c = [x, zeros(1, M-1)].';
r = [x(1), zeros(1, M-1)];
X = toeplitz(c, r);
y2 = X*h.'