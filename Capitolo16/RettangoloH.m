classdef RettangoloH < handle

   properties(Access = protected)
      base;     % Base del rettangolo
      altezza;  % Altezza del rettangolo
   end
   
   properties(Access = private)
      quanteVolte;  % Contatore per il calcolo delle aree
   end

   events 
      CalcoloArea;  % Evento per il calcolo delle aree
   end
   
   methods
      % Costruttore della classe
      function obj = RettangoloH(b, h)
         obj.base = b;
         obj.altezza = h;
      end

      function p = perimetro(obj)
      % Calcola il perimetro del rettangolo
         p = 2*(obj.base + obj.altezza);
      end

      function S = area(obj)
      % Calcola l'area del rettangolo
         S = obj.base * obj.altezza;
         notify(obj, 'CalcoloArea');
      end
      
      function tracciaArea(obj)
         % Inizializza l'evento e associa il listener 
         obj.quanteVolte = 0;
         addlistener(obj, 'CalcoloArea', @RettangoloH.contaVolte);
      end
      
      function stampaVolte(obj)
         % Stampa il messaggio relativo al numero di chiamate del metodo area
         fprintf('Il metodo sul calcolo dell''area è stato chiamato %d volte.\n', obj.quanteVolte);		
      end
   end

   methods(Static)
      % Funzione listener
      function contaVolte(n, ~)
         n.quanteVolte = n.quanteVolte + 1;
      end
   end
  
end