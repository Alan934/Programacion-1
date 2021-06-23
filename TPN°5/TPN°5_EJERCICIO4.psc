//Sanjurjo_Alan
//TP5_EJERCICIO4
//Crear un procedimiento que intercambie los valores de dos variables. 
//Realizar un programa que llame a este procedimiento para que 
//intercambie dos valores leídos desde el teclado y los muestre por pantalla

Algoritmo intercambio_variables
	
	Definir numero_a, numero_b Como Real
	
	Escribir " Bienvenido!!! Ingrese el primer valor, variable A: "
	leer numero_a
	Escribir " Ingrese el segundo valor, variable B: "
	leer numero_b
	
	Escribir ""
	variable_a(numero_a)
	variable_b(numero_b)
	
	
FinAlgoritmo//fin del main

	Funcion variable_b(numero_b)
		auxiliar = numero_a
		numero_a = numero_b
		numero_b = auxiliar
		escribir " La variable A luego de intercambiar con B optiene el valor de: " numero_a
	FinFuncion


	Funcion variable_a(numero_a)
		auxiliar = numero_a
		numero_a = numero_b
		numero_b = auxiliar
		escribir " La variable B luego de intercambiar con A optiene el valor de: " numero_b
	FinFuncion

