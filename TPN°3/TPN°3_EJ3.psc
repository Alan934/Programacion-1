//Desarrollar un algoritmo que permita calcular la suma de los primeros cien n�meros. Agregar un men� con tres opciones:
//a. Opci�n 1: Calcular utilizando la estructura PARA
//b. Opci�n 2: Calcular utilizando la estructura MIENTRAS
//c. Opci�n 3: Calcular utilizando la estructura REPETIR
//d. Detectar si el usuario ingresa una opci�n incorrecta, informar al usuario si desea salir o continuar con la ejecuci�n del programa
//informar al usuario:
//- La opci�n seleccionada.
//- La sumatoria de los n�meros.
//- Consultar si desea continuar o finalizar el ejercicio
Algoritmo suma_de_los_primeros_100numeros
	definir opciom, suma, repeti, mientra, p Como Entero
	Repetir
		//entrada
	 Escribir " Seleccione la opcion deseada, para saber la suma de los primero 100 numeros."
	 Escribir " Opci�n 1: Calcular utilizando la estructura PARA."
	 Escribir " Opci�n 2: Calcular utilizando la estructura MIENTRAS."
	 Escribir " Opci�n 3: Calcular utilizando la estructura REPETIR."
	 Escribir " Opcion 4: Salir."
	 leer opciom
	 //Proceso 
	 suma=0
	 Segun opciom Hacer
		1:
			escribir " Usted selecciono la estructura Para."
			Para p<-1 Hasta 100 Con Paso 1 Hacer
				suma = suma + p
			Fin Para
			Escribir " La suma de los numeros es: " suma
		2:
			escribir " Usted selecciono la estructura Mientras."
			Mientras mientra <= 100 Hacer
				suma = mientra + suma
				mientra = mientra +1
			Fin Mientras
			escribir " La suma de los numeros es: " suma
		3:
			escribir " Usted selecciono la estructura Repetir."
			Repetir
				suma = repeti + suma
				repeti= repeti + 1
			Hasta Que repeti > 100
			Escribir " La suma de los numeros es: " suma
		4:
			Escribir " Gracias por utilizar el programa, vuelva pronto."
		De Otro Modo:
			Escribir " El numero ingresado no es una opcion valida."
	 Fin Segun
 Hasta Que opciom == 4
 
FinAlgoritmo
