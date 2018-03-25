% 3. Escreva um predicado que verifica se um elemento pertence a uma lista.
% ?- pertence (a,[a,b,v,f]).
% yes

% Autor: Eliane Maciel
% Data: 13/03/2018

pertence(X, [Y|L]):-
	X == Y.
pertence(X, [Y|L]):-
	pertence(X, L).

