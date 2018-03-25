% 5. Defina o predicado último(L,U), que determina o último item U numa lista L.
% Por exemplo, último([a,b,c],U), resulta em U=c.

ultimo([],[]).
ultimo([A], A).
ultimo([A|L], C) :-
	ultimo(L, C).