% 7. Defina o predicado soma(L,S) que calcula a soma S dos itens da lista L. Por
% exemplo, soma([4,9,1],S) resulta em S=14.

soma([], 0).
soma([A|L], N) :-
	soma(L, N1),
	N is N1 + A.