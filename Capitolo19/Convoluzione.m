% Esempio di convoluzione tra sequenze di lunghezza diversa.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x1 = [1 1 1 1 1];  % Prima sequenza
x2 = [2 2 2 2 2];  % Seconda sequenza
x3 = [1 1 1];      % Terza sequenza
y1 = conv(x1, x2); % Convoluzione tra sequenze di stessa lunghezza: x1 e x2
stem(y1);

y2 = conv(x1, x3); % Convoluzione tra sequenze di diversa lunghezza: x1 e x3
figure;
stem(y2);