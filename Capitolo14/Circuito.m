% Risoluzione simbolica di un semplice circuito con il metodo base maglie.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

syms s Vg

A = [4 -2 -2; -2 10 -2; -2 -2 s+4];
b = [Vg 0 0].';

% Determinazione del vettore delle correnti incognite
I = A\b

% Determinazione della tensione sull'induttore L
VL = s*I(3)

% Determinazione della funzione di rete V_L(s)/V_g(s)
F = VL/Vg