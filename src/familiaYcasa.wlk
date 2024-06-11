class Casa{
  const property habitaciones = #{}
  method habitacioensOcupadas() = habitaciones.filter( {h => not h.estaVacia()} )
  method responsables() = self.habitacionesOcupadas().map( {h => h.ocupantesMasViejo()} )
  method nivelDeConfort
}
class Familia{
  const property personas = #{}
  method 
}
