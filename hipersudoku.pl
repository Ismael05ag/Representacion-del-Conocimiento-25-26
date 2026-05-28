/*
	X #= 1+3.
		X = 4.
	3 #= Y+2.
		Y = 1.
	
	X #> 5, X #< 8.
		X in 6..7.
	X #> 5.
		X in 6..sup.
*/

:- use_module(library(clpfd)).

sudoku1(
[[1, 2, 3, 4, 5, 6, 7, 8, 9],
[4, 5, 6, 7, 8, 9, 1, 2, 3],
[7, 8, 9, 1, 2, 3, 4, 5, 6],
[2, 1, 4, 3, 6, 5, 8, 9, 7],
[3, 6, 5, 8, 9, 7, 2, 1, 4],
[8, 9, 7, 2, 1, 4, 3, 6, 5],
[5, 3, 1, 6, 4, 8, 9, 7, 2],
[6, 7, 2, 9, 3, 1, 5, 4, 8],
[9, 4, 8, 5, 7, 2, 6, 3, 1]]).

/*
	Hipersudoku 9x9
	

hipersudoku(+Matriz).
	Es cierto si Matriz unifica con una matriz 9x9 
	que cumple las restricciones de un hipersudoku 9x9.
	
	1.- Puede generar un hipersudoku válido si Matriz es una variable libre.
	2.- Puede comprobar si Matriz es un hipersudoku válido si Matriz está instanciada.
	3.- Puede encontrar los huecos que faltan si Matriz está parcialmente instanciada.
	
	
hipersudoku(Rows), maplist(label, Rows), maplist(portray_clause, Rows).
*/

hipersudoku(Rows):- length(Rows, 9),
			   maplist(same_length(Rows), Rows),
			   append(Rows, Vs),
			   Vs ins 1..9,
			   maplist(all_distinct, Rows),
			   transpose(Rows, Columns),
			   maplist(all_distinct, Columns),
			   Rows = [As, Bs, Cs, Ds, Es, Fs, Gs, Hs, Is],
			   blocks(As,Bs,Cs),
			   blocks(Ds,Es,Fs),
			   blocks(Gs,Hs,Is),
			   hiperblocks(Bs,Cs,Ds),
			   hiperblocks(Fs,Gs,Hs).

/*
blocks(+L1, +L2, +L3).
	Es cierto si los tres bloques 3x3 que forman las 
	tres listas de longitud 9, tienen valores distintos.
*/

blocks([], [], []).
blocks([A,B,C|Resto1], [D,E,F|Resto2], [G,H,I|Resto3]):- all_distinct([A,B,C,D,E,F,G,H,I]),
							 blocks(Resto1, Resto2, Resto3).

hiperblocks([_],[_],[_]).
hiperblocks([_,A,B,C|Resto1], [_,D,E,F|Resto2], [_,G,H,I|Resto3]):- all_distinct([A,B,C,D,E,F,G,H,I]),
								    hiperblocks(Resto1, Resto2, Resto3).
