Algoritmo Descuento
	
	//Definicion de VAriables
	
	Definir producto Como Caracter
	Definir unidades Como Entero
	Definir iva Como Real
	Definir monto_bruto Como Real
	Definir monto_base Como Real
	Definir monto_final Como Real
	Definir monto_pago Como Real
	Definir descontar Como Real
	
	//Entrada de Datos
	
	Limpiar Pantalla
	
	Mostrar "Producto a Comprar:" Sin Saltar
	Leer producto
	Mostrar ""
	
	Mostrar "Costo Base del Producto:" Sin Saltar
	Leer monto_base
	Mostrar ""
	
	Mostrar "Cantidad de Articulos a Comprar:" Sin Saltar
	Leer unidades
	Mostrar ""
	
	Esperar 1 Segundos
	Mostrar "Procesando Orden de Compra"
	Esperar 1 Segundos
	Mostrar ""
	Mostrar "Presione Cualquier Tecla para Continuar"
	Esperar Tecla
	Esperar 1 Segundos
	
	//Calculo de los Procesos
	
	monto_bruto = monto_base * unidades
	iva = monto_bruto * 0.15
	monto_final = monto_bruto + iva
	si monto_final >= 50000 Entonces
		descontar = monto_final * 0.05
		sino descontar = monto_final * 0.02
			
	FinSi
	monto_pago = monto_final - descontar
	
	//Salida de Informacion
	
	Limpiar Pantalla
	Esperar 1 Segundos
	
	Mostrar "Factura de Compra"
	Mostrar ""
	Mostrar "Articulo: " producto
	Mostrar "Precio Base: " monto_base
	Mostrar "Cantidad: " unidades
	Mostrar ""
	Mostrar "Precio Bruto de la Transaccion: " monto_bruto
	Mostrar "I.V.A.: " iva
	Mostrar "Precio Neto: " monto_final
	Mostrar "Su Descuento es: " descontar
	Mostrar ""
	Mostrar "Precio a Pagar: " monto_pago
	Mostrar ""
	Mostrar "Gracias por Escoger AlbornozInc para sus Compras"
	
FinAlgoritmo
