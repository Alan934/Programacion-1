//Desarrollar un algoritmo que permita saber cu�l es el n�mero mayor y menor, 
//sobre un total de 10 n�meros inicializados de forma aleatoria(Rand).
//El algoritmo deber� informar al usuario, los n�meros con los que se
//realiz� el c�lculo, el mayor y el menor obtenido.
Algoritmo numeros_aleatorios
	definir n1, maximo, minimo Como Entero
	
	escribir " Se le mostraran 10 numero aleatorios entre el 1 y 1000."
	minimo= 1500
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		n1= Aleatorio(1, 1000)
		Si n1 > maximo Entonces
			maximo = n1
		Fin Si
		si n1 < minimo Entonces
			minimo= n1
		FinSi
		escribir " " n1
		Escribir " ***"
	Fin Para
	
	Escribir " El numero maximo es: " maximo
	Escribir " El numero minimo es: " minimo
	
	
	
FinAlgoritmo
