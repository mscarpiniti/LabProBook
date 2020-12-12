% Esempio di vettorializzazione del codice.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = [2  1  2  2  3  1  3  2  1  3];
x = sort(x);

% Eliminazione degli elementi ripetuti
differenze  = diff([x, NaN]);
y = x(differenze~=0)

% Conteggio delle occorrenze
differenze  = diff([x, max(x)+1]);
y = x(find(differenze))
count = diff(find([1, differenze]))