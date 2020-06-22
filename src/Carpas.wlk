class CarpaCervezera{
	var property limiteDeGenteAdmitida 
	var property poseeBandaDeMusicaTradicional = false
	var property jarrasALaVenta = []
	const  personasDentro = []
	
	
	method cervezasUnicamenteDe(unaMarca){
		return jarrasALaVenta.all({unaJarra => unaJarra.marcaDeLaCerveza() == unaMarca})
	}
	
	method quiereEntrar(unaPersona){
		return unaPersona.leGustaDeLaMarca(jarrasALaVenta.first().marcaDeLaCerveza()) 
			and unaPersona.escuchaMusicaTradicional() and self.poseeBandaDeMusicaTradicional()
	}
	
	method dejaIngresar(unaPersona){
		return self.cantidadDePersonasDentro() <= limiteDeGenteAdmitida and  not unaPersona.estaEbria()
	}
	
	method puedeEntrar(unaPersona){
		return self.quiereEntrar(unaPersona) and self.dejaIngresar(unaPersona)
	}
	
	method dejarEntrar(unaPersona){
		if(self.puedeEntrar(unaPersona)){
			personasDentro.add(unaPersona)
			}
		else{
			throw "No puede ingresar, la carpa se encuentra llena."
		}
	}
	
	method cantidadDePersonasDentro(){
		return personasDentro.size()
	}
	
	
	method cuantosEbriosEmperdenidosHay(){
		return personasDentro.count({persona => persona.esUnEbrioEmpedernido()})
	}
}


