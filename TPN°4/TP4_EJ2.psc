Algoritmo numeros_aleatorios
    definir arreglo_aleatorio, posicion, tamanio_arreglo Como Entero
	tamanio_arreglo = 20
    Dimension arreglo_aleatorio[tamanio_arreglo]
	
    Escribir " Se buscara un numero en un arreglo de 20 numeros aleatorios."
	Escribir ""
    posicion=0
    encontro_numero = Falso
	
    Para i<-0 Hasta tamanio_arreglo-1 Con Paso 1 Hacer
        posicion = posicion + 1
        arreglo_aleatorio[i] = Aleatorio(0,100)
        Escribir " Posicion " "[",posicion,"]" ", Numero: " arreglo_aleatorio[i]
    Fin Para
	
    numero_buscar = Aleatorio(0,100)
	
    Para k<-0 Hasta tamanio_arreglo-1 Con Paso 1 Hacer
		Si arreglo_aleatorio[k] == numero_buscar Entonces
			posicion = k
			encontro_numero = Verdadero
		Fin Si
	Fin Para
	Si (encontro_numero) Entonces
		Escribir ""
		escribir " Se encontro el numero: " "[",numero_buscar,"]" " en la posicion: " posicion
	SiNo
		Escribir ""
		Escribir " No se encontro el " "[",numero_buscar,"]" " numero en ninguna posicion."
	Fin Si
	
	
FinAlgoritmo