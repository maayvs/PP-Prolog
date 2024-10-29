
% Ex 01 - Verificar se um elemento pertence à lista

pertence(X, [X|_]). % verifica se o elemento está presente no topo da lista (head).
pertence(X, [_|T]). :- pertence(X,T). % verifica se o elemento está presente no fim da lista.

% Ex 03 - Encontrar o último elemento de uma lista

ultimoelemento(X, [X]).
ultimoelemento(X, [_|T]) :- ultimoelemento(X,T).

% Ex 05 - Remover um elemento de uma lista

remover_elemento(X, [], []). % Se a lista estiver vazia, será retornada a lista vazia.
remover_elemento(X, [X], []). % Se a lista possui apenas um elemento, retornará este único elemento. 
remover_elemento(X, [X|T], T). % Retorna tail caso seja o primeiro elemento.
remover_elemento(X, [H|T], [H|L]) :- remover_elemento(X, T, L). % Recursão H, T e L.

% Ex 09 - Filtrar elementos pares de uma lista

even(N) :- mod(N, 2) =:= 0.
filtrar_pares([], []). % Se a lista estiver vazia, será retornada a lista vazia.
filtrar_pares([X], [X]) :- even(X). % Lista contém um único elemento e este elemento é par.
filtrar_pares([X], []) :- not(even(X)). % Lista vazia e o parâmetro informado é ímpar.
filtrar_pares([X|T], [X|L]):- even(X), filtrar_pares(T,L). % Retorna uma lista com elementos pares caso haja.
filtrar_pares([X|T], L):- not(even(X)), filtrar_pares(T,L). % Se o head for ímpar, processa a lista.
