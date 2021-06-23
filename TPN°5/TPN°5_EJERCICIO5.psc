//Sanjurjo_Alan
//TP5_EJERCICIO5
//Escribe una función llamada media2 que reciba dos reales y devuelva el real que representa 
//el promedio de ambos números. Escribe luego un programa utilizando la función anterior que 
//lea dos reales por teclado y devuelva la media aritmética de ambos

Algoritmo promedio_2_numeros
	
	Definir compra1, compra2 Como Real
	
	Escribir " Bienvenido!!! Calcularemos el promedio de 2 compras."
	Escribir " Ingrese el monto de la primera compra: "
	leer compra1
	Escribir " Ingrese el monto de la segunda compra: "
	leer compra2
	
	
	Escribir " El promedio de las 2 compras es: " media2(compra1, compra2)
	
	
FinAlgoritmo//fin del main

	//funcion de promedio 2 numeros
	Funcion calcular_descuento_estudiantes <- media2(compra1, compra2)
		
		calcular_descuento_estudiantes <- (compra1 + compra2) / 2
		
	FinFuncion
