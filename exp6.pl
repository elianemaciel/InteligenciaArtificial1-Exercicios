% 6. Defina o predicado tam(L,N), que determina o número de itens N existente
% numa lista L. Por exemplo, tam([a,b,c],N), resulta em N=3.

tam([], 0).
tam([A|L], N) :-
	tam(L, N1),
	N is N1 + 1.