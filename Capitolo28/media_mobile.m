% Esempio di funzione che calcola una media mobile dei dati di ingresso e
% che deve essere convertita in codice C/C++ attraverso l'utilizzo del
% coder di MATLAB.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

function y = media_mobile(x)
% Questa funzione implementa una finestra mobile, chiamata 'buffer',
% che calcola una media mobile su 16 campioni ogni volta.

%#codegen

persistent buffer;

if isempty(buffer)
    buffer = zeros(16,1);
end

y = zeros(size(x), class(x));

for i = 1:numel(x)
    % Scorrimento del buffer e inserimento del nuovo valore in testa
    buffer(2:end) = buffer(1:end-1);
    buffer(1) = x(i);
    
    % Calcolo della media mobile
    y(i) = sum(buffer)/numel(buffer);
end
