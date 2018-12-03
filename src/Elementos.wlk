class Elemento {
	method susto()
}

class Maquillaje inherits Elemento {
	override method susto() = 3
}

class TrajeTierno inherits Elemento {
	override method susto() = 2
}

class TrajeTerrorifico inherits Elemento {
	override method susto() = 5
}

object winniePooh inherits TrajeTierno {}
object sullivan inherits TrajeTierno {}
object jason inherits TrajeTerrorifico {}
object georgeBush inherits TrajeTerrorifico {}