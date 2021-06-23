//Sanjurjo_Alan
//TP5_EJERCICIO1
//Crear un subprograma que reciba como entrada un valor entero e indique si se trata de un número par o impar.
//¿Qué tipo de subprograma crees más apropiado, procedimiento o función?, procedimiento, al no devolver un valor, me resulta mas facil.
//Escribe también un programa principal para probar el subprograma.
Algoritmo identificar_numero_par
	definir numero_usuario Como Entero
	
	Escribir " Bienvenido!!! Ingrese un numero entero para saber si es par o impar: "
	leer numero_usuario
	
	identificar_numer_par(numero_usuario)
	
	
FinAlgoritmo// fin del main

	Funcion identificar_numer_par(numero_usuario)
		si numero_usuario % 2 = 0 Entonces
			Escribir " El numero: ", numero_usuario, " si es par."
		SiNo
			Escribir " El numero: ", numero_usuario," no es par."
		FinSi
	FinFuncion

	