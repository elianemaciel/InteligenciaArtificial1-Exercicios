% 8. Defina o predicado máx(L,M) que determina o item máximo M na lista L. Por
% exemplo, máx[4,9,1],M) resulta em M=9.


max([X],X).
max([X|Y],M):-
	max(Y,N),          	
     	(X>N -> M=X; M=N). 
