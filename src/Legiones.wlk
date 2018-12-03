import Asustador.*

class Legion inherits Asustador {
	var asustadores
	var liderLegion
	
	constructor(unosAsustadores, unLider){
		asustadores = unosAsustadores
		liderLegion = unLider
		if(asustadores.size() < 2)
			self.error("No son suficientes asustadores")
	}
	
	override method capacidadAsustar(){
		return asustadores.sum({unAsustador => unAsustador.capacidadDeAsustar()})
	}
	
	method caramelos(){
		return asustadores.sum({unAsustador => unAsustador.caramelos()})
	}
	
	override method recibirCaramelos(cantidad){ liderLegion.recibirCaramelos(cantidad) }
}

class LegionDeLegiones inherits Legion {}