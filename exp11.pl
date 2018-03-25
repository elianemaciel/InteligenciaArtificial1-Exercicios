% 11. Usando a tabela d(0,zero), d(1,um), ..., d(9,nove), defina o predicado
% txt(D,P) que converte uma lista de dígitos numa lista de palavras. Por exemplo,
% txt([7,2,1],P) resulta em P=[sete,dois,um].

d(0,zero).
d(1, um).
d(2, dois).
d(3, trez).
d(4, quatro).
d(5, cinco).
d(6, seis).
d(7, sete).
d(8, oito).
d(9, nove).

converte([], []).
converte([X|L1], [Y|L2]):-
	d(X,Y),
	converte(L1, L2).