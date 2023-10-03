
import Foundation
/**
 Crea una clase llamada Vehiculo con las siguientes propiedades:
 marca (String)
 modelo (String)
 año (Int)
 Define un inicializador personalizado para la clase Vehiculo que permita asignar valores a las propiedades marca, modelo y año al crear una instancia.
 Crea una clase derivada llamada Automovil que herede de la clase Vehiculo. Agrega una propiedad adicional:
 numeroDePuertas (Int)
 Define un inicializador personalizado para la clase Automovil que incluya la propiedad numeroDePuertas.
 Agrega un método descripcion() a ambas clases (Vehiculo y Automovil) que imprima información sobre el vehículo, incluyendo la marca, modelo, año y número de puertas (si es un automóvil).
 Crea una instancia de Vehiculo y otra instancia de Automovil, y llama al método descripcion() en ambas instancias para imprimir sus detalles.
 */

class Vehiculo {
    var marca: String
    var modelo: String
    var año: Int
    
    init(marca: String, modelo: String, año: Int) {
        self.marca = marca
        self.modelo = modelo
        self.año = año
    }
    func descripcion() {
        print("Vehiculo: \(marca) \(modelo) \(año)")
    }
}
class Automovil: Vehiculo {
    var numeroDePuertas: Int
    
    init(marca: String, modelo: String, año: Int, numeroDePuertas: Int) {
        self.numeroDePuertas = numeroDePuertas
        super.init(marca: marca, modelo: modelo, año: año)
    }
    override func descripcion() {
        print("Automovil: \(marca) \(modelo) \(año) \(numeroDePuertas)")
    }
    
}
var coche1 = Vehiculo(marca: "Mercedes", modelo: "gla", año: 2017)
var coche2 = Automovil(marca: "BMW", modelo: "Serie 1", año: 2020, numeroDePuertas: 5)

coche1.descripcion()
coche2.descripcion()


