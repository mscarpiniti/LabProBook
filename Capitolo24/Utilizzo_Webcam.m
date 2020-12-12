% Esempio di utilizzo di una webcam in MATLAB.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

cam = webcam;
preview(cam);

pause(5);             % Si attendono 5 secondi
cam.Brightness = 150; % Si cambia la luminosità

pause(5);             % Si attendono 5 secondi
I = snapshot(cam);    % Si acquisisce un'immagine
imshow(I);
imwrite(I, 'testWebcam.jpg'); % Si salva l'immagine acquisita

pause(5);             % Si attendono 5 secondi
closePreview(cam);
clear('cam');