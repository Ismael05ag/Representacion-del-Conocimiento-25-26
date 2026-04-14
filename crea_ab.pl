arbol1( a(1, a(2, nil, nil), a(3, nil, a(4, nil, nil))) ).


/* 

crea_ab(+ListaEtiquetas, -ArbolBinario) 
	es cierto cuando ArbolBinario unifica con
	un árbol binario balanceado que contiene solo 
	las etiquetas de ListaEtiquetas.

*/

crea_ab([], nil).

crea_ab([Cab|Resto], a(Cab, ArbolIzq, ArbolDer)) :-
    							length(Resto, L),
    							N is L // 2,                
    
    							length(MitadIzq, N),      
    							append(MitadIzq, MitadDer, Resto), 
   							crea_ab(MitadIzq, ArbolIzq),      
    							crea_ab(MitadDer, ArbolDer).