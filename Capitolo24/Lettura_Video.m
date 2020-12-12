% Esempio di lettura di un video.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

vid = VideoReader('xylophone.mp4');
altezza = vid.Height;
larghezza = vid.Width;
F = struct('cdata', zeros(altezza, larghezza, 3, 'uint8'), 'colormap', []);
k = 1;

while hasFrame(vid)
    F(k).cdata = readFrame(vid);
    k = k+1;
end
imshow(F(10).data);