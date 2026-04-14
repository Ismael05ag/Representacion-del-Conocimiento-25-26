arbol1( a(1, a(2, nil, nil), a(3, nil, a(4, nil, nil))) ).

/*
pertenece_ab(+Elem, +ArbolBinario)
	es cierto si la etiqueta Elem pertenece a ArbolBinario.
*/

pertenece_ab(Elem, a(Elem, _, _)).

pertenece_ab(Elem, a(_, ArbolIzq, _)):- pertenece_ab(Elem, ArbolIzq). 

pertenece_ab(Elem, a(_, _, ArbolDer)):- pertenece_ab(Elem, ArbolDer).
					    