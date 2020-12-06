function varargout = FunzioneVariabile(varargin)

% Questa funzione mostra l'utilizzo di un numero variabile di parametri di
% input e di output.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

N = numel(varargin);
Q = 0;

for j = 1:nargin
    Q = Q + varargin{j};
end

for k = 1:nargout
    varargout{k} = (Q + N)/k;
end