/*

permuta(Lista, ListaR).
	es cierto cuando ListaR unifica con una lista
	que contiene los elementos de Lista en orden
	distinto. Este predicado genera todas las
	listas posibles al solicitar más soluciones con ";".

// Solución alternativa encontrada sin el predicado insertar_todas

permuta([], []).
permuta([Cab|Resto], LR) :- permuta(Resto, R), append(A, B, R), append(A, [Cab|B], LR).  

*/

permuta([], []).
permuta([Cab|Resto], R2) :- permuta(Resto, R), insertar_todas(Cab, R, R2).

/*
insertar_todas(+Elem, +Lista, -ListaR).
	es cierto cuando ListaR unifica con Lista con 
	el elemento Elem insertado en cualquier posición.

*/

insertar_todas(Elem, Lista, [Elem|Lista]).
insertar_todas(Elem, [Cab|Resto], [Cab|LR]):- insertar_todas(Elem, Resto, LR).