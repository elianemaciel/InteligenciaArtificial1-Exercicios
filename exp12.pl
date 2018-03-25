% 12. O grafo a seguir representa um mapa, cujas cidades são representadas por
% letras e cujas estradas são representados por números.

% a) Usando o predicado estrada(Número,Origem,destino), crie um programa
% para representar esse mapa.
% b) defina o predicado rota(a,b,R), que determina uma rota R (lista de
% estradas) que leva da cidade a até a cidade b.

estrada(1, a, b).
estrada(2, a, d).
estrada(3, b, c).
estrada(4, c, d).
estrada(5, b, e).
estrada(6, c, f).
estrada(7, d, f).
estrada(8, e, f).

rota(a, b, [1]).
rota(a, c, [1, 3]).
rota(a, d, [2]).
rota(a, e, [1, 5]).
rota(a, f, [1, 5, 8]).
rota(b, c, [3]).
rota(b, d, [3, 4]).
rota(b, e, [5]).
rota(b, f, [5, 8]).
rota(c, d, [4]).
rota(c, f, [6]).
rota(d, f, [7]).
rota(e, f, [8]).
