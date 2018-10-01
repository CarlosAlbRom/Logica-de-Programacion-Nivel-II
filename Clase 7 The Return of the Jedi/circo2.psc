SubProceso edad0a1()
	boleto_bebe = 0
	Mostrar "El Coste de su Boleto es: " boleto_bebe "§"
FinSubProceso

SubProceso edad2a5()
	boleto_niño1 = 100
	Mostrar "El Coste de su Boleto es: " boleto_niño1 "§"
FinSubProceso

SubProceso edad6a10()
	boleto_niño2 = 160
	Mostrar "El Coste de su Boleto es: " boleto_niño2 "§"
FinSubProceso

SubProceso edad55()
	Mostrar "Genero (H/M)" Sin Saltar
	Leer genero
FinSubProceso

SubProceso edadanciano()
	boleto_anciano = 140
	Mostrar "El Coste de su Boleto es: " boleto_anciano "§"
FinSubProceso

SubProceso edadgeneral()
	boleto_general = 200
	Mostrar "El Coste de su Boleto es: " boleto_general "§"
FinSubProceso

Algoritmo Circo
	
	//Definicion de Variables
	
	Definir edad, cantidad_personas, x Como Entero
	Definir boleto_general, boleto_bebe, boleto_niño1, boleto_niño2, boleto_anciano, total Como Real
	Definir genero Como Caracter
	Definir genero_invalido, edad_invalida, cantidad_invalida Como Logico
	
	//Entrada de Datos
	
	Limpiar Pantalla
	Mostrar "Bienvenido al Circo de los Hermanos Valentinos!"
	Mostrar ""
	
	Mostrar "Ingrese la Cantidad de Boletos a Comprar:" Sin Saltar
	Leer cantidad_personas
	
	Esperar 1 Segundos
	Mostrar ""
	
	Mostrar "Datos de su Grupo"
	
	//Calculo de Datos
	
	boleto_general = 200
	boleto_bebe = 0
	boleto_niño1 = 100
	boleto_niño2 = 160
	boleto_anciano = 140
	
	Si cantidad_personas <= 0 Entonces
		cantidad_invalida = Verdadero
	FinSi
	
	Para i<-0 Hasta cantidad_personas - 1 Con Paso 1 Hacer
		x = x + 1
		Mostrar ""
		Mostrar "Persona Numero " x
		Mostrar ""
		Mostrar "Edad:" Sin Saltar
		Leer edad
		Mostrar ""
		Si edad > 0 Entonces
			Si edad < 2 Entonces
				edad0a1()
				total = total + boleto_bebe
			Sino
				Si edad < 6 Entonces
					edad2a5()
					total = total + boleto_niño1
				Sino
					Si edad < 11 Entonces
						edad6a10
						total = total + boleto_niño2
					Sino
						Si edad > 55 Entonces
							Mostrar "Genero: (H/M):" Sin Saltar
							Leer genero
							genero = Minusculas(genero)
							Si genero = "h" O genero = "m" Entonces
								Si genero = "m" Entonces
									edadanciano()
									total = total + boleto_anciano
								Sino
									Si (edad > 60) Y (genero = "h") Entonces
										edadanciano()
										total = total + boleto_anciano
									Sino
										edadgeneral()
										total = total + boleto_general 
									FinSi
								FinSi
							Sino
								genero_invalido = Verdadero
							FinSi
						Sino
							edadgeneral()
							total = total + boleto_general 
						FinSi
					FinSi
				FinSi
			FinSi
		Sino
			edad_invalida = Verdadero
		FinSi
	Fin Para
	
	//Salida de Informacion
	
	Mostrar ""
	Si edad_invalida = Verdadero O cantidad_invalida = Verdadero O genero_invalido = Verdadero Entonces
		Mostrar "ERROR: LOS DATOS INGRESADOS NO SON VALIDOS"
		Mostrar "REINTENTE SU COMPRA"
	Sino
		Mostrar "Coste Total de Compra: " total "§"
		Mostrar ""
		Mostrar "Disfrute de la Funcion!"
		Mostrar ""
	FinSi
	
FinAlgoritmo
