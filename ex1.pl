
% Autor: Eliane Maciel
% Data: 13/03/2018

% 1. A Árvore Genealógica da Família Pinheiro (do livro [Brakto, 1990])

% Enunciado: Pouco se sabe da história passada da família Pinheiro. 
% Existem alguns registos antigos que indicam que o casal José e maria criou dois filhos, o João e a ana. 
% Que a ana teve duas filhas, a helena e a Joana, também parece ser verdade, segundo os
% mesmos registos. Além disso, o Mário é filho do João, pois muito se orgulha disso. 
% Estranho também, foi constatar que o carlos nasceu da relação entre a helena e o Mário.

% a) Utilizando o predicado paigenitor(X,Y) (ou seja, X é progenitor de Y),
% represente em Prolog todos os progenitores da família Pinheiro.

% b) Represente em Prolog as relações: sexo (masculino ou feminino), irmã,
% irmão, descendente, mãe, pai, avô, tio, primo2.

% c) Formule em Prolog as seguintes questões:

% 1. O João é filho do José?
%  progenitor(jose, joao)
% true

% 2. Quem são os filhos da maria?
% ?- progenitor(maria, L).
% L = ana ;
% L = joao.

% 3. Quem são os primos do Mário?
% 4. Quantos sobrinhos/sobrinhas com um Tio existem na família Pinheiro?
% 5. Quem são os ascendentes do carlos?

% 6. A helena tem irmãos? E irmãs?
% ?- irmaos(helena, L).
% L = jose ;
% L = joao ;
% L = mario ;
% L = carlos ;
% L = jose ;

progenitor(jose, ana).
progenitor(maria, ana).

progenitor(jose, joao).
progenitor(maria, joao).
progenitor(ana, helena).
progenitor(ana, Joana).
progenitor(joao, mario).
progenitor(helena, carlos).
progenitor(mario, carlos).

homem(jose).
homem(joao).
homem(mario).
homem(carlos).

mulher(ana).
mulher(maria).
mulher(helena).
mulher(Joana).

irma(X, Y):-
	X \= Y,
	progenitor(Z,X),
  progenitor(Z,Y),
  mulher(X).

irmao(X, Y):-
	X \= Y,
	progenitor(Z,X),
  progenitor(Z,Y),
  homem(X).

irmaos(X, L):-
	progenitor(Z,X),
  progenitor(Z, L),
  homem(L).

irmas(X, L):-
  progenitor(Z,X),
  progenitor(Z, L),
  mulher(L).

mae(X, Y):-
	progenitor(X, Y),
  mulher(X).

pai(X, Y):-
	progenitor(X, Y),
  homem(X).

avos(X, Y):-
  progenitor(X,Z),
  progenitor(Z,Y).

avo(X,Y):-
  avos(X,Y),
  homen(X).

primo(X,Y):-
  X\=Y,
  progenitor(Px,X),
  progenitor(Py,Y),
  irmaos(Px,Py).

primos(X, L):-
  progenitor(Px,X),
  progenitor(Py,L),
  irmaos(Px,Py).

tio(X, Y):-
  progenitor(L, Y),
  irmao(X, L).
