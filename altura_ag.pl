arbolg1( a(a, [a(b, [a(e, [])]), a(c, []), a(d, [])]) ).

/*

altura_ag(+ArbolGenerico, -Altura)
	es cierto si Altura unifica con la altura de ArbolGenerico.

*/

altura_ag( a(_, ListaHijos), ALista) :- altura_ag( ListaHijos, AL),
					ALista is AL + 1.


/*



*/

altura_ag([], 0).

altura_ag([Cab|Resto], R3) :- altura_ag(Resto, R1),
			      altura_ag(Cab, R2),
			      R3 is max(R1, R2).