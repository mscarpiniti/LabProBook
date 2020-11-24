classdef RettangoloG < Geometria
    
    properties(Access = protected)
        base; % Base del rettangolo
        altezza; % Altezza del rettangolo
    end
    
    methods
        % Costruttore della classe
        function obj = RettangoloG(b, h)
            obj = obj@Geometria(4);
            obj.base = b;
            obj.altezza = h;
        end
        
        function p = perimetro(obj)
        % Calcola il perimetro del rettangolo
            p = 2 * (obj.base + obj.altezza);
        end
        
        function S = area(obj)
        % Calcola l'area del rettangolo
            S = obj.base * obj.altezza;
        end
    end
    
end