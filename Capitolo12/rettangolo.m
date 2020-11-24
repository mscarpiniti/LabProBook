function [S, P] = rettangolo(a, b)

% Questa funzione calcola l'area S ed il perimetro P di un rettangolo di
% lati a e b, rispettivamente.
%
% Uso: [S, P] = rettangolo(a, b);
% in cui:
% - a e b: sono i lati del rettangolo;
% - S: è l'area del rettangolo;
% - P: è il perimetro del rettangolo.
%
% Versione 1.0.
% 30/06/2016 ---- M. Scarpiniti (Dip. DIET, Sapienza Università di Roma)

if nargin > 2
    error('Troppi parametri in input');
elseif nargin < 1
    error('Nessun parametro inserito');
elseif nargin == 1
    b = 1;
end

S = a*b;        % Calcolo dell'area
P = 2*(a + b);  % Calcolo del perimetro come il doppio del semiperimetro