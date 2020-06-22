import MarcasDeCerveza.*
import Nacionalidades.*
class JarraDeCerveza{
	var property capacidad
	var property marcaDeLaCerveza
	
	method contenidoDeAlcohol(){
		return (capacidad * marcaDeLaCerveza.graduacionDeAlcohol()) * 1  / 100
	}

}