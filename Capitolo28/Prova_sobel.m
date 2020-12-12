% Esempio di utilizzo della funzione sobel.m per determinare i contorni di
% un'immagine, dopo averla convertita in scala di grigi.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

soglia = 0.7;
I = imread('hello.jpg');
Ig = (0.2989 * double(I(:,:,1)) + 0.5870 * double(I(:,:,2)) ...
    + 0.1140 * double(I(:,:,3)))/255;
J = sobel(Ig, soglia);
J3 = repmat(J, [1 1 3]);

% VIsualizzazione del risultato
figure;
subplot(1,2,1)
imshow(I);
subplot(1,2,2);
imshow(J3);
