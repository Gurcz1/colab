## Maplista
szescian(X,Y):- Y is X*X*X.
szescian_lista(L1,L2):-
maplist(szescian,L1,L2).

wiekszy_od(X,Y):- Y>X.
wieksza_lista(L1,L2):-
maplist(wiekszy_od,L2,L1).

odejmin_2(X,Y):-
		X is Y -2.

zmiejszo2(L1,L2):-
		maplist(odejmin_2,L1,L2).

  mniej_o_5(X,Y):-Y is X -5.

mniejo5lita(L1,L2):-
maplist(mniej_o_5,L1,L2).

## Lista
dlugosc_listy([], 0).                     
dlugosc_listy([_|T], N) :-2
    dlugosc_listy(T, N1),                 
    N is N1 + 1.

lista_razy5([],[]).
lista_razy5([H1|T1],[H2|T2]:- H2 is H1 * 5,lista_razy5(T1,T2).
