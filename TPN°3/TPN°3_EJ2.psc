//Desarrollar un algoritmo que permita saber cuál es el número mayor y menor, 
//sobre un total de 10 números inicializados de forma aleatoria(Rand).
//El algoritmo deberá informar al usuario, los números con los que se
//realizó el cálculo, el mayor y el menor obtenido.
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
