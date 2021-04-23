//Desarrollar un algoritmo que imprima la tabla de multiplicar de los números del uno diez.
Algoritmo Tablas_de_multiplicar
	definir i, multiplicador, multiplicar Como Entero
	//entrada
	escribir" Se le mostrara las tablas de multiplicar del 1 al 10."
	//Proceso 
	Para i Desde 1 Hasta 10 Con Paso 1 Hacer
		Escribir " Tabla del: " i
		Para multiplicador desde 1 hasta 10 con paso 1 Hacer
			multiplicar = i * multiplicador
			Escribir i " x " multiplicador " = " multiplicar
		FinPara
		Escribir "*************"
	FinPara
	
FinAlgoritmo
