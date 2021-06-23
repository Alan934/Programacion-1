//Sanjurjo_Alan
//TP5_EJERCICIO2
//Escribe un procedimiento que escriba en pantalla los n primeros números primos.
//El procedimiento recibe n como parámetro.

Algoritmo primeros_numer_primos
	Definir numero_usuario Como Entero	
	
	Escribir " Bienvenido!!! Ingrese hasta que numero primo desea saber: "
	leer numero_usuario
	
	primeros_numeros_primos(numero_usuario)
	
FinAlgoritmo// fin del main

	Funcion  primeros_numeros_primos(numero_usuario)
		Para i<-1 Hasta numero_usuario Con Paso 1 Hacer
			j = 1
			contador = 0
			Mientras j <= i Hacer
				si i % j == 0 entonces
					contador = contador + 1
				FinSi
				j = j + 1
			Fin Mientras
			si contador = 2 Entonces
				escribir i
			FinSi
		Fin Para
	FinFuncion

	