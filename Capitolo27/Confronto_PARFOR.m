% Confronto tra l'esecuzione non parallela e parallela di un ciclo for 
% oneroso computazionalmente.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

% Codice non parallelo
tic
n = 200;
A = 500;
a = zeros(n);
for i = 1:n
    a(i) = max(abs(eig(rand(A))));
end
toc

% Codice parallelo
tic
n = 200;
A = 500;
a = zeros(n);
parfor i = 1:n
    a(i) = max(abs(eig(rand(A))));
end
toc


% Codice non parallelo di un codice poco oneroso
tic
n = 1024;
A = zeros(n);
for i = 1:n
    A(i,:) = (1:n) .* sin(i*2*pi/1024);
end
toc

% Codice parallelo di un codice poco oneroso
tic
n = 1024;
A = zeros(n);
parfor (i = 1:n)
    A(i,:) = (1:n) .* sin(i*2*pi/1024);
end
toc
