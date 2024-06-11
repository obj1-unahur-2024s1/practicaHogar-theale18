class Personas{
  var property dormitorio
	var edad
	var tieneHabilidadesDeCocina = false
  method duermoEn(unDormitorio) = dormitorio == unDormitorio
	method cumplirAnio() (edad+=1)
 	method edad() = edad
}
