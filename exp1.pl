x([]).
x([A]).
x([A,B|C]) :-
	A < B,
	x([B|C]).

% a) O que ocorre quando a consulta
% ?- x([1,2,4,8,5]).
% é feita? A resposta é yes ou no?
% No, ela verifica se a lista esta ordenada.

% b) Para quais listas de valores x vai ser satisfeito?
% Para listas ordenadas.