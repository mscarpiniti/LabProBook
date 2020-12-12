% Esempio di codifica aritmetica.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

L = 1000;
occorrenze = [99 1];
alfabeto = [1 2];
p = [0.99 0.01];

x = randsrc(1, L, [alfabeto; p]);
codSig = arithenco(x, occorrenze);      % Codifica del segnale
size(codSig)

y = arithdeco(codSig, occorrenze, L);   % Decodifica del segnale
isequal(x, y)