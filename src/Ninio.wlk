import Asustador.*
import Elementos.*
import Estados.*
import Adulto.*

class Ninio inherits Asustador {
	var property elementos
	var actitud
	var property caramelos
	var estadoDeSalud = sano
	
	constructor(unosElementos, unaActitud, unosCaramelos){
		elementos = unosElementos
		actitud = unaActitud
		caramelos = unosCaramelos
	}
	
	override method capacidadAsustar() = (elementos.sum({unElemento => unElemento.susto()}))*actitud

	override method recibirCaramelos(cantidad){ caramelos += cantidad }
	
	method tieneMasDe15Caramelos() = caramelos > 15
	
	method comerCaramelos(cantidad){
		self.puedeComerCaramelos()
		if (caramelos >= cantidad){
			caramelos -= cantidad
			if(cantidad > 10)
				self.indigestarse()
		}
		else
			self.error("No tiene tantos caramelos")
	}
	
	method indigestarse(){ estadoDeSalud.sufrirEfectosDeIndigestion(self) }
	
	method quedarEmpachado(){ 
		estadoDeSalud = empachado
		actitud -= actitud/2
	}
	
	method quedarEnCama(){
		estadoDeSalud = enCama
		actitud = 0
	}
	
	method puedeComerCaramelos() {
		if(estadoDeSalud == enCama)
			self.error("No puede comer caramelos")
	}
}
