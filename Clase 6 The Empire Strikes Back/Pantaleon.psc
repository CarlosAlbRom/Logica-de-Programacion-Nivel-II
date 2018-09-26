Algoritmo Pantalones
	
	//Definicion de Variables
	
	Definir cliente Como Caracter
	Definir tipo_pantalon Como Caracter
	Definir precio_unitario Como Real
	Definir precio_total Como Real
	Definir precio_bruto Como Real
	Definir precio_pago Como Real
	Definir unidades Como Entero
	
	//Entrada de Datos
	
	Mostrar "Nombre del Cliente:" Sin Saltar
	Leer cliente
	Mostrar ""
	
	Mostrar "Tipo del Pantalon (A/B/C):" Sin Saltar
	Leer tipo_pantalon
	Mostrar ""
	
	Mostrar "Cantidad de Unidades:" Sin Saltar
	Leer unidades
	Mostrar ""
	
	Esperar 1 Segundos
	Mostrar "Procesando Orden de Compra"
	Esperar 1 Segundos
	Mostrar ""
	Mostrar "Presione Cualquier Tecla para Continuar"
	Esperar Tecla
	Esperar 1 Segundos
	Limpiar Pantalla
	Esperar 1 Segundos
	
	//Calculo de los Procesos
	
	tipo_pantalon = Mayusculas(tipo_pantalon)
	Si tipo_pantalon="A" Entonces precio_unitario=141246.25
	Sino
		si tipo_pantalon="B" Entonces precio_unitario=96720
		Sino
			si tipo_pantalon="C" Entonces precio_unitario=58900
			Sino
				tipo_pantalon = "0"
			FinSi
		FinSi
	FinSi
	precio_bruto = precio_unitario * unidades
	iva = precio_bruto * 0.15
	precio_final = precio_bruto + iva
	descontar = precio_final * 0.05
	precio_pago = precio_final - descontar
	
	//Salida de Informacion
	
	si tipo_pantalon = "0" Entonces
		Mostrar "El Tipo de Pantalon Ingresado No es Valido"
		Mostrar ""
	Sino
		Mostrar "Cliente: " cliente
		Mostrar ""
		Mostrar "Tipo de Pantalon: " tipo_pantalon
		Mostrar "Precio Base: " precio_unitario "§"
		Mostrar "Cantidad: " unidades
		Mostrar ""
		Mostrar "Precio Bruto de la Transaccion: " precio_bruto "§"
		Mostrar "I.V.A.: " iva " §"
		Mostrar "Precio Neto: " precio_final "§"
		Mostrar "Su Descuento es: " descontar "§"
		Mostrar ""
		Mostrar "Precio a Pagar: " precio_pago "§"
		Mostrar ""
		Mostrar "Gracias por Escoger AlbornozInc para sus Compras"
	FinSi
	
FinAlgoritmo
