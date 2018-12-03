class Adulto {
	var property caramelos
	var vecesAsustado
	
	constructor(unosCaramelos, unosSustos){
		caramelos = unosCaramelos
		vecesAsustado = unosSustos
	}
	
	method tolerancia() = 10 * vecesAsustado
	
	method serAsustadoPor(asustador){
		if(asustador.tieneMasDe15Caramelos())
			vecesAsustado++
	}
	
	method leCausaMiedo(asustador)
	
	method darCaramelos(cantidad, asustador){ asustador.recibirCaramelos(cantidad) }
}

class AdultoComun inherits Adulto {
	
	override method serAsustadoPor(asustador){
		if(self.leCausaMiedo(asustador))
			self.darCaramelos(self.tolerancia()/2, asustador)
		super(asustador)
	}
	
	override method leCausaMiedo(asustador) = self.tolerancia() < asustador.capacidadAsustar()
}

class AdultoNecio inherits Adulto {
	
	override method serAsustadoPor(asustador) {}
	
	override method leCausaMiedo(asustador) = false
}

class Abuelo inherits Adulto {

	override method serAsustadoPor(asustador){ self.darCaramelos(self.tolerancia()/4, asustador) }
	
	override method leCausaMiedo(asustador) = true
}
