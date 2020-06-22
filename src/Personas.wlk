import Jarras.*
import MarcasDeCerveza.*
import Nacionalidades.*

class Persona{
	var property peso
	var property jarrasQueCompro = []
	var property escuchaMusicaTradicional = false
	var property nivelDeAguante
	var property nacionalidad
	
	method estaEbria(){
		return self.cantidadTotalDeALcohol() * peso > nivelDeAguante
	}
	
	method comprarMuchasJarras(listaDeJarras){
		jarrasQueCompro.addAll(listaDeJarras)
	}
	
	method cantidadTotalDeALcohol(){
		return jarrasQueCompro.sum({alc => alc.contenidoDeAlcohol()})
	}
	
	method leGustaDeLaMarca(unaMarca){
		return nacionalidad.leGustaLaCerveza(unaMarca)
	}
	
	method esUnEbrioEmpedernido(){
		return jarrasQueCompro.all({jarra => jarra.capacidad() >= 1})
	}
	
	method esPatriota(){
		return jarrasQueCompro.all({jarra => jarra.marcaDeLaCerveza().paisDeOrigen() == self.nacionalidad()})
	}
}
