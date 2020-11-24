% Esempio di convoluzione attraverso la matrice dati, costruita con il
% comando corrmtx.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

N = 5;
M = 4;
h = ones(1, M)/M;
x = randn(1, N);

% Uscita con la convoluzione classica
y1 = conv(h, x)

% Costruzione della matrice dati X
X = sqrt(N)*corrmtx(x, M-1);
y3 = X*h.'
