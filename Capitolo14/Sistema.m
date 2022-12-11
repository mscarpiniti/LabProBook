% Esempio di risoluzione simbolica di un sistema
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

syms x y z
eq1 =  4*x -  2*y - 2*z - 1;
eq2 = -2*x + 10*y - 2*z;
eq3 = -2*x -  2*y + 4*z;
S = solve(eq1, eq2, eq3);
disp(S);
S.x
S.y
S.z