% Terzo esempio di ottimizzazione non vincolata.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

fun = @(x)x(1)*exp(-(x(1)^2 + x(2)^2)) + (x(1)^2 + x(2)^2)/20;
x0 = [1, 2];
options = optimoptions('fminunc','Display','iter','Algorithm','quasi-newton');
[x, fval, exitflag, output] = fminunc(fun, x0, options)