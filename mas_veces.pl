/*
mas_veces(+Lista, -Elem, -Num)
	es cierto cuando Elem unifica con el elemento
	que se repite más veces en la lista Lista
	y Num unifica con el número de veces que se
	repite dicho elemento.
*/

mas_veces([], _, 0).
mas_veces([Ca|Co], Ca, N2):- mas_veces(Co, El, N), Ca=El, N2 is N+1.

mas_veces([Ca|Co], El, N):- mas_veces(Co, El, N), Ca\=El.





/*

comprime(+Lista, -ListaR)
	es cierto si ListaR unifica con una lista con
	el siguiente formato:
	comprime([a,a,b,b,b,c,d,d,a], R)
	R= [(a,2), (b,3), (c,1), (d,2), (a,1)]

*/

comprime([],[]).
comprime([Cab|Resto], [(Cab, 1)|R]) :- comprime(Resto, R).
comprime([Cab|Resto], [(Cab,N2)|R2]):- comprime(Resto, [(Cab,N)|R2]), N2 is N+1. 
