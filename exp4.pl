$ 4. Teste os predicados fat (fatorial de um número) e fib (sequencia de
% Fibonacci).

fat(0,1):-!.
fat(1,1):-!.
fat(N,F) :-
	N1 is N - 1,
	fat(N1,F1),
	F is N * F1.

fib(N,F) :-
	fibx(N,1,1,F), !.

fibx(0,A,_,A).
fibx(N,A,B,F) :-
	N1 is N - 1,
	AB is A + B,
	fibx(N1,B,AB,F).