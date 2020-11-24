% Esempio di utilizzo dell'istruzione if.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = 7;

if x < 0
    x = -x;
    disp('Numero negativo');
elseif (x > 10) & (x < 30)
    disp('Caso A');
elseif x >=30 & (x < 100)
    disp('Caso B');
else
    x = 3*x;
		disp('Caso C');
end