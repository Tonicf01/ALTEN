import UIKit

//creacion de un protocolo
protocol Miprotocolo{
    
}
//-----------------------
protocol DesarrolladoriOS {
    var nombre: String { get }//hay que indicar si la variable es de lectura get o tmb escritura set
    func desarrollarConSwift()
    func leerCodigo()
    func analizarRequisitos()
    }


protocol DesarrolladorAndroid {
    func desarrollarConAndroid()
    func leerCodigo()
    func analizarRequisitos()
}

//--------------------------------
struct PersonaiOS: DesarrolladoriOS {
    var nombre: String
    
    func desarrollarConSwift() {
        print("A desarrollar con swift")
    }
    
    func leerCodigo() {
        print("leyendo código")
    }
    
    func analizarRequisitos() {
        print("Analizando requisitos")
    }
    
    
}
//-----------------------------

struct PersonaAndroid: DesarrolladorAndroid {
    var nombre: String

    
    func desarrollarConAndroid() {
        print("A desarrollar con android")
    }
    
    func leerCodigo() {
        print("leyendo código")
    }
    
    func analizarRequisitos() {
        print("Analizando requisitos")
    }
    
    
}
//-------------------------------------- cumple con los dos protocolos
struct PersonaMobile: DesarrolladoriOS, DesarrolladorAndroid {
    var nombre: String

    
    func desarrollarConSwift() {
        print("A desarrollar con swift")

    }
    
    func leerCodigo() {
        print("leyendo código")

    }
    
    func analizarRequisitos() {
        print("Analizando requisitos")

    }
    
    func desarrollarConAndroid() {
        print("A desarrollar con android")

    }
    
    
    
}

//----------------------------- creamos un array
var candidatos: [DesarrolladoriOS] = [PersonaiOS(nombre: "Antonio"), PersonaiOS(nombre: "Juan"), PersonaMobile(nombre: "Paco")]
print(candidatos)
candidatos.forEach {candidato in
    print(candidato.nombre)
    candidato.desarrollarConSwift()
    
}


var candidato: DesarrolladoriOS = PersonaiOS(nombre: "Antonio")
print(candidato.nombre)
candidato = PersonaMobile(nombre: "Manuel")
print(candidato.nombre)
