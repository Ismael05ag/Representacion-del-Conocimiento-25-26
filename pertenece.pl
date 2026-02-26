/*

pertenece(?Elem, ?Lista)
	es cierto si Elem pertenece a Lista


Principio Inducción:
1. P(n0)
2. Para todo n>n0, P(n-1) -> P(n)

*/


pertenece(Elem, [Elem | _ ]).                              /* Si el elemento está en la cabeza (Primer elemento de la lista. Caso base) */
pertenece(Elem, [ _ | Resto]) :- pertenece(Elem, Resto).   /* Si el elemento está en el resto (Caso recursivo) */