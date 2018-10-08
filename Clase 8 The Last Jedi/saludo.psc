subproceso saludar (nombre Por Referencia,)
	Mostrar "Ingrese Nombre y Apellido: " Sin Saltar 
	leer nombres
	Mostrar ""
	Esperar 2 segundos
	Limpiar Pantalla
	
	Mostrar "Bienvenido " nombres ", a continuacion mostraremos sus calificaciones" 
	Mostrar ""
FinSubProceso

SubProceso calificaciones(nota1 Por Referencia, nota2 Por Referencia, nota3 Por Referencia, notafinal Por Referencia)
	Mostrar "Espere mientras procesamos sus datos..."
	esperar 3 Segundos
	Limpiar Pantalla
	
	//	Calculo
	
	nota1=azar(21)
	nota2=azar(21)
	nota3=azar(21)
	
	notafinal=nota1+nota2+nota3/3
	
FinSubProceso
SubProceso despedida(nota1, nota2, nota3, notafinal)
	Mostrar "Sus calificaciones son las siguientes: "
	Mostrar ""
	Mostrar "Evaluacion #1: " nota1 "Pts"
	Mostrar "Evaluacion #2: " nota2 "Pts"
	Mostrar "Evaluacion #3: " nota3 "Pts"
	Mostrar ""
	
	Mostrar "Su promedio total fue de: " notafinal
	Mostrar ""
	
	mostrar "Gracias por preferirnos, un cordial saludo"
FinSubProceso


Algoritmo Saludo_nota
	Definir nombres Como Caracter
	Definir nota1, nota2, nota3, cantidad Como Entero
	Definir notafinal Como Real
	
	Mostrar "Cuantos Alumnos Quiere Evaluar?" Sin Saltar
	Leer cantidad
	
	Esperar 1 Segundos
	Limpiar Pantalla
	
	Para i=1 Hasta cantidad Hacer
		saludar(nombres)
		calificaciones(nota1, nota2, nota3, notafinal)
		despedida(nota1, nota2, nota3, notafinal)
		Mostrar ""
		Mostrar "Presione Cualquier Tecla para Continuar"
		Esperar Tecla
		Limpiar Pantalla
	FinPara
	
	Mostrar "Se ha terminado el Proceso de Evaluacion"
	
FinAlgoritmo
