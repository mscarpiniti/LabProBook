% Esempio di generazione di una GIF animata.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

x = 0:0.01:1;
n = 1:0.5:5;
nIm = length(n);   % Numero di immagini
figure;

for id = 1:nIm
    y = x.^n(id);
    plot(x, y, 'LineWidth', 3);
    title(['y = x^n, per n = ' num2str( n(id)) ])
    drawnow;
    f = getframe;
    im{id} = frame2im(f);
end
close;

% Creazione del file GIF
Nomefile = 'testGIF.gif';
for id = 1:nIm
    [A, mappa] = rgb2ind(im{id}, 256);
    if id == 1
        imwrite(A, mappa, Nomefile, 'gif', 'LoopCount', Inf, 'DelayTime', 0.5);
    else
        imwrite(A, mappa, Nomefile, 'gif', 'WriteMode', 'append', 'DelayTime',0.5);
    end
end