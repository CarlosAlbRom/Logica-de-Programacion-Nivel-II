Algoritmo Comision
	
	//Definicion de Variables
	
	Definir nombre Como Caracter
	Definir monto_ventas Como Real
	Definir monto_valido Como Logico
	Definir años Como Entero
	Definir comision_venta Como Real
	Definir comision_8_plus Como Real
	Definir extra Como Real
	
	//Entrada de Datos
	
	Mostrar "Nombre del Empleado:" Sin Saltar
	Leer nombre
	Mostrar ""
	
	Mostrar "Monto de las Ventas:" Sin Saltar
	Leer monto_ventas
	Mostrar ""
	
	Mostrar "Años de Servicio:" Sin Saltar
	Leer años
	Mostrar ""
	
	Esperar 1 Segundos
	Mostrar "Procesando Recibo de Pago"
	Esperar 1 Segundos
	Mostrar ""
	Mostrar "Presione Cualquier Tecla para Continuar"
	Esperar Tecla
	Esperar 1 Segundos
	Limpiar Pantalla
	Esperar 1 Segundos
	
	//Calculo de los Procesos
	
	Si (monto_ventas >= 0) Entonces
		Si (monto_ventas < 50000) Entonces comision_venta = monto_ventas * 0.05
			porcentaje = 5
		sino
			si (monto_ventas >= 70000) y (monto_ventas < 200000) Entonces comision_venta = monto_ventas * 0.07
				porcentaje = 7
			Sino
				si (monto_ventas >= 900000) y (monto_ventas < 3000000) Entonces comision_venta = monto_ventas * 0.08
					porcentaje = 8
				Sino
					si (monto_ventas >= 3000000) y (monto_ventas < 5000000) Entonces comision_venta = monto_ventas * 0.09
						porcentaje = 9
					Sino
						si (monto_ventas >= 5000000) Entonces comision_venta = monto_ventas * 0.1
							porcentaje = 10
						Sino
							comision_venta = monto_ventas * 0.06
							porcentaje = 6
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Sino
		monto_invalido = Verdadero
	FinSi
	Si años >= 0 Entonces
		Si años>7 Entonces comision_8_plus = comision_venta * 2
			Si años>15 Entonces extra = (años - 15) * 5000
			FinSi
		FinSi
	Sino
		año_invalido = Verdadero
	FinSi
	comision_total = comision_8_plus + comision_venta + extra
	
	//Salida de Datos
	
	Si (año_invalido = Verdadero) O (monto_invalido = Verdadero) Entonces Mostrar "Error: Los Datos Ingresados NO son Validos"
	Sino
		Mostrar "Nombre del Empleado: " nombre
		Mostrar ""
		Mostrar "Monto de Venta: " monto_ventas "§"
		Mostrar ""
		Mostrar "Años de Servicio: " años
		Mostrar ""
		Mostrar "Comision Basica: " comision_venta "§"
		Mostrar "Comision por Antiguedad: " comision_8_plus "§"
		Mostrar "Extra por Antiguedad: " extra "§"
		Mostrar ""
		Mostrar "Comision Total a Pagar: " comision_total "§"
	FinSi
	
	Mostrar ""
	
FinAlgoritmo
