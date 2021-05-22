Algoritmo arregloNumerosPrimos
	Definir tamanio_arreglo Como Entero
	tamanio_arreglo = 25
	Dimension arreglo_numeros_primos[tamanio_arreglo]
	indice_numeros_primos =0
	
	Para i<- 0 Hasta 100 Con Paso 1 Hacer
		contador = 0
		Para k<-1 Hasta i Con Paso 1 Hacer
			Si i MOD k = 0 Entonces
				contador = contador + 1
			Fin Si
		Fin Para
		
		Si contador == 2 Entonces
			arreglo_numeros_primos[indice_numeros_primos] <- i
			indice_numeros_primos = indice_numeros_primos + 1
		Fin Si
	Fin Para
	
	Para k<-0 Hasta tamanio_arreglo-1 Con Paso 1 Hacer
		Escribir " En la posicion " "[",k,"]" " se encuentra el numero primo: " arreglo_numeros_primos[k] 
	Fin Para
	
	
FinAlgoritmo
