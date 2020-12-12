% Questa funzione uilizza il metodo di Sobel per dererminare i contorni
% degli oggetti in un'immagine.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

function J = sobel(I, soglia) 
%#codegen

assert(all(size(I) <= [1024 1024]));
assert(isa(I, 'double'));
assert(isa(soglia, 'double'));

K = [1 2 1; 0 0 0; -1 -2 -1];
H = conv2(double(I), K, 'same');
V = conv2(double(I), K','same');
E = sqrt(H.*H + V.*V);
J = uint8((E > soglia) * 255);