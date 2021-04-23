//Desarrollar un algoritmo que permita realizar las operaciones básicas de
//una calculadora (suma, resta, multiplicación, división, potencia). Debe
//permitir leer dos valores. A continuación desplegar un menú con las
//opciones mencionadas. Detectar si los números ingresados no son
//válidos para la operación seleccionada. En caso de que no sean válidos, solicitar nuevamente el ingreso de los valores.
//Informar al usuario:
//	- La opción seleccionada.
//	- El resultado de la operación matemática
//	- Consultar si desea continuar o finalizar el ejercicio
Algoritmo calculadora
	Definir n1, n2, suma, resta, div, mulp, potencia, n1_div, n2_div, n1_potencia, n2_potencia Como Real
	definir opciom Como Entero
	//entrada
	Repetir
	Escribir " Selecione la opcion deseada"
	escribir " Opcion 1: Suma"
	Escribir " Opcion 2: Resta"
	Escribir " Opcion 3: Multiplicacion"
	Escribir " Opcion 4: Division"
	Escribir " Opcion 5: potencia"
	Escribir " opcion 6: Salir"
	Leer opciom
	//en caso de division
	si opciom = 4 Entonces
		Escribir " Ingrese numero del dividendo"
		leer n1_div
		Escribir " Ingrese numero del divisor"
		leer n2_div
	FinSi
	//en caso de potencia
	si opciom = 5 Entonces
		Escribir " Ingrese el primer numero"
		leer n1_potencia
		Escribir " Ingrese la potecia"
		leer n2_potencia
	FinSi
	// en caso de suma, resta y multiplicacion
	si opciom = 1 o opciom = 2 o opciom = 3 Entonces
	Escribir " Ingrese el primer numero "
	leer n1
	Escribir " Ingrese el segundo numero"
	leer n2
	//Proceso 
	FinSi
		Segun opciom Hacer
			1:
				Escribir " Eligio Suma"
				suma = n1 + n2
				Escribir n1 " + " n2 " = " suma
			2:
				Escribir " Eligio Resta"
				Si n1 >= n2 Entonces
					resta = n1 - n2
					Escribir n1 " - " n2 " = " resta
				SiNo
					resta = n2 - n1
					Escribir n2 " - " n1 " = " resta
				Fin Si
			3:
				Escribir " Eligio Multiplicacion"
				mulp = n1 * n2
				Escribir n1 " x " n2 " = " mulp
			4:
				Escribir " Eligio Division"
				si n2_div = 0 Entonces
					Escribir " No se puede dividir por 0"
				FinSi
				div = n1_div / n2_div
				Escribir n1_div " / " n2_div " = " div
			5:
				escribir " Eligio Potencia"
				potencia= n1_potencia  ^ n2_potencia
				Escribir n1_potencia " ^ " n2_potencia " = " potencia
			6:
				Escribir " Saliendo de la calculadora"
			De Otro Modo:
				Escribir " El numero de opcion es incorrecto"
		Fin Segun
	Hasta Que opciom == 6
	
FinAlgoritmo
