import prendas.*
import ventas.*

object macowins {
	var property ventas=[]
	
	/*	
	 	Macowins es un objeto que posee una lista con todas las ventas realizadas(que pueden agregarse ventas).
	 	En esta interfaz se estan cumpliendo los 4 requerimientos,que anteriormente mencione:
	 		-Saber las ganancias del dia X
	 		-Registar las ventas
	 		-Saber el precio de venta de una prenda
	 		-Saber el tipo de una prenda
	 */
	
	method gananciasDelDia(determinadoDia){
		return ventas.filter({venta => venta.fechaDeVenta() == determinadoDia}).sum({venta => venta.ganancia()})
	}
	
	method registrarVenta(unaVenta){
		ventas.add(unaVenta)
	}
	
	method precioPrenda(unaPrenda){
		return unaPrenda.precioDeVenta()
	}
	
	method tipoPrenda(unaPrenda){
		return unaPrenda.tipo()
	}
	
}
