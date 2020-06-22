
class Marca {
	var property contenidoDeLupulo
	var property paisDeOrigen
	method graduacionDeAlcohol(){
		return contenidoDeLupulo * 1  / 100
	}
}


class CervezaRubia inherits Marca{
	var property lupuloDeLasRubias
	override method contenidoDeLupulo(){
		return lupuloDeLasRubias
	}
}

class CervezaNegra inherits Marca{
	
	override method graduacionDeAlcohol(){
		return gradCervezasNegras.graduacionReglamentaria().min(self.contenidoDeLupulo() * 2) 
	}
}

object gradCervezasNegras{
	var property graduacionReglamentaria = 0
}

class CervezaRoja inherits CervezaNegra{
	
	override method graduacionDeAlcohol(){
		return super() * 1.25
	}
}
