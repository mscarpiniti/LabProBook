classdef Quadrato < Rettangolo

   methods
      % Costruttore di classe
      function obj = Quadrato(l)
         obj = obj@Rettangolo(l, l);
      end
      
      function d = diagonale(obj)
      % Calcola la diagonale del quadrato
         d = sqrt(2)*obj.base;
      end
   end	

end