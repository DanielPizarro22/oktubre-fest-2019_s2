import MarcasDeCerveza.*
import Personas.*

object belgica{
	method leGustaLaCerveza(unaMarca){
		return unaMarca.contenidoDeLupulo() > 4
	}
}
object republicaCheca{
	method leGustaLaCerveza(unaMarca){
		return unaMarca.graduacionDeAlcohol() > 8
	}
}
object alemania{
	method leGustaLaCerveza(unaMarca){
		return true
	}
}


