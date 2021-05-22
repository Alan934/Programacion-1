Algoritmo tateti
	Definir i, j, jugador Como Entero
	Definir arreglo_tateti Como Caracter
	tamanio_arreglo = 9
	Dimension arreglo_tateti[9]
	Escribir " Es el juego del tateti, se elegira al azar el jugador inicial"
	Escribir ""
	Para i<-1 Hasta tamanio_arreglo Con Paso 1 Hacer
		arreglo_tateti(i) = " "
	Fin Para
	i = 1
	jugador = azar(2) + 1
	
	Mientras i <= tamanio_arreglo Hacer
		Escribir " Ingrese una posicion jugador ", jugador
		Escribir " 1, 2, 3", "                    ", arreglo_tateti(1), ",", arreglo_tateti(2), ",", arreglo_tateti(3)
		Escribir " 4, 5, 6", "                    ", arreglo_tateti(4), ",", arreglo_tateti(5), ",", arreglo_tateti(6)
		Escribir " 7, 8, 9", "                    ", arreglo_tateti(7), ",", arreglo_tateti(8), ",", arreglo_tateti(9)
		i = i + 1
		Leer j
		si j > 0 y j < 10 Entonces
			si jugador == 1 Entonces
				si arreglo_tateti(j) == " " Entonces
					arreglo_tateti(j) = "X"
					jugador = 2
					// jugador 1
					si arreglo_tateti(1) == "X" y arreglo_tateti(2) == "X" y arreglo_tateti(3) == "X" Entonces
						Escribir " El jugador 1 es el GANADOR, perdiste 2."
						i = tamanio_arreglo
					FinSi
					si arreglo_tateti(4) == "X" y arreglo_tateti(5) == "X" y arreglo_tateti(6) == "X" Entonces
						Escribir " El jugador 1 es el GANADOR, perdiste 2, siempre seras el segundo."
						i = tamanio_arreglo
					FinSi
					si arreglo_tateti(7) == "X" y arreglo_tateti(8) == "X" y arreglo_tateti(9) == "X" Entonces
						Escribir " El jugador 1 es el GANADOR, perdiste 2."
						i = tamanio_arreglo
					FinSi
					si arreglo_tateti(1) == "X" y arreglo_tateti(4) == "X" y arreglo_tateti(7) == "X" Entonces
						Escribir " El jugador 1 es el GANADOR, perdiste 2."
						i = tamanio_arreglo
					FinSi
					si arreglo_tateti(2) == "X" y arreglo_tateti(5) == "X" y arreglo_tateti(8) == "X" Entonces
						Escribir " El jugador 1 es el GANADOR, perdiste 2."
						i = tamanio_arreglo
					FinSi
					si arreglo_tateti(3) == "X" y arreglo_tateti(6) == "X" y arreglo_tateti(9) == "X" Entonces
						Escribir " El jugador 1 es el GANADOR, perdiste 2."
						i = tamanio_arreglo
					FinSi
					si arreglo_tateti(1) == "X" y arreglo_tateti(5) == "X" y arreglo_tateti(9) == "X" Entonces
						Escribir " El jugador 1 es el GANADOR, perdiste 2, siempre seras el segundo."
						i = tamanio_arreglo 
					FinSi
					si arreglo_tateti(3) == "X" y arreglo_tateti(5) == "X" y arreglo_tateti(7) == "X" Entonces
						Escribir " El jugador 1 es el GANADOR, perdiste 2."
						i = tamanio_arreglo
					FinSi
					
				SiNo
					Escribir "****************************"
					Escribir " Esta posicion esta ocupada."
					Escribir "****************************"
					Escribir ""
				FinSi
			SiNo
				si arreglo_tateti(j) == " " Entonces
					arreglo_tateti(j) = "O"
					jugador = 1
					//jugador 2
					si arreglo_tateti(1) == "O" y arreglo_tateti(2) == "O" y arreglo_tateti(3) == "O" Entonces
						Escribir " El jugador 2 es el GANADOR, perdiste 1."
						i = tamanio_arreglo
					FinSi
					si arreglo_tateti(4) == "O" y arreglo_tateti(5) == "O" y arreglo_tateti(6) == "O" Entonces
						Escribir " El jugador 2 es el GANADOR, perdiste 1, a casa malo."
						i = tamanio_arreglo
					FinSi
					si arreglo_tateti(7) == "O" y arreglo_tateti(8) == "O" y arreglo_tateti(9) == "O" Entonces
						Escribir " El jugador 2 es el GANADOR, perdiste 1."
						i = tamanio_arreglo
					FinSi
					si arreglo_tateti(1) == "O" y arreglo_tateti(4) == "O" y arreglo_tateti(7) == "O" Entonces
						Escribir " El jugador 2 es el GANADOR, perdiste 1."
						i = tamanio_arreglo
					FinSi
					si arreglo_tateti(2) == "O" y arreglo_tateti(5) == "O" y arreglo_tateti(8) == "O" Entonces
						Escribir " El jugador 2 es el GANADOR, perdiste 1."
						i = tamanio_arreglo
					FinSi
					si arreglo_tateti(3) == "O" y arreglo_tateti(6) == "O" y arreglo_tateti(9) == "O" Entonces
						Escribir " El jugador 2 es el GANADOR, perdiste 1."
						i = tamanio_arreglo
					FinSi
					si arreglo_tateti(1) == "O" y arreglo_tateti(5) == "O" y arreglo_tateti(9) == "O" Entonces
						Escribir " El jugador 2 es el GANADOR, perdiste 1, a casa malo."
						i = tamanio_arreglo 
					FinSi
					si arreglo_tateti(3) == "O" y arreglo_tateti(5) == "O" y arreglo_tateti(7) == "O" Entonces
						Escribir " El jugador 2 es el GANADOR, perdiste 1."
						i = tamanio_arreglo
					FinSi
				sino 
					Escribir "****************************"
					Escribir " Esta posicion esta ocupada."
					Escribir "****************************"
					Escribir ""
				FinSi
			FinSi
		sino 
			Escribir ""
			Escribir " El numero elegido no esta en la tabla, intentelo otra vez."
			Escribir ""
		FinSi
		i = i + 1
	Fin Mientras
	Escribir " 1, 2, 3", "                    ", arreglo_tateti(1), ",", arreglo_tateti(2), ",", arreglo_tateti(3)
	Escribir " 4, 5, 6", "                    ", arreglo_tateti(4), ",", arreglo_tateti(5), ",", arreglo_tateti(6)
	Escribir " 7, 8, 9", "                    ", arreglo_tateti(7), ",", arreglo_tateti(8), ",", arreglo_tateti(9)
	
FinAlgoritmo
