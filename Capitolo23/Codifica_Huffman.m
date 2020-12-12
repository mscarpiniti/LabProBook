% Esempio di codifica alla Huffman.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

simboli = 1:6;
p = [0.5 0.125 0.125 0.125 0.0625 0.0625];
dizionario = huffmandict(simboli, p);   % Creazione del dizionario
x = randsrc(100, 1, [simboli; p]);      % Generazione del segnale
y = huffmanenco(x, dizionario);         % Codifica del segnale
z = huffmandeco(y, dizionario);         % Decodifica del segnale
isequal(x, z)