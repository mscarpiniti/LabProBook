% Esempio di funzione che calcola la radice quadrata dell'argomento di
% ingresso e che deve essere convertita in codice C/C++ attraverso 
% l'utilizzo del coder di MATLAB attraverso la linea di comando.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

function y = radice_quadrata(x)
%#codegen
y = sqrt(x);