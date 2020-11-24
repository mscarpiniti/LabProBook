function my_GUI
% Esempio di interfaccia grafica con alcuni semplici controlli: un pop-up
% menu, un pulsante push, uno slider e una casella di testo statico.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

    % Crea una figura e i relativi assi
    f = figure('Visible','off');
    ax = axes('Units','pixels');
    surf(peaks)
    
    % Crea un pop-up menu
    popup = uicontrol('Style', 'popup',...
           'String', {'parula','jet','hsv','hot','cool','gray'},...
           'Position', [20 340 100 50],...
           'Callback', @setmap);    
    
   % Crea un push button
    btn = uicontrol('Style', 'pushbutton', 'String', 'Cancella',...
        'Position', [20 20 50 20],...
        'Callback', 'cla');       

   % Crea uno slider
    sld = uicontrol('Style', 'slider',...
        'Min',1,'Max',50,'Value',41,...
        'Position', [400 20 120 20],...
        'Callback', @surfzlim); 
					
    % Aggiunge un testo come etichetta dello slider
    txt = uicontrol('Style','text',...
        'Position',[400 45 120 20],...
        'String','Zoom Verticale');
    
    % Rende la figura visibile dopo l'aggiunta di tutti i componenti
    f.Visible = 'on';
    % Per vecchie versioni di MATLAB: set(f,'Visible','on');

    
    function setmap(source, ~)
        val = source.Value;
        maps = source.String;
        % Per vecchie versioni di MATLAB: 
        % val = get(source,'Value');
        % maps = get(source,'String'); 

        newmap = maps{val};
        colormap(newmap);
    end


    function surfzlim(source, ~)
        val = 51 - source.Value;
        % Per vecchie versioni di MATLAB:
        % val = 51 - get(source,'Value');

        zlim(ax,[-val val]);
    end

end
