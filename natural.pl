/*
 Lógica de Primer Orden

 natural(Numero)
 Es cierto cuando Numero unifica con un número natural.
 
 natural(1).
 
 natural(n-1) -> natural(n).

natural(N):- N > 1, N2 is N-1, natural(N2).
 
 
 Principio de Inducción Matemático
 
 Sea S un conjunto ordenable.
 
 Sea n0 el elemento más pequeño de S.
 
 Quiero demostrar que la propiedad P se cumple
 para todo elemento del conjunto S.
 
 1. P es cierta para n0.
 2. Para todo elemento mayor que n0, 
	si P(n-1) es cierto, también lo será P(n).	
 
 */
 
 
natural(1).
natural(N):- N > 1, N2 is N-1, natural(N2).
