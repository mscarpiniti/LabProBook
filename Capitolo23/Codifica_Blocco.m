% Esempio di codifica di blocco.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

n = 15;     % Lunghezza del codice
k = 11;     % Lunghezza del messaggio
x = randi([0 1], k, 1);
codice = encode(x, n, k, 'hamming/binary');
codice(5) = ~codice(5);     % Si introduce un errore cambiando il valore del bit
y = decode(codice, n, k,'hamming/binary');
isequal(x, y)