//Sanjurjo_Alan
//TP5_EJERCICIO6
//Escribe una funci�n que reciba un n�mero como par�metro y devuelva el n�mero 
//que se obtiene al invertir el orden de los d�gitos del n�mero original. 
//Por ejemplo, si la funci�n recibe el n�mero 356 devolver� el n�mero 653.

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
	
