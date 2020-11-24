% Script per il calcolo del perimetro P di un rombo conoscendo la lunghezza 
% delle diagonali d1 e d2.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

P = 0;  % Inizializzazione del perimetro (inutile qui!)
l = 0;  % Inizializzazione del lato del rombo (inutile qui!)
d1 = input('Inserisci la lunghezza della prima diagonale: ');
d2 = input('Inserisci la lunghezza della seconda diagonale: ');

% Calcolo del lato con il Teorema di Pitagora
l = pitagora(d1/2, d2/2); 
% Perimetro del rombo
P = 4*l;
fprintf('Il perimetro del rombo è %4.2f metri quadri\n', P);


% Funzione che implementa il Teorema di Pitagora
function c = pitagora(a, b)
c = sqrt(a^2 + b^2);
end