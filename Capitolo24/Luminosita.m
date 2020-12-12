% Esempio di cambiamento della luminosità di un'immagine.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

load clown
imshow(X, map);

% Si schiarisce l'immagine: 0 < beta < 1
for i=1:10
    brighten(0.5);
    pause;
end

% Si scurisce l'immagine: -1 < beta < 0
for i=1:10
    brighten(-0.5);
    pause;
end