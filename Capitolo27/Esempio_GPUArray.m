% Esempio di utilizzo del tipo di dati GPU Array.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

s1 = gpuArray(rand(400));
s2 = gpuArray(rand(400));
s3 = gpuArray(rand(400));
[o1, o2] = arrayfun(@miaFunzione, s1, s2, s3);


% Funzione da eseguire sulla GPU
function [o1, o2] = miaFunzione(a, b, c)
    o1 = a + b;
    o2 = o1 .* c + 2;
end