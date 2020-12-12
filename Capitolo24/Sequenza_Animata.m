% Esempio di generazione di una sequenza animata.
%
% M. Scarpiniti (Dip. DIET - Sapienza Universit� di Roma)

mri = uint8(zeros(128, 128, 1, 27)); % Tensore che conterr� la sequenza
for frame = 1:27
    [mri(:, :, :, frame), mappa] = imread('mri.tif', frame);
end
v = immovie(mri, mappa);
implay(v);