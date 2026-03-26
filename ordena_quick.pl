/*

divide(+Elem, +Lista, -Menores, -Mayores)
	es cierto cuando Menores unifica con una lista que
	contiene los elemenentos de Lista que son menores
	o iguales que Elem y Mayores unifica con una lista
	que contiene los elementos de Lista que son
	mayores que Elem.

*/

divide(_,[],[],[]).
divide(Elem, [Cab|Resto], Menores, [Cab|Mayores]):- Cab > Elem, divide(Elem, Resto, Menores, Mayores).
divide(Elem, [Cab|Resto], [Cab|Menores], Mayores):- Cab =< Elem, divide(Elem, Resto, Menores, Mayores).

/*

ordena_quick(+Lista, -ListaR).
es cierto cuando ListaR unifica con una lista que
contiene los mismos elementos que Lista ordenados
de menor a mayor.

*/

ordena_quick([],[]).
ordena_quick([Cab|Resto], R):- divide(Cab, Resto, Men, May),
  				ordena_quick(Men, RMen),
  				ordena_quick(May, RMay),
  				append(RMen, [Cab|RMay], R).