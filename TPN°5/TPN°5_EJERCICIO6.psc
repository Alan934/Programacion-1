//Sanjurjo_Alan
//TP5_EJERCICIO6
//Escribe una función que reciba un número como parámetro y devuelva el número 
//que se obtiene al invertir el orden de los dígitos del número original. 
//Por ejemplo, si la función recibe el número 356 devolverá el número 653.

Algoritmo invertir_numeros
	
	Definir numero_usuario Como Entero
	
	Escribir " Bienvenido!!! Ingrese el numero que desea invertir: "
	Escribir " El numero si tiene muchos 0 quedaria solo un numero, ej 1000, invertido queda 1."
	leer numero_usuario
	
	Si numero_usuario = 0 Entonces
		Escribir " El numero 0, invertido quedaria 0."
	SiNo
		Escribir " El numero invertido de: " numero_usuario " es: " invertir_numero(numero_usuario)
	Fin Si
	
FinAlgoritmo//fin del main

	Funcion invertido <- invertir_numero(numero_usuario)
		Mientras numero_usuario > 0 Hacer
			cifra <- numero_usuario % 10
			numero_usuario <- numero_usuario - cifra
			numero_usuario <- numero_usuario / 10
			invertido <- invertido * 10 + cifra
		FinMientras
	Fin Funcion
	
