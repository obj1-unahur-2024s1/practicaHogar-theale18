class Habitacion{
	const property ocupantes = 
	method nivelDeConfortQueAporta(persona) = 10
	method estaVacia() = ocupantes.isEmpty()
	method puedeEntrar(unaPersona)
}
class UsoGeneral inherits Habitacion {
	override method puedeEntrar(unaPersona) = true
}
class Dormitorio inherits Habitacion {
	var property cantPersonas
	override method nivelDeConfortQueAporta(persona) {
		return super(persona) + if( persona.duermeEn(self) ) 10 / cantPersonas else 0
//				      + ternaria
	}
	override method puedeEntrar(persona){
		return persona.duermeEn(self) or self.todosOcupantesDuermen()
	}
method todosOcupantesDuermen() = ocupantes.count( {p => p.duermenEn(self)} ) == cantPersonas
}
class Banio inherits Habitacion {
	override method nivelDeConfortQueAporta(persona) {
		return super(persona) + if(persona.esMenorOIgualDe(4)) 2 else 4
	}
	method hayUnNinio() = ocupantes.any( {p => p.esMenorOIgualDe(4)})
	override method puedeEntrar(unaPersona) = self.estaVacia() or self.hayUnNinio()
}
class Cocina inherits Habitacion {
	const property metrosCuadrados
	override method nivelConfortQueAporta(persona) {
		return super(persona) + 
		if(persona.tieneHabilidadesDeCocina()) metrosCuadrados * 
		configValor.porcentajeConfortCocina() else 0
	}
	override method puedeEntrar(persona){		//	2.Cocina
		return self.estaVacia() or not self.existeYaCocinero() and persona.tieneHabilidadesDeCocina())
	}
}
object configValor{
	var property porcentajeConfortCocina = 0.1
	
}
