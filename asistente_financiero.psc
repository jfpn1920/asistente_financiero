Algoritmo asistente_financiero
	Definir opcion, totalMovimientos, i, j, idBuscar, siguienteID Como Entero
	Definir encontrado Como Logico
	Definir totalIngresos, totalEgresos Como Entero
	Definir totalPendientes, totalRealizados, totalCancelados Como Entero
	Definir id Como Entero
	Definir monto Como Real
	Definir montoIngresos, montoEgresos, balance Como Real
	Definir tipoMovimiento, categoria, descripcion, fecha, metodoPago, estado, observacion Como Cadena
	Dimension id[100]
	Dimension tipoMovimiento[100]
	Dimension categoria[100]
	Dimension descripcion[100]
	Dimension monto[100]
	Dimension fecha[100]
	Dimension metodoPago[100]
	Dimension estado[100]
	Dimension observacion[100]
	totalMovimientos <- 0
	siguienteID <- 1
	//-----------------------------------------//
	//--|menu_principal_asistente_financiero|--//
	//-----------------------------------------//
	Repetir
		Escribir "menu principal asistente financiero"
		Escribir "1) registrar movimiento financiero"
		Escribir "2) editar movimiento financiero"
		Escribir "3) eliminar movimiento financiero"
		Escribir "4) buscar movimiento financiero"
		Escribir "5) listar movimientos financieros"
		Escribir "6) ver detalles del movimiento"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-------------------------------------//
			//--|registrar_movimiento_financiero|--//
			//-------------------------------------//
			1:
				Escribir "registrar movimiento financiero"
				Si totalMovimientos >= 100 Entonces
					Escribir "no se pueden registrar mas movimientos."
				SiNo
					id[totalMovimientos + 1] <- siguienteID
					siguienteID <- siguienteID + 1
					Escribir "ingrese el tipo de movimiento (ingreso/egreso):"
					Leer tipoMovimiento[totalMovimientos + 1]
					Escribir "ingrese la categoria:"
					Leer categoria[totalMovimientos + 1]
					Escribir "ingrese la descripcion:"
					Leer descripcion[totalMovimientos + 1]
					Escribir "ingrese el monto:"
					Leer monto[totalMovimientos + 1]
					Escribir "ingrese la fecha:"
					Leer fecha[totalMovimientos + 1]
					Escribir "ingrese el metodo de pago:"
					Leer metodoPago[totalMovimientos + 1]
					Escribir "ingrese el estado (pendiente/realizado/cancelado):"
					Leer estado[totalMovimientos + 1]
					Escribir "ingrese una observacion:"
					Leer observacion[totalMovimientos + 1]
					totalMovimientos <- totalMovimientos + 1
					Escribir "movimiento financiero registrado correctamente."
				FinSi
			//----------------------------------//
			//--|editar_movimiento_financiero|--//
			//----------------------------------//
			2:
				Escribir "editar movimiento financiero"
				Si totalMovimientos = 0 Entonces
					Escribir "no hay movimientos registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalMovimientos Hacer
						Escribir id[i]," | ",tipoMovimiento[i]," | ",categoria[i]," | ",descripcion[i]," | ",monto[i]," | ",fecha[i]," | ",metodoPago[i]," | ",estado[i]," | ",observacion[i]
					FinPara
					Escribir "ingrese el id del movimiento:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMovimientos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "nuevo tipo de movimiento (ingreso/egreso):"
							Leer tipoMovimiento[i]
							Escribir "nueva categoria:"
							Leer categoria[i]
							Escribir "nueva descripcion:"
							Leer descripcion[i]
							Escribir "nuevo monto:"
							Leer monto[i]
							Escribir "nueva fecha:"
							Leer fecha[i]
							Escribir "nuevo metodo de pago:"
							Leer metodoPago[i]
							Escribir "nuevo estado (pendiente/realizado/cancelado):"
							Leer estado[i]
							Escribir "nueva observacion:"
							Leer observacion[i]
							Escribir "movimiento financiero editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro un movimiento con ese id."
					FinSi
				FinSi
			//------------------------------------//
			//--|eliminar_movimiento_financiero|--//
			//------------------------------------//
			3:
				Escribir "eliminar movimiento financiero"
				Si totalMovimientos = 0 Entonces
					Escribir "no hay movimientos registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalMovimientos Hacer
						Escribir id[i]," | ",tipoMovimiento[i]," | ",categoria[i]," | ",descripcion[i]," | ",monto[i]," | ",fecha[i]," | ",metodoPago[i]," | ",estado[i]," | ",observacion[i]
					FinPara
					Escribir "ingrese el id del movimiento:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMovimientos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalMovimientos Entonces
								Para j <- i Hasta totalMovimientos - 1 Hacer
									id[j] <- id[j + 1]
									tipoMovimiento[j] <- tipoMovimiento[j + 1]
									categoria[j] <- categoria[j + 1]
									descripcion[j] <- descripcion[j + 1]
									monto[j] <- monto[j + 1]
									fecha[j] <- fecha[j + 1]
									metodoPago[j] <- metodoPago[j + 1]
									estado[j] <- estado[j + 1]
									observacion[j] <- observacion[j + 1]
								FinPara
							FinSi
							totalMovimientos <- totalMovimientos - 1
							Escribir "movimiento financiero eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro un movimiento con ese id."
					FinSi
				FinSi
			//----------------------------------//
			//--|buscar_movimiento_financiero|--//
			//----------------------------------//
			4:
				Escribir "buscar movimiento financiero"
				Si totalMovimientos = 0 Entonces
					Escribir "no hay movimientos registrados."
				SiNo
					Escribir "ingrese el id del movimiento:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMovimientos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir "id: ",id[i]
							Escribir "tipo de movimiento: ",tipoMovimiento[i]
							Escribir "categoria: ",categoria[i]
							Escribir "descripcion: ",descripcion[i]
							Escribir "monto: ",monto[i]
							Escribir "fecha: ",fecha[i]
							Escribir "metodo de pago: ",metodoPago[i]
							Escribir "estado: ",estado[i]
							Escribir "observacion: ",observacion[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro un movimiento con ese id."
					FinSi
				FinSi
			//------------------------------------//
			//--|listar_movimientos_financieros|--//
			//------------------------------------//
			5:
				Escribir "listar movimientos financieros"
				Si totalMovimientos = 0 Entonces
					Escribir "no hay movimientos registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalMovimientos Hacer
						Escribir id[i]," | ",tipoMovimiento[i]," | ",categoria[i]," | ",descripcion[i]," | ",monto[i]," | ",fecha[i]," | ",metodoPago[i]," | ",estado[i]," | ",observacion[i]
					FinPara
				FinSi
			//----------------------------------------//
			//--|ver_detalles_movimiento_financiero|--//
			//----------------------------------------//
			6:
				Escribir "ver detalles del movimiento financiero"
				Si totalMovimientos = 0 Entonces
					Escribir "no hay movimientos registrados."
				SiNo
					Escribir "ingrese el id del movimiento:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMovimientos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "========================================"
							Escribir "DETALLES DEL MOVIMIENTO FINANCIERO"
							Escribir "========================================"
							Escribir "id: ",id[i]
							Escribir "tipo de movimiento: ",tipoMovimiento[i]
							Escribir "categoria: ",categoria[i]
							Escribir "descripcion: ",descripcion[i]
							Escribir "monto: ",monto[i]
							Escribir "fecha: ",fecha[i]
							Escribir "metodo de pago: ",metodoPago[i]
							Escribir "estado: ",estado[i]
							Escribir "observacion: ",observacion[i]
							Escribir "========================================"
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro un movimiento con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalMovimientos = 0 Entonces
					Escribir "no hay movimientos registrados."
				SiNo
					totalIngresos <- 0
					totalEgresos <- 0
					montoIngresos <- 0
					montoEgresos <- 0
					totalPendientes <- 0
					totalRealizados <- 0
					totalCancelados <- 0
					Para i <- 1 Hasta totalMovimientos Hacer
						Si tipoMovimiento[i] = "ingreso" Entonces
							totalIngresos <- totalIngresos + 1
							montoIngresos <- montoIngresos + monto[i]
						FinSi
						Si tipoMovimiento[i] = "egreso" Entonces
							totalEgresos <- totalEgresos + 1
							montoEgresos <- montoEgresos + monto[i]
						FinSi
						Si estado[i] = "pendiente" Entonces
							totalPendientes <- totalPendientes + 1
						FinSi
						Si estado[i] = "realizado" Entonces
							totalRealizados <- totalRealizados + 1
						FinSi
						Si estado[i] = "cancelado" Entonces
							totalCancelados <- totalCancelados + 1
						FinSi
					FinPara
					balance <- montoIngresos - montoEgresos
					Escribir "estadisticas financieras"
					Escribir "total de movimientos: ",totalMovimientos
					Escribir "cantidad de ingresos: ",totalIngresos
					Escribir "cantidad de egresos: ",totalEgresos
					Escribir "total de ingresos: ",montoIngresos
					Escribir "total de egresos: ",montoEgresos
					Escribir "balance financiero: ",balance
					Escribir "movimientos pendientes: ",totalPendientes
					Escribir "movimientos realizados: ",totalRealizados
					Escribir "movimientos cancelados: ",totalCancelados
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar asistente financiero."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo