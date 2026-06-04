/*
mas_veces(+Lista, -Elem, -Num).
	Es cierto cuando Elem unifica con el elemento
	que se repite más veces en la lista Lista y 
	Num unifica con el número de veces que se 
	repite dicho elemento.
*/

mas_veces([], _, 0).
mas_veces([Elem], Elem, 1).
mas_veces(Lista, Elem, N):- msort(Lista, ListaO),
							comprime(ListaO, ListaC),
							mayor_n(ListaC, Elem, N).
							
%-------------------------------------------------

/*
mayor_n(+ListaComp, -Elem, -N).
	Es cierto si Elem unifica con el elemento que 
	se repite más veces en ListaComp y N unifica con
	el número de veces que se repite Elem.
*/

mayor_n([(Elem, N)], Elem, N).
mayor_n([(Elem, N)|Resto], Elem, N):- 
							mayor_n(Resto, _, N2),
							N >= N2.
mayor_n([(_, N)|Resto], Elem2, N2):- 
							mayor_n(Resto, Elem2, N2),
							N < N2.

%-------------------------------------------------

/*
comprime(+Lista, -ListaR).
	Es cierto si ListaR unifica con una lista con 
	el siguiente formato:
	comprime([a,a,b,b,b,c,d,d,a], R).
	R = [(a,2), (b,3), (c,1), (d,2), (a,1)]
*/

comprime([], []).
				
comprime([Elem], [(Elem,1)]).
						
comprime([Cab, Cab|Resto], [(Elem,N2)|Resto2]):- 
									comprime([Cab|Resto], [(Elem, N)|Resto2]), 
									N2 is N + 1.
									
comprime([Cab, Cab2|Resto], [(Cab,1)|Resto2]):- 
									Cab \= Cab2,
									comprime([Cab2|Resto], Resto2).
