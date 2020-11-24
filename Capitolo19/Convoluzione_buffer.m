% Esempio di convoluzione attraverso l'uso di un buffer lineare.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

N = 10;
M = 5;
% x = randn(N, 1);
x = [3 -1 2 4 0 -3 -5 1 -2 3].';
h = ones(M, 1);
x_n = zeros(M, 1);

% Scorrimento del buffer
for n = 1:N
    x_n = [x(n); x_n(1:end-1)];
    y(n) = h.' * x_n;
end
y

% Uscita con la convoluzione classica
y2 = conv(h, x.')