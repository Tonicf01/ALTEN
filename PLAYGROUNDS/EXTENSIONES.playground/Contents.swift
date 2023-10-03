import UIKit
//la extensiones se pueden utilizar sobre cualquier tipo de dato

class Persona {
    var nombre: String
    var apellido: String
    
    init(nombre: String, apellido: String) {
        self.nombre = nombre
        self.apellido = apellido
    }
}


extension Persona {
    
}
func nombreCompleto(persona: Persona) -> String {
    "\(persona.nombre) \(persona.apellido)"
}

var persona1 = Persona(nombre: "Antonio", apellido: "Cantos")
persona1.
