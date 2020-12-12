% Esempio di invio e ricezione di dati da un processo parallelo.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

q = parallel.pool.PollableDataQueue;
f = parfeval(@mio_Worker, 0, q);
volte = 0;
start_time = tic;

while volte < 2
    [dati, ricevuti] = poll(q, 1);
    if ricevuti   % Se sono stati ricevuti i dati
        fprintf('Messaggio ricevuto: %s after %.3g seconds\n', dati, toc(start_time));
        volte = volte + 1;
    else
        fprintf('Nessun messaggio disponibile a %.3g seconds\n', toc(start_time));
    end
end


% Funzione da eseguire come processo parallelo
function mio_Worker(q)
    send(q, 'start');
    pause(3);
    send(q, 'stop');
end