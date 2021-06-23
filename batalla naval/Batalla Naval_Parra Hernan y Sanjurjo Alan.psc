Algoritmo BatallaNaval
    //Sanjurjo Alan y  Parra Hernan
    Definir portaAviones, acorazado, submarino, totalBarcos,vidas, agregarBarco, totalBarcosDestruidos Como Entero
	Definir filaAzar, columnaAzar, numeroColumna, numeroFila Como Entero
	Definir nombreUsuario Como Caracter
    Definir rendirse, ganar, cancelar, salir Como Logico
	//tamaño de los barcos
    portaAviones <- 6
    acorazado <- 4
    submarino <- 5
	lancha <- 3
	
    totalBarcos <- 0
    totalBarcosDestruidos <- 0
	vidas<- 5
	ganar<-Falso
	cancelar<- Falso
	numeroFila <- 0
	rendirse<-Falso
	//titulo
	Escribir " Precionar una tecla "
    Esperar Tecla
    Dimension logo[22]
    logo[1] <-  " 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 "
    logo[2] <-  " 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 "
    logo[3] <-  " 1                                                                                                                                     1 "
    logo[4]  <- " 1                11111111111111      1111111111  111111111111111111  1111111111  1111          1111          1111111111               1 "
    logo[5]  <- " 1                1111      1111      1111111111  111111111111111111  1111111111  1111          1111          1111111111               1 "
    logo[6]  <- " 1                1111       111111   1111  1111         1111         1111  1111  1111          1111          1111  1111               1 "
    logo[7]  <- " 1                111111111111111111  1111111111         1111         1111111111  1111          1111          1111111111               1 "
    logo[8]  <- " 1                111111111111111111  1111111111         1111         1111111111  1111          1111          1111111111               1 "
    logo[9]  <- " 1                1111       111111   1111  1111         1111         1111  1111  1111          1111          1111  1111               1 "
    logo[10] <- " 1                1111      11111     1111  1111         1111         1111  1111  111111111111  111111111111  1111  1111               1 "
    logo[11] <- " 1                11111111111111      1111  1111         1111         1111  1111  111111111111  111111111111  1111  1111               1 "
    logo[12] <- " 1                                                                                                                                     1 "
    logo[13] <- " 1                                                                                                                                     1 "
    logo[14] <- " 1                                   111111        111  11111111  111           111  11111111  111                                     1 "
    logo[15] <- " 1                                   111 111       111  11111111   111         111   11111111  111                                     1 "
    logo[16] <- " 1                                   111   111     111  111  111    111       111    111  111  111                                     1 " 
    logo[17] <- " 1                                   111     111   111  11111111     111     111     11111111  111                                     1 " 
    logo[18] <- " 1                                   111       111 111  111  111      111   111      111  111  11111111                                1 "
    logo[19] <- " 1                                   111           111  111  111       111111        111  111  11111111                                1 "
    logo[20] <- " 1                                                                                                                                     1 "
    logo[21] <- " 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 "
    logo[22] <- " 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 "
    Para i <-1 Hasta 22 Hacer
        Borrar Pantalla
        Escribir ""
    FinPara
    Para i<-1 Hasta 22 Hacer
        Borrar Pantalla
        Para j<-i Hasta 22 Hacer
            Escribir ""
        FinPara
        Para j<-1 Hasta 22 Hacer
            Escribir logo[j]
        FinPara
        si i>1 Entonces
            Escribir ""
        FinSi
        Esperar 200 Milisegundos
    FinPara
	//reglas
	
	escribir " Reglas del juego: "
	Escribir " **********************************************************************************************************************************************************************************   "
    Escribir " *                                                                  *Reglas de Batalla Naval*                                                                                     *   "
    Escribir " **********************************************************************************************************************************************************************************   "
    Escribir " *     1_ EL juego consiste en hundir los barcos que la PC acomoda aleatoriamente en el tablero.                                                                                  *   "
    Escribir " **********************************************************************************************************************************************************************************   "
    Escribir " *     2_ En caso de no Hundir ningun objetivo perdera sus vidas, caso contrario usted ganara el juego.                                                                           *   "
    Escribir " **********************************************************************************************************************************************************************************   "
    Escribir " *     3_ Si desea rendirse debe presionar la teclas R Mayúscula.                                                                                                                 *   "
    Escribir " **********************************************************************************************************************************************************************************   "
    Escribir " *     4_ El submarino ocupa un total de 5 casillas del tabelro, El acorazado ocupa 4 casillas, la lancha ocupa solo 2 casillas y por ultimo el portaviones que ocupa 6 casillas. *   "
    Escribir " **********************************************************************************************************************************************************************************   "
    Escribir " *     5_ Al momento de agregar los barcos al mapa tener en cuenta el tamaño del mismo, ya que algunos son demasiado grandes para dicho mapa.                                     *   "
    Escribir " **********************************************************************************************************************************************************************************   "
	Escribir ""
	Escribir " Presione cualquier tecla para terminar de leer las reglas."
	Esperar tecla
	
	Borrar Pantalla
	//inicio
    Escribir " Hola, escribe tu nombre"
    Leer nombreUsuario
    Escribir " Hola ",nombreUsuario," Jugaremos batalla naval, ¿que tan grande quieres el mapa?." 
	escribir " Ingrese fila y columna, ejemplo 8x9, donde 8 es fila y 9 la columna."
    Leer tamanoMapa
	
	//creacion del mapa
	Para i<-1 Hasta Longitud(tamanoMapa) Hacer
		Si Subcadena(tamanoMapa,i,i)='X' O Subcadena(tamanoMapa,i,i)='x' Entonces
			filas <- Subcadena(tamanoMapa,0,i-1)
			columnas <- Subcadena(tamanoMapa,i+1,Longitud(tamanoMapa))
		FinSi
	FinPara
	Para i<-0 Hasta Longitud(filas) Hacer
		Segun Subcadena(filas,i,i)  Hacer
			'0':
				numeroFila <- numeroFila*10+0
			'1':
				numeroFila <- numeroFila*10+1
			'2':
				numeroFila <- numeroFila*10+2
			'3':
				numeroFila <- numeroFila*10+3
			'4':
				numeroFila <- numeroFila*10+4
			'5':
				numeroFila <- numeroFila*10+5
			'6':
				numeroFila <- numeroFila*10+6
			'7':
				numeroFila <- numeroFila*10+7
			'8':
				numeroFila <- numeroFila*10+8
			'9':
				numeroFila <- numeroFila*10+9
		FinSegun
	FinPara
	Para i<-1 Hasta Longitud(columnas) Hacer
		Segun Subcadena(columnas,i,i)  Hacer
			'0':
				numeroColumna <- numeroColumna*10+0
			'1':
				numeroColumna <- numeroColumna*10+1
			'2':
				numeroColumna <- numeroColumna*10+2
			'3':
				numeroColumna <- numeroColumna*10+3
			'4':
				numeroColumna <- numeroColumna*10+4
			'5':
				numeroColumna <- numeroColumna*10+5
			'6':
				numeroColumna <- numeroColumna*10+6
			'7':
				numeroColumna <- numeroColumna*10+7
			'8':
				numeroColumna <- numeroColumna*10+8
			'9':
				numeroColumna <- numeroColumna*10+9
		FinSegun
	FinPara
	
	//filas y columnas
	Escribir "Filas: ",numeroFila
	Escribir "Columnas: ",numeroColumna
	
	Dimension mapa[numeroFila, numeroColumna]
	Dimension mapaDisparos[numeroFila, numeroColumna]
	
	Para contadorFila<-1 Hasta numeroFila Hacer
		Para contadorColumna<-1 Hasta numeroColumna Hacer
			mapa[contadorFila,contadorColumna]<-'O'
			mapaDisparos[contadorFila,contadorColumna]<-'O'
		FinPara
	FinPara
	
	//agregar porta aviones
	Escribir " ¿Desea agregar el porta aviones?, ingrese 1 para SI, ingrese cualquier numero para NO."
	Escribir ""
	leer agregarBarco
	si agregarBarco = 1 Entonces
		Mientras salir=Falso Hacer
			cancelar <- Falso
			//lugar alazar
			filaAzar <- azar(numeroFila)+1
			columnaAzar <- azar(numeroColumna)+1
			Si filaAzar<numeroFila-6 Y columnaAzar<numeroColumna-1 Entonces
				Para i<-filaAzar Hasta filaAzar+6-1 Hacer
					Para i2<-columnaAzar Hasta columnaAzar+1-1 Hacer
						Si mapa[i,i2]<>'O' Entonces
							cancelar <- Verdadero
						FinSi
					FinPara
				FinPara
				Si cancelar=Falso Entonces
					Para i<-filaAzar Hasta filaAzar+6-1 Hacer
						Para i2<-columnaAzar Hasta columnaAzar+1-1 Hacer
							Si mapa[i,i2]='O' Entonces
								mapa[i,i2]<-'P'
								salir <- Verdadero
							FinSi
						FinPara
					FinPara
				FinSi
			FinSi
		FinMientras
		Escribir " Porta Aviones agregado."
		Escribir ""
		totalBarcos <- totalBarcos+1
	SiNo
		escribir " No agrego el porta aviones."
		Escribir ""
	FinSi
	
	//agregrar submarino
	Escribir " ¿Desea agregar el submarino?, ingrese 1 para SI, ingrese cualquier numero para NO."
	Escribir ""
	leer agregarBarco
	si agregarBarco = 1 Entonces
		Mientras salir=Falso Hacer
			cancelar <- Falso
			filaAzar <- azar(numeroFila)+1
			columnaAzar <- azar(numeroColumna)+1
			Si filaAzar<numeroFila-5 Y columnaAzar<numeroColumna-4 Entonces
				Para i<-filaAzar Hasta filaAzar+5-1 Hacer
					Para i2<-columnaAzar Hasta columnaAzar+4-1 Hacer
						Si mapa[i,i2]<>'O' Entonces
							cancelar <- Verdadero
						FinSi
					FinPara
				FinPara
				Si cancelar=Falso Entonces
					Para i<-filaAzar Hasta filaAzar+5-1 Hacer
						Para i2<-columnaAzar Hasta columnaAzar+4-1 Hacer
							Si mapa[i,i2]='O' Entonces
								mapa[i,i2]<-'S'
								salir <- Verdadero
							FinSi
						FinPara
					FinPara
				FinSi
			FinSi
		FinMientras
		Escribir " Submarino agregado."
		Escribir ""
		totalBarcos <- totalBarcos+1
	SiNo
		escribir " No agrego el Submarino."
		Escribir ""
	FinSi
	//agregar lancha
	Escribir " ¿Desea agregar la lancha?, ingrese 1 para SI, ingrese cualquier numero para NO."
	Escribir ""
	leer agregarBarco
	si agregarBarco = 1 Entonces
		Mientras salir=Falso Hacer
			cancelar <- Falso
			filaAzar <- azar(numeroFila)+1
			columnaAzar <- azar(numeroColumna)+1
			Si filaAzar<numeroFila-1 Y columnaAzar<numeroColumna-3 Entonces
				Para i<-filaAzar Hasta filaAzar+1-1 Hacer
					Para i2<-columnaAzar Hasta columnaAzar+3-1 Hacer
						Si mapa[i,i2]<>'O' Entonces
							cancelar <- Verdadero
						FinSi
					FinPara
				FinPara
				Si cancelar=Falso Entonces
					Para i<-filaAzar Hasta filaAzar+1-1 Hacer
						Para i2<-columnaAzar Hasta columnaAzar+3-1 Hacer
							Si mapa[i,i2]='O' Entonces
								mapa[i,i2]<-'L'
								salir <- Verdadero
							FinSi
						FinPara
					FinPara
				FinSi
			FinSi
		FinMientras
		Escribir " Lancha agregada."
		Escribir ""
		totalBarcos <- totalBarcos+1
	SiNo
		escribir " No agrego la lancha."
		Escribir ""
	FinSi
	//agregar acorazado
	Escribir " ¿Desea agregar el acorazado?, ingrese 1 para SI, ingrese cualquier numero para NO."
	Escribir ""
	leer agregarBarco
	si agregarBarco = 1 Entonces
		Mientras salir=Falso Hacer
			cancelar <- Falso
			filaAzar <- azar(numeroFila)+1
			columnaAzar <- azar(numeroColumna)+1
			Si filaAzar<numeroFila-2 Y columnaAzar<numeroColumna-2 Entonces
				Para i<-filaAzar Hasta filaAzar+2-1 Hacer
					Para i2<-columnaAzar Hasta columnaAzar+2-1 Hacer
						Si mapa[i,i2]<>'O' Entonces
							cancelar <- Verdadero
						FinSi
					FinPara
				FinPara
				Si cancelar = Falso Entonces
					Para i<-filaAzar Hasta filaAzar + 2 - 1 Hacer
						Para i2<-columnaAzar Hasta columnaAzar + 2 - 1 Hacer
							Si mapa[i,i2]='O' Entonces
								mapa[i,i2]<-'A'
								salir <- Verdadero
							FinSi
						FinPara
					FinPara
				FinSi
			FinSi
		FinMientras
		Escribir "acorazado agregado."
		Escribir ""
		totalBarcos <- totalBarcos+1
	SiNo
		escribir " No agrego el acorazado."
		Escribir ""
	FinSi
	//fin agregar barcos
	Escribir " Presione cualquier tecla para continuar"
	Esperar Tecla
	Limpiar Pantalla
	escribir " Ahora empieza el juego jugador: " nombreUsuario 
	Escribir " PREPARADO?."
	escribir " Debera disparar utilizando coordenadas, ejemplo 2x8 donde 2 es la fila y 8 la columna."
	Escribir " Ejecute su disparo: "
	
	Mientras ganar=Falso Hacer
		numeroFilaDisparo<-0
		numeroFilaDisparo<-0
		leer disparoUsuario
		//disparo por error al precionar enter
		si disparoUsuario = "" Entonces
			disparoUsuario<- "1000x1000"
		FinSi
		//rendirse
		si disparoUsuario = 'R' Entonces
			ganar<- Verdadero
			rendirse<-Verdadero
		FinSi
		//aca
		si ganar <> Verdadero Entonces
			//provicional 
			Si disparoUsuario='M' Entonces
				Escribir " Mostrando mapa"
				// Se muestra mapa con la M
				Para contadorFila<-1 Hasta numeroFila Hacer
					Para contadorColumna<-1 Hasta numeroColumna Hacer
						mapaUbicacionDisparo <- mapaUbicacionDisparo + mapa[contadorFila,contadorColumna] + '  '
					FinPara
					Escribir mapaUbicacionDisparo
					mapaUbicacionDisparo <- ""
				FinPara
				Escribir " Escribe de nuevo las coordenadas"
				Leer disparoUsuario
			FinSi
			//ingresar x minuscula o X mayuscula
			Para i<-0 Hasta Longitud(disparoUsuario) Hacer
				Si Subcadena(disparoUsuario,i,i)='X' O Subcadena(disparoUsuario,i,i)='x' Entonces
					filaDisparar <- Subcadena(disparoUsuario,0,i-1)
					columnaDisparar <- Subcadena(disparoUsuario,i+1,Longitud(disparoUsuario))
				FinSi
			FinPara
			//mapa de disparos
			Para i<-0 Hasta Longitud(filaDisparar) Hacer
				Segun Subcadena(filaDisparar,i,i)  Hacer
					'0':
						numeroFilaDisparar <- numeroFilaDisparar*10+0
					'1':
						numeroFilaDisparar <- numeroFilaDisparar*10+1
					'2':
						numeroFilaDisparar <- numeroFilaDisparar*10+2
					'3':
						numeroFilaDisparar <- numeroFilaDisparar*10+3
					'4':
						numeroFilaDisparar <- numeroFilaDisparar*10+4
					'5':
						numeroFilaDisparar <- numeroFilaDisparar*10+5
					'6':
						numeroFilaDisparar <- numeroFilaDisparar*10+6
					'7':
						numeroFilaDisparar <- numeroFilaDisparar*10+7
					'8':
						numeroFilaDisparar <- numeroFilaDisparar*10+8
					'9':
						numeroFilaDisparar <- numeroFilaDisparar*10+9
				FinSegun
			FinPara
			Para i<-0 Hasta Longitud(columnaDisparar) Hacer
				Segun Subcadena(columnaDisparar,i,i)  Hacer
					'0':
						numeroColumnaDisparar <- numeroColumnaDisparar*10+0
					'1':
						numeroColumnaDisparar <- numeroColumnaDisparar*10+1
					'2':
						numeroColumnaDisparar <- numeroColumnaDisparar*10+2
					'3':
						numeroColumnaDisparar <- numeroColumnaDisparar*10+3
					'4':
						numeroColumnaDisparar <- numeroColumnaDisparar*10+4
					'5':
						numeroColumnaDisparar <- numeroColumnaDisparar*10+5
					'6':
						numeroColumnaDisparar <- numeroColumnaDisparar*10+6
					'7':
						numeroColumnaDisparar <- numeroColumnaDisparar*10+7
					'8':
						numeroColumnaDisparar <- numeroColumnaDisparar*10+8
					'9':
						numeroColumnaDisparar <- numeroColumnaDisparar*10+9
				FinSegun
			FinPara
			
			Borrar Pantalla
			//mostrar estadisticas
			Si numeroFilaDisparar <= numeroFila Y numeroColumnaDisparar <= numeroColumna Entonces
				Si mapa[numeroFilaDisparar,numeroColumnaDisparar] = mapaDisparos[numeroFilaDisparar,numeroColumnaDisparar] Entonces
					mensajeAtaque <- "Disparo en el agua"
					mapaDisparos[numeroFilaDisparar, numeroColumnaDisparar]<-'/'
				SiNo
					Segun mapa[numeroFilaDisparar, numeroColumnaDisparar]  Hacer
						'S':
							Si mapaDisparos[numeroFilaDisparar, numeroColumnaDisparar] <> '*' Y mapaDisparos[numeroFilaDisparar, numeroColumnaDisparar]<>'/' Entonces
								mapaDisparos[numeroFilaDisparar,numeroColumnaDisparar]<-'*'
								submarino <- submarino-1
								Si submarino=0 Entonces
									mensajeAtaque <- " Felicitaciones!!! Hundio el Submarino, por favor presione enter para actualizar estadisticas."
									totalBarcosDestruidos <- totalBarcosDestruidos+1
								SiNo
									mensajeAtaque <- " Ataco al Submarino."
								FinSi
							SiNo
								mensajeAtaque <- " Ya ataco estas coordenadas."
							FinSi
						'P':
							Si mapaDisparos[numeroFilaDisparar, numeroColumnaDisparar] <> '*' Y mapaDisparos[numeroFilaDisparar, numeroColumnaDisparar]<>'/' Entonces
								mapaDisparos[numeroFilaDisparar,numeroColumnaDisparar]<-'*'
								portaAviones <- portaAviones-1
								Si portaAviones=0 Entonces
									mensajeAtaque <- " Felicitaciones!!! Hundio el barco Porta Aviones, por favor presione enter para actualizar estadisticas."
									totalBarcosDestruidos <- totalBarcosDestruidos+1
								SiNo
									mensajeAtaque <- " Ataco al Porta Aviones."
								FinSi
							SiNo
								mensajeAtaque <- " Ya ataco estas coordenadas."
							FinSi
						'A':
							Si mapaDisparos[numeroFilaDisparar, numeroColumnaDisparar] <> '*' Y mapaDisparos[numeroFilaDisparar, numeroColumnaDisparar]<>'/' Entonces
								mapaDisparos[numeroFilaDisparar,numeroColumnaDisparar]<-'*'
								acorazado <- acorazado-1
								Si acorazado=0 Entonces
									mensajeAtaque <- "  Felicitaciones!!! Hundio el barco Acorazado, por favor presione enter para actualizar estadisticas."
									totalBarcosDestruidos <- totalBarcosDestruidos+1
								SiNo
									mensajeAtaque <- " Ataco al Acorazado."
								FinSi
							SiNo
								mensajeAtaque <- " Ya ataco estas coordenadas."
							FinSi
						'L':
							Si mapaDisparos[numeroFilaDisparar, numeroColumnaDisparar] <> '*' Y mapaDisparos[numeroFilaDisparar, numeroColumnaDisparar]<>'/' Entonces
								mapaDisparos[numeroFilaDisparar,numeroColumnaDisparar]<-'*'
								lancha <- lancha-1
								Si lancha=0 Entonces
									mensajeAtaque <- " Felicitaciones!!! Hundio el barco Lancha, por favor presione enter para actualizar estadisticas."
									totalBarcosDestruidos <- totalBarcosDestruidos+1
								SiNo
									mensajeAtaque <- " Ataco a Lancha."
								FinSi
							SiNo
								mensajeAtaque <- " Ya atacaste este punto."
							FinSi
						De Otro Modo:
							mensajeAtaque <- " Coordenadas ingresadas incorrecta, ejemplo 2x2."
					FinSegun
				FinSi
			SiNo
				Si numeroFilaDisparar<>1000 Y numeroColumnaDisparar<>1000 Entonces
					mensajeAtaque <- " Coordenadas ingresadas no corresponden al tamaño del mapa."
				SiNo
					mensajeAtaque <- " Enter presionado, digite coordenadas, ejemplo FILAxCOLUMNA."
				FinSi
			FinSi
			si submarino=0 Entonces
				Escribir " Felicitaciones!!! Hundiste el submarino."
			FinSi
			Si lancha=0 Entonces
				Escribir " Felicitaciones!!! Hundiste la Lancha."
			FinSi
			Si acorazado=0 Entonces
				Escribir " Felicitaciones!!! Hundiste el barco Acorazado." 
			FinSi
			Si portaAviones=0 Entonces
				Escribir " Felicitaciones!!! Hundiste el barco Porta Aviones."
			FinSi
			Escribir ""
			Escribir ubicacionCoordenadas
			Escribir ""
			//se muestra disparos en el mapa
			ubicacionCoordenadas <- ''
			Para contadorFila<-1 Hasta numeroFila Hacer
				Para contadorColumna<-1 Hasta numeroColumna Hacer
					mapaUbicacionDisparo <- mapaUbicacionDisparo + mapaDisparos[contadorFila,contadorColumna]+'  '
					Si Longitud(ConvertirATexto(contadorColumna))>1 Entonces
						ubicacionCoordenadas <- ubicacionCoordenadas+ConvertirATexto(contadorColumna)+' '
					SiNo
						ubicacionCoordenadas <- ubicacionCoordenadas+ConvertirATexto(contadorColumna)+'  '
					FinSi
				FinPara
				Si contadorFila=1 Entonces
					Escribir Concatenar("     ",ubicacionCoordenadas)
					Escribir ""
				FinSi
				Si Longitud(ConvertirATexto(contadorFila))>1 Entonces
					Escribir Concatenar(Concatenar(ConvertirATexto(contadorFila),'   '),mapaUbicacionDisparo)
				SiNo
					Escribir Concatenar(Concatenar(ConvertirATexto(contadorFila),'    '),mapaUbicacionDisparo)
				FinSi
				mapaUbicacionDisparo <- ""
			FinPara
			Escribir ""
			Si totalBarcos=totalBarcosDestruidos Entonces
				ganar <- Verdadero
				Escribir " Precionar una tecla "
				Esperar Tecla
				Dimension logo[13]
				logo[1]<-  "                                                                                                                                                  "
				logo[2]<-  "                                                                                                                                                  "
				logo[3]<-  "                                                                                                                                                  "
				logo[4]<-  "                                                                                                                                                  "  
				logo[5]<-  "                         000   000  00000000 000000000       00000000   00000000 00000        000  00000000  000000    000000000                  "
				logo[6]<-  "                         0000  000  00000000 000           0         0  00000000 00000        000  00000000  000   0   000000000                  "
				logo[7]<-  "                         000000000  000  000   000        0             000  000 000  00      000  000  000  000    0  000   000                  "
				logo[8]<-  "                         000000000  00000000     000      0      00000  00000000 000    00    000  00000000  000    0  000   000                  "
				logo[9]<-  "                         000   000  000  000        000   0          0  000  000 000      00  000  000  000  000   0   000000000                  "
				logo[10]<- "                         000   000  000  000  000000000    0000000000   000  000 000        00000  000  000  000000    000000000                  "
				logo[11]<- "                                                                                                                                                  "
				logo[12]<- "                                                                                                                                                  "
				logo[13]<- "                                                                                                                                                  "
				Para i <-1 Hasta 13 Hacer
					Borrar Pantalla
					Escribir ""
				FinPara
				Para i<-1 Hasta 13 Hacer
					Borrar Pantalla
					Para j<-i Hasta 13 Hacer
						Escribir ""
					FinPara
					Para j<-1 Hasta 13 Hacer
						Escribir logo[j]
					FinPara
					si i>1 Entonces
						Escribir ""
					FinSi
					Esperar 200 Milisegundos
				FinPara
				Escribir " Lograste hundir la flota, tus estadisticas son: "
				Escribir " Cantidad de barcos hundidos: " + ConvertirATexto(totalBarcosDestruidos)
			SiNo
				Escribir mensajeAtaque
			FinSi
			Si rendirse=Verdadero Entonces
				Escribir " Game Over."
			FinSi
		FinSi
	Fin Mientras
	
FinAlgoritmo// fin del main

	//crear mapa disparos
	
	