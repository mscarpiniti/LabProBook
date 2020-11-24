classdef Geometria

   properties
      lati;  % Numero di lati della figura
   end

   methods(Abstract = true)
      p = perimetro(obj);
      S = area(obj);
   end

   methods
      function obj = Geometria(n)
         obj.lati = n;
      end
   end

end
