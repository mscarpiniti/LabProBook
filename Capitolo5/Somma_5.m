% Quinto esempio per il calcolo della somma dei primi 100 numeri ad
% esclusione del numero 50.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

S = 0;
k = 1;

while k <= 100
    if k == 50
        k = k + 1;
        continue;
    end
    S = S + k;
    k = k + 1;
end
S