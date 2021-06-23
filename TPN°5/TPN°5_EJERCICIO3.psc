//Sanjurjo_Alan
//TP5_EJERCICIO3
//Implemente un programa con subprogramas que, leyendo el nombre de tres alumnos 
//y la nota obtenida por cada uno en una asignatura, muestre por pantalla la media de las notas.

Algoritmo promedio_alumnos
	definir nombre_alumno, nombre_alumno2, nombre_alumno3 Como caracter
	Definir contador Como Entero
	Repetir
		
		//alumno 1
		Escribir " Ingrese el nombre del alumno: "
		leer nombre_alumno
		promedi_alumnos()
		Escribir ""
		
		//alumno 2
		Escribir " Ingrese el nombre del alumno: "
		leer nombre_alumno2
		promedi_alumnos()
		Escribir ""
		
		//alumno 3
		Escribir " Ingrese el nombre del alumno: "
		leer nombre_alumno3
		promedi_alumnos() 
		Escribir ""
		
		contador = contador +1
	Hasta Que contador = 1
	
FinAlgoritmo//fin del main

	Funcion promedi_alumnos()
		acumulador <- 0
		
		Escribir " ingrese la cantidad de notas a promediar: "
		leer cantidad_notas
		
		Para i<-1 Hasta cantidad_notas Con Paso 1 Hacer
			Escribir " Ingrese la nota " ,i, " : "
			leer notas_alumnos
			Escribir ""
			acumulador <- notas_alumnos + acumulador
			
		Fin Para
			promedio = acumulador / cantidad_notas
		Escribir " El promedio del alumno es: " promedio
		Escribir ""
		si promedio >= 6 Entonces
			Escribir "*******************************"
			Escribir " El alumno aprobo la materia."
			Escribir "*******************************"
		SiNo
			Escribir "*********************************"
			Escribir " El alumno desaprobo la materia."
			Escribir "*********************************"
		FinSi
		
	FinFuncion

