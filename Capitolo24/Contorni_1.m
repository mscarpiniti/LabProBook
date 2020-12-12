% Esempio di estrazione dei contorni in una immagine in scala di grigi.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

I = imread('coins.png');
B = imbinarize(I);
C = bwboundaries(B, 'noholes');
imshow(I);
hold on;

for k = 1:length(C)
    contorno = C{k};
    plot(contorno(:, 2), contorno(:, 1), 'g', 'LineWidth', 2);
end