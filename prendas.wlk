/*REQUERIMIENTOS: 	-Saber el precio de venta de una prenda y sus tipos
 					-Saber las ganancias de un determinado dia
 					-Registrar las ventas realizadas
*/
 class Prenda {
	var valor
	var estado 
	const property tipo
	/*La clase prenda tiene un valor que puede variar,un estado que tambien puede cambiar, y el tipo que no varia */

	
	method precioDeVenta() {
		return estado.precio(valor)
	}
	
}


object nueva {
	method precio(unValor){
		return unValor
	}
}

class Promocion {
	const valorDecididoPorUsuario
	method precio(unValor){
		return unValor - valorDecididoPorUsuario
	}
	/*Promocion es una clase a diferencia de liquidacion y nueva que son objetos,ya que habra un valor que sera dado por el usuario para realizar un descuento.
	 Por esto habra varias instancias de promocion
	*/
}

object liquidacion {
	method precio(unValor){
		return unValor * 0.5
	}
}