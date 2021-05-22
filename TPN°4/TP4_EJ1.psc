Algoritmo cien_primeros_numeros_pares
	definir arreglo_Numeros, posicion Como Entero
	Dimension  arreglo_Numeros[200]
	posicion=0
	Para i<-0 Hasta 200-1 Con Paso 2 Hacer
		posicion= posicion + 1
		arreglo_Numeros[i] = i + 1
		escribir " En la posicion: " posicion ", Numero: " arreglo_Numeros[i]
	Fin Para
	
FinAlgoritmo
