% 9. Usando o predicado anexa, defina o predicado inv(L,R) que inverte a lista L.
% Por exemplo, inv([b, c, a], R) resulta em R=[a,c,b].


% Inverte uma Lista
conc([],L,L).
conc([X|L1],L2,[X|L3]):-
	conc(L1,L2,L3). 

inv([],[]).
inv([X|Y],Z):-
	inv(Y,Y1),
	conc(Y1,[X],Z).