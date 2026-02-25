/*

num_elem(+Lista, -Resultado)
	es cierto si Resultado unifica con el
	número de elementos de Lista.

Principio de inducción:

1) num_elem([], ).
2) num_elem(n-1) -> num_elem(n).


*/

num_elem([], 0).
num_elem([ _ | Cola], Resultado) :- num_elem(Cola, NumCola), Resultado is NumCola + 1.