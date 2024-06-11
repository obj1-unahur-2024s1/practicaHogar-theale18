class Habitacion{
	method nivelDeConfortQueAporta(persona) = 10
}
class UsoGeneral inherits Habitacion {

}
class Dormitorio inherits Habitacion {
	var property cantPersonas
	override method nivelDeConfortQueAporta(persona) {
		return super(persona) + if( persona.duermeEn(self) ) 10 / cantPersonas else
//				      + ternaria
	}
}
class Banio inherits Habitacion {

}
class Cocina inherits Habitacion {

}
