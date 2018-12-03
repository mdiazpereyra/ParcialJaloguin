class Estado {
	method sufrirEfectosDeIndigestion(ninio)
}

object sano inherits Estado {
	override method sufrirEfectosDeIndigestion(ninio){ ninio.quedarEmpachado() }
}

object empachado inherits Estado {
	override method sufrirEfectosDeIndigestion(ninio){ ninio.quedarEnCama() }
}

object enCama inherits Estado {
	override method sufrirEfectosDeIndigestion(ninio){}
}