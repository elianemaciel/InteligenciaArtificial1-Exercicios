% Seja o seguinte programa:
% 1° p(X,[],[X]).
% 2° p(X,[Y|L],[X,Y|L]):-
% X < Y.
% 3° p(X,[Y|L],[Y|R]):-
% p(X,L,R).
% Mostre passo a passo qual será o resultado da seguinte chamada:
% ?- p(5,[2,3,9],Z).

% O algoritmo insere na lista ordenado

% 2° - 5<2 ? creep
% 3° - recursao p(5, [3, 9], _) 
% 2° - Compara X com o 1° elemento 5<3
% 3° - recursao p(5, [9], _)
% 2° - Compara X com o 1° elemento 5<9
% 2° - return p(5, [9], [5, 9]) 
% 2° - return p(5, [3, 9], [3, 5, 9]) 
% 2° - return p(5, [2, 3, 9], [2, 3, 5, 9])

% Autor: Eliane Maciel
% Data: 13/03/2018

p(X,[],[X]).
p(X,[Y|L],[X,Y|L]):-
	X < Y.
p(X,[Y|L],[Y|R]):-
	p(X,L,R).