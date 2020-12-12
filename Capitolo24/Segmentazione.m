% Esempio di segmentazione di una immagine in scala di grigi.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

K = 2;
I = imread('volto.jpg');
subplot(1, 3, 1);
imshow(I);
J = [];
[n, m] = size(I);

for i = 1:n
    for j = 1:m
        c = I(i, j);
        J = [J; i, j, c];
    end
end

J = double(J); % Il k-means accetta valori reali
ID = kmeans(J, K); % Si applica il k-means

% Ricostruzione delle immagini segmentate
for k = 1:K
    H = 255 .* ones(size(I));
    temp = find(ID == k);
    
    for i = 1:length(temp)
        r = floor(temp(i)/m) + 1;
        c = mod(temp(i), m) + 1;
        H(r, c) = 0;
    end
    
    subplot(1, 3, k+1);
    imshow(H);
end