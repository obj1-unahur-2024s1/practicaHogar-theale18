class Personas{
  var property dormitorio
	var edad
	var tieneHabilidadesDeCocina = false
  	method duermoEn(unDormitorio) = dormitorio == unDormitorio
	method cumplirAnio() (edad+=1)
 	method edad() = edad
	method esMenorOIgualDe(edad) = edad <= unaEdad
	method puedeEntrar(unaHabitacion) = true
}
//	3.4
class Obsesives inherits Persona {
	override method puedeEntrar(unaHabitacion) = unaHabitacion.ocupantes().size() <= 2
}
class Goloses {
	override method puedeEntrar(unaHabitacion)
}
class Sencilles {

}
