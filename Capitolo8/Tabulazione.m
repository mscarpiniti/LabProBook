% Esempio di tabulazione sul prompt
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

indice = 1:5;
valori = [4.23, 7.31, 1.82, -2.47, 0.76];
tabella = [indice; valori];
fprintf('%4.0f %7.2f \n', tabella);