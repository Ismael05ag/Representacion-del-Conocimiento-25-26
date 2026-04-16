/*
crea_abb(+ListaEtiquetas, -ArbolBinario)
	 es cierto cuando ArbolBinario unifica con un
	 árbol binario de búsqueda balanceado que
	 contiene solo las etiquetas de ListaEtiquetas. 
	 Los elementos de ListaEtiquetas están ordenados
	 de menor a mayor.
*/

crea_abb([], nil).


crea_abb(Lista, a(Raiz, Izq, Der)) :- Lista \= [],
    				      length(Lista, Long), 
    				      N is Long // 2,      
    				      length(MitadIzq, N), 
  				      append(MitadIzq, [Raiz|MitadDer], Lista),
       				      crea_abb(MitadIzq, Izq),
                                      crea_abb(MitadDer, Der).