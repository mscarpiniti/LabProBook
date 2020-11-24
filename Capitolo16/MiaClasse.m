classdef MiaClasse
% Una classe con due propriet� e due metodi che calcolano
% la somma e il prodotto delle due propriet�.
% Utilizzo:
%   m = MiaClasse(3, 5);
%
% Vedi anche: ....

   properties(Access = private)
      a;  % Primo parametro
	  b;  % Secondo parametro
   end
   
   properties(Constant)
       c = 3.14;
   end

   methods
      function s = Somma(a, b)
      % Calcola la somma delle due propriet�
         s = a + b;  % Semplice esempio
      end

      function p = Prodotto(a, b)
      % Calcola il prodotto delle due propriet�
         p = a * b;
      end
      
   end
   
   methods(Static)
      function s = descrizione()
         s = 'Classe per gestire il mio progetto...';
      end
   end

end