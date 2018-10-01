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
	Mostrar ""
	
	Esperar 1 Segundos
	Mostrar ""
	
	Mostrar "Datos de su Grupo"
	
	//Calculo de Datos
	
	boleto_general = 200
	boleto_bebe = 0
	boleto_niño1 = boleto_general * 0.5
	boleto_niño2 = boleto_general * 0.8
	boleto_anciano = boleto_general * 0.7
	
	Si cantidad_personas <= 0 Entonces
		cantidad_invalida = Verdadero
	FinSi
	
	Para i<-1 Hasta cantidad_personas Con Paso 1 Hacer
		x = x + 1
		Mostrar ""
		Mostrar "Persona Numero " x
		Mostrar ""
		Mostrar "Edad:" Sin Saltar
		Leer edad
		Mostrar ""
		Mostrar "Genero (F/M):" Sin Saltar
		Leer genero
		genero = Minusculas(genero)
		Si edad > 0 Entonces
			Si genero = "f" O genero = "m" Entonces
				Si edad < 2 Entonces
					total = total + boleto_bebe
				  Sino
					Si edad < 6 Entonces
					total = total + boleto_niño1
					  Sino
						Si edad < 11 Entonces
							total = total + boleto_niño2
							Sino
								Si (edad > 55) Y (genero = "m") Entonces
										total = total + boleto_anciano
									Sino
										Si (edad > 60) Y (genero = "h") Entonces
											total = total + boleto_anciano
										Sino
											total = total + boleto_general
										FinSi
								FinSi
						FinSi
					FinSi
				FinSi
			 Sino
				genero_invalido = Verdadero
			FinSi
		Sino
			edad_invalida = Verdadero
		FinSi
	Fin Para
	
	//Salida de Informacion
	
	
		Mostrar "Coste Total de Compra: " total "§"
		Mostrar ""
		Mostrar "Disfrute de la Funcion!"
	
	
FinAlgoritmo
