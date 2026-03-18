/*

divide(+Elem, +Lista, -Menores, -Mayores)
	es cierto cuando Menores unifica con una lista que 
	contiene los elementos de Lista que son menores
	o iguales que Elem y Mayores unifica con una lista
	que contiene los elementos de Lista que son mayores que Elem.

*/

divide(_, [], [], []).

divide(Elem, [Cabeza|Resto], Menores, [Cabeza|Mayores]):- Cabeza > Elem, divide(Elem, Resto, Menores, Mayores).

divide(Elem, [Cabeza|Resto], [Cabeza|Menores], Mayores) :- Cabeza =< Elem, divide(Elem, Resto, Menores, Mayores).