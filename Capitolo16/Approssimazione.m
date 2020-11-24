classdef Approssimazione

   properties
      Valore
   end
	
   methods
      % Costruttore di classe
      function obj = Approssimazione(val)
         if nargin > 0
            if isnumeric(val)
               obj.Valore = round(val, 2);
                %obj.Valore = val;
            else
               error('Valore deve essere di tipo numerico.')
            end
         end
      end
	
      % Funzione approssima()
      function r = approssima(obj)
         r = round([obj.Valore], 2);
      end

      % Funzione moltiplica() 
      function r = moltiplica(obj,n)
         r = [obj.Valore] * n;
      end
      
      % Overloading della somma
      function r = plus(o1,o2)
         r = [o1.Valore] + [o2.Valore];
      end
   end
end
