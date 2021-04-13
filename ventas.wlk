import prendas.*

class Venta{
	var property prendas=[]	
	const property fechaDeVenta
	const formaDePago
	/*
	 	La clase venta posee una lista de prendas que se toman en el pedido(que puede ser modificada),una fecha de venta, y una forma de pago
	 */
	method precioTotal(){
		return prendas.sum({prenda => prenda.precioDeVenta()})
	}
	
	method ganancia(){
		return formaDePago.cobrar(self.precioTotal(),self.recargoPorPrendas())
	}
	
	method recargoPorPrendas(){
		return prendas.map({prenda => prenda.precioDeVenta()*0.01}).sum()
	}
	
	method agregarPrenda(unaPrenda){
		prendas.add(unaPrenda)
	}
}


object efectivo{
	method cobrar(valor,recargoDePrendas){
		return valor
	}
}


class Tarjeta{
	const cantidadDeCuotas
	const coeficiente
	
	method cobrar(valor,recargoDePrendas){
		return valor + (cantidadDeCuotas*coeficiente + recargoDePrendas)
	}
	/*
	 	Tarjeta es una clase ya que habra varias instancias de tarjeta,en las que cada una tendra su propia cantidad de cuotas y coeficientes
	 */
}
