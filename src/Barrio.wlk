import Ninio.*
import Elementos.*

class Barrio {
	var ninios
	
	constructor(unosNinios){ ninios = unosNinios }
	
	method tresNiniosConMasCaramelos(){
		var golosos = ninios.sortedBy({ unNinio, otroNinio => unNinio.caramelos() > otroNinio.caramelos() })
		return golosos.take(3)
	}

	method elementosDeNiniosConMasDe10Caramelos(){
		return ninios.filter({ unNinio => unNinio.caramelos() > 10 }).map({ unNinio => unNinio.elementos() })
	}
}