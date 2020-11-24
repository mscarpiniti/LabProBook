% Esempio di utilizzo dell'istruzione switch.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

clima = 'freddo';

switch clima
case 'caldo'
    T = 18;
case 'tiepido'
    T = 24;
case 'freddo'
    T = 28;
case 'umido'
    T = 21;
otherwise
    error('Errore: caso non contemplato!');
end