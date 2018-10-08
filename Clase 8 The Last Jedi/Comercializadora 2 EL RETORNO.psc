SubProceso leer_datos(articulo Por Referencia, precio_fab Por Referencia)
	Mostrar "Nombre del Articulo:" Sin Saltar
	Leer articulo
	Mostrar ""
	Mostrar "Precio de Fabricacion del Articulo:" Sin Saltar
	Leer precio_fab
	Mostrar ""
	Mostrar "Presione Cualquier Tecla para Continuar"
	Esperar Tecla
	Esperar .5 Segundos
	Limpiar Pantalla
	Mostrar "Calculando Precio. Espere un Momento"
	Esperar 1 Segundos
	Limpiar Pantalla
FinSubProceso
	
Funcion precio_base = calculo_base(precio_fab)
	precio_base = precio_fab * 1.25
FinFuncion

Funcion ganancia = calculo_ganancia(precio_fab)
	ganancia = precio_fab * 0.25
FinFuncion

Funcion comision = calculo_comision(precio_fab)
	comision = precio_fab * 0.2
FinFuncion

Funcion iva = calculo_iva(precio_base)
	iva = precio_base * 0.15
FinFuncion

Funcion precio_venta = calculo_precio(precio_base, iva)
	precio_venta = precio_base + iva
FinFuncion

SubProceso salida(nombre, precio_fab)
	Mostrar "Nombre del Articulo: " nombre
	Mostrar ""
	Si nombre = "La Pizza de Don Cangrejo"
		Mostrar "Es la Mejor, Para Ti Para Mi"
		Mostrar ""
	FinSi
	Mostrar "Precio de Fabricacion del Articulo: " precio_fab "§"
	precio_base=calculo_base(precio_fab) 
	Mostrar "Precio Base del Articulo: " precio_base "§"
	Mostrar "Ganancia del Articulo: " calculo_ganancia(precio_fab) "§"
	Mostrar ""
	Mostrar "Comision del Vendedor: " calculo_comision(precio_fab) "§"
	Mostrar ""
	iva = calculo_iva(precio_base)
	Mostrar "I.V.A: " iva "§"
	Mostrar "Precio de Venta del Articulo: " calculo_precio(precio_base, iva) "§"
	Esperar Tecla
FinSubProceso

Algoritmo Comercializadora_2_La_Resurrecion
	
	Definir nombre Como Caracter
	Definir precio_fab Como Real
	Definir precio_venta Como Real
	Definir iva Como Real
	Definir precio_base Como Real
	Definir ganancia Como Real
	Definir comision Como Real
	
	leer_datos(nombre, precio_fab)
	salida(nombre, precio_fab)
FinAlgoritmo
