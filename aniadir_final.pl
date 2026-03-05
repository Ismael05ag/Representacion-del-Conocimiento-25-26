/*

aniadir_final(+Elem, +Lista, -ListaR)
	es cierto cuando ListaR
	unifica con una lista que contiene los mismos elementos
	que Lista con el Elemento Elem añadido al final.




aniadir_final(Elem, Lista, R2) :- append(Lista, [Elem], R2). --> Funciona pero no hacer así

*/


aniadir_final(Elem, [], [Elem]).

aniadir_final(Elem, [Cabeza|Resto], [Cabeza|R] ) :- aniadir_final(Elem, Resto, R).