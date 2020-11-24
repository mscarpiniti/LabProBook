classdef Cerchio < Geometria

   properties(Access = protected)
      raggio;     % Raggio del cerchio
   end

   methods
      % Costruttore della classe
      function obj = Cerchio(r)
         obj = obj@Geometria(Inf);
         obj.raggio = r;
      end

      function p = perimetro(obj)
      % Calcola la circonferenza del cerchio
         p = 2*pi*obj.raggio;
      end

      function S = area(obj)
      % Calcola l'area del cerchio
         S = pi * obj.raggio^2;
      end		
   end

end