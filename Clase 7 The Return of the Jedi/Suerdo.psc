SubProceso comision_autos(cantidad_autos, comision1 Por Referencia)
	comision1 = 100000 * cantidad_autos
	Mostrar "Comision por Autos Vendidos: " comision1 "§"
FinSubProceso

SubProceso comision_ventas(cantidad_autos, coste_auto, comision2 Por Referencia)
	Definir ventas Como Real
	ventas = cantidad_autos * coste_auto
	comision2 = ventas * 0.18
	Mostrar "Valor Total de Ventas: " ventas "§"
	Mostrar "Comision por Ventas: " comision2 "§"
FinSubProceso

SubProceso sueldo_neto(sueldo_base, comision1, comision2)
	Definir sueldo Como Real
	sueldo = sueldo_base + comision1 + comision2
	Mostrar ""
	Mostrar "Sueldo Neto: " sueldo "§"
	Mostrar ""
FinSubProceso

Algoritmo Suerdo
	
	Limpiar Pantalla
	
	//Definicion de Variables
	
	Definir cantidad_autos Como Entero
	Definir coste_auto Como Real
	Definir nombre Como Caracter
	Definir sueldo_base Como Real
	
	//Entrada de Datos
	
	Mostrar "Nombre del Vendedor:" Sin Saltar
	Leer nombre
	Mostrar ""
	
	Mostrar "Coste Promedio de los Autos Vendidos:" Sin Saltar
	Leer coste_auto
	
	Mostrar "Cantidad de Autos Vendida:" Sin Saltar
	Leer cantidad_autos
	
	//Calculo de los Procesos
	
	sueldo_base = 700000

	//Salida de Datos
	
	Mostrar "Sueldo Base: " sueldo_base "§"
	Mostrar ""
	
	comision_ventas(cantidad_autos, coste_auto, comision2)
	comision_autos(cantidad_autos, comision1)
	sueldo_neto(sueldo_base, comision1, comision2)
	
FinAlgoritmo
