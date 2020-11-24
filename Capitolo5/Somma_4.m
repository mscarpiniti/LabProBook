% Quarto esempio per il calcolo della somma dei primi 100 numeri.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

S = 0;
k = 1;

while (true)
    S = S + k;
    k = k + 1;
    if k > 100
        disp('Terminato!');
        break;
    end
    disp('Sto eseguendo le somme richieste....');
end
S
