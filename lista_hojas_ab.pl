/* 

lista_hojas(+Arbol_binario, ?Lista_hojas)
	es cierto cuando Lista_hojas unifica con una lista que contiene
	las etiquetas de las hojas del árbol Arbol_binario
*/

hoja( a(_, nil, nil) ).

lista_hojas(nil, []).

lista_hojas( a(Et, Hi, Hd), [Et] ):- hoja( a(Et, Hi, Hd) ).

lista_hojas( a(Et, Hi, Hd), R ):- \+ hoja( a(Et, Hi, Hd) ),
				  lista_hojas(Hi, Ri),
				  lista_hojas(Hd, Rd),
				  append(Ri, Rd, R).