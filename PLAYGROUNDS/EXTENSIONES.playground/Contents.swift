import UIKit

//las extensiones se pueden utilizar sobre cualquier tipo de dato

class Persona {
    var nombre: String
    var apellido: String
    var etapa: Etapa = .bebe
    
    init(nombre: String, apellido: String) {
        self.nombre = nombre
        self.apellido = apellido
        
    }
}

extension Persona {//No se permiten variables almacenadas, si compuestas o funciones, inicializadores, tipos nuevos
    var nombreCompleto: String {
        "\(nombre) \(apellido)"
    }
    func nombreCompletomayusculas() -> String {
        nombreCompleto.uppercased()
    }
    
    enum Etapa {
        case bebe
        case adolescente
        case adulto
        case viejo
    }
    
}

extension Persona: Equatable {//creo extension y le digo que considero para que dos personas sean iguales
    static func == (lhs: Persona, rhs: Persona) -> Bool {
        return lhs.nombre == rhs.nombre &&
        lhs.apellido == rhs.apellido &&
        lhs.etapa == rhs.etapa
    }
    
    
}

var persona1 = Persona(nombre: "Antonio", apellido: "Cantos")

print(persona1.nombreCompleto)
print(persona1.nombreCompletomayusculas())

var etapa1 = Persona.Etapa.adulto

var persona2 = Persona(nombre: "Antonio", apellido: "Cantos")

if persona1 == persona2 {// no nos lo permite asi que se crea extension equatable
    print("Es la misma persona")
} else {
    print("No es la misma persona")
}
