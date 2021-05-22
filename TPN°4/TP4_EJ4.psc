Algoritmo  contraseña 
    Definir numeroAleatorio Como Entero
    definir Contrasena_generada Como Caracter
    Contrasena_generada = "";
	
    Dimension contrasena[14]

    Para i<-0 Hasta 14-1 Con Paso 1 Hacer
        numeroAleatorio = Aleatorio(0,9)
        contrasena[i] = numeroAleatorio
		Contrasena_generada <- Concatenar(Contrasena_generada, ConvertirATexto(numeroAleatorio))
    Fin Para
    escribir "La Contraseña Es: " Contrasena_generada
	
FinAlgoritmo
