
import Foundation
//no hay herencia a diferencia de las clases
//solo hay inicializadores normales

struct Persona {//una clase necesitaria inicializador, en cambio el estruct los hace por defecto
    var nombre: String
    var apellidos: String

    
    init(nombre: String, apellidos: String) {
        self.nombre = nombre
        self.apellidos = apellidos
    }
    
    init() {
        self.init(nombre: "", apellidos: "")
    }
}


let persona1 = Persona()




class PersonaClass {
    var nombre: String
    var apellidos: String
    
    init(nombre: String, apellidos: String) {
        self.nombre = nombre
        self.apellidos = apellidos
    }
}

var arrayStruct = [Persona(nombre: "1", apellidos: "1"), Persona(nombre: "2", apellidos: "2")]
var arrayClass = [PersonaClass(nombre: "1", apellidos: "1"), PersonaClass(nombre: "2", apellidos: "2")]

arrayStruct.forEach {//recorremos el array estructura
    print($0.nombre)
}
for persona in arrayStruct {
    var p = persona//hacemos una copia de persona a una variable y no cambiamos el original
    p.nombre = "Rafa"
}
arrayStruct.forEach {
    print($0.nombre)
}

print("==========")

arrayClass.forEach {//recorremos el array clase
    print($0.nombre)
}
for persona in arrayClass {
    persona.nombre = "Rafa"//modificamos el valor original porque apunta al mismo espacio de memoria
}
arrayClass.forEach {
    print($0.nombre)
}

print("==========")

struct Agrupacion {
    var algo: Bool = true
    let persona = PersonaClass(nombre: "", apellidos: "")
}

let agrupacion = Agrupacion()
//agrupacion.algo = false <- Esto no está permitido
print(agrupacion.persona.nombre)
agrupacion.persona.nombre = "María"
//agrupacion.persona = PersonaClass(nombre: "", apellidos: "")  <- Esto no está permitido
print(agrupacion.persona.nombre)



import SwiftUI

struct ListView: View {
    var nombre: Dato<String> = Dato(dato: "")
    
    //Son lo mismo
    @State var nombre2: String = ""
    var nombre3: State<String> = State(initialValue: "")
    //============
    
    func mostrarNombre() {
        print(nombre2)
        //_nombre2 == nombre3 <- Es el mismo tipo de acceso a la variable
        $nombre2
        print(nombre3.wrappedValue)
    }
    
    var body: some View {
        Text("Hello world")
    }
}

class Dato<T> {
    var dato: T
    
    init(dato: T) {
        self.dato = dato
    }
}

print("===========")

enum Analiticas: String {
    case listado = "Pantalla de listado"
    case detalle = "Pantalla de detalle"
}

var clave = Analiticas.detalle

print(clave.rawValue)

switch clave {
case .detalle:
    break
case .listado:
    break
}


struct AnaliticasStruct: Equatable, RawRepresentable {
    var rawValue: String
    
    static let listado: AnaliticasStruct = AnaliticasStruct(rawValue: "Pantalla de listado")
    static let detalle: AnaliticasStruct = AnaliticasStruct(rawValue: "Pantalla de detalle")
}

extension AnaliticasStruct {
    static let filtro: AnaliticasStruct = AnaliticasStruct(rawValue: "Pantalla de filtro")
}

var claveStruct = AnaliticasStruct.listado
var claveStruct2 = AnaliticasStruct(rawValue: "aaa")

print(claveStruct.rawValue)

switch claveStruct {
case .listado:
    break
case .detalle:
    break
case .filtro:
    break
default:
    break
}
