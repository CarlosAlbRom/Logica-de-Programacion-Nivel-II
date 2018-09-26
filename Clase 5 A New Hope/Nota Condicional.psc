Algoritmo Notas_Bachillerato
	
	//Definicion de Variables
	
	Definir nota1, nota2, nota3, N, nota_alumno como entero
	Definir promedio,Nota_total_clase Como Real
	
	//Entrada de Datos
	
	Mostrar "Ingrese la Nota del Primer Lapso:" Sin Saltar
	Leer nota1
	
	Mostrar "Ingrese la Nota del Segundo Lapso:" Sin Saltar
	Leer nota2
	
	Mostrar "Ingrese la Nota del Tercer Lapso:" Sin Saltar
	Leer nota3
	
	Mostrar "Cantidad de Estudiantes en la Seccion:" sin saltar
	Leer N
	
	//Calculo de los Procesos
	
	Nota_total_clase=0
	
	Para i=1 hasta N
		nota_alumno=azar(21)
		Nota_total_clase=Nota_total_clase+nota_alumno
	FinPara
	promedio_clase=Nota_total_clase/N
	
	promedio=(nota1+nota2+nota3)/3
	
	//Salidas
	
	si promedio>=10 Entonces
		Mostrar "Usted Aprobo la Materia con " + convertiratexto(promedio)
		Sino
			Mostrar "Usted Reprobo la Materia con " promedio
	FinSi
	
	
	si promedio<10 Entonces
		Mostrar "Usted Reprobo la Materia con " promedio
	FinSi
	
	Mostrar "El Promedio de la Clase es :" promedio_clase
	
	si promedio>promedio_clase entonces
		Mostrar "Usted Puntuo por Encima del Promedio de la Clase"	
		sino Mostrar "Usted Puntuo por Debajo del Promedio de la Clase"
	FinSi
	
	si promedio>= 19 Entonces
		Mostrar "Felicidades por sus Exelentes Calificaciones!"
		sino si promedio<5 Entonces
			Mostrar "Si Usted Desea Aprobar la Materia, Necesitara Poner un Mayor Esfuerzo"
		FinSi
	FinSi

FinAlgoritmo
