classdef CapitaleH < handle

   properties
      C0;   % Capitale iniziale
      r;    % Tasso di crescita
      t;    % Tempo di investimento
   end

   methods
      % Costruttore della classe
      function obj = CapitaleH(a, b, c)
         obj.C0 = a;
         obj.r = b;
         obj.t = c;
      end

      function C = disponibile(obj)
      % Calcola il capitale corrente
         C = obj.C0 * exp(obj.r * obj.t);
      end

      function raddoppia(obj)
      % Raddoppia il capitale iniziale
         obj.C0 = 2 * obj.C0;
      end		
   end

end
