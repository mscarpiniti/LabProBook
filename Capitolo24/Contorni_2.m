% Esempio di estrazione manuale dei contorni in una immagine in scala di 
% grigi.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

soglia = 15;   % Valore della soglia
I = imread('coins.png');
subplot(1, 2, 1);
imshow(I);

% Algoritmo principale.
Id = diff(I); % Differenza per righe
B = 255*ones(size(Id));
[n, m] = size(Id);

for i=1:n
    for j=1:m
        if Id(i,j) > soglia
            B(i,j) = 0;
        end
    end
end

subplot(1, 2, 2);
imshow(B);
imwrite(B, 'Bordi', 'jpeg');   % Si salva l'immagine dei contorni