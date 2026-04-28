arbol2(a(1, a(2, a(4, a(6, nil, nil), nil), nil), a(3, nil, a(5, nil, a(7, nil, nil)))) ).

/*

 balanceado(+ArbolBinario)
	es cierto si ArbolBinario unifica con un árbol
	binario que PARA TODO nodo la diferencia entre
	la altura del árbol izquierdo y derecho es como
	máximo 1.

*/

balanceado(nil).
balanceado(a(_, HijosIzq, HijosDch)):- altura_ab(HijosIzq, AIzq), 
					    altura_ab(HijosDch, ADch),
					    Dif is AIzq - ADch,
					    Abs is abs(Dif), Abs =< 1,
					    balanceado(HijosIzq), balanceado(HijosDch).



/*
altura_ab(+ArbolBinario, -Altura)
	es cierto si altura unifica con la altura del árbol binario ArbolBinario.
*/

altura_ab(nil, 0).
altura_ab(a(_, HijosIzq, HijosDch), Altura) :- altura_ab(HijosIzq, AIzq), 
					       altura_ab(HijosDch, ADch),
					       Altura is max(AIzq, ADch),
					       Altura is Altura + 1.



