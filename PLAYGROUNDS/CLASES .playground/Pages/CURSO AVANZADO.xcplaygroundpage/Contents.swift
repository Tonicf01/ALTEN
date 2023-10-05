
import Foundation


//tipo de inicializadores

class Persona {
    var nombre: String
    var apellidos: String
    var dni: String?
    
    init(nombre: String, apellidos: String, dni: String = "Cantos") {//inicializador designated
        self.nombre = nombre
        self.apellidos = apellidos
        self.dni = dni
    }
    
//    init() {//inicializador sin parametros
//        self.nombre = ""
//        self.apellidos = ""
//    }
    
    convenience init() {//inicializador de conveniencia
        self.init(nombre: "", apellidos: "")
//        self.dni = "vacio"
    }
    func caminar() {
        print("el geuerrero camina")
    }
}

var persona1 = Persona(nombre: "Antonio", apellidos: "Cantos")
var dni: String
if let persona1Dni = persona1.dni {
    dni = persona1Dni
}
var array = [Persona(), Persona()]
array.forEach {
    $0.apellidos
}

print(persona1)
//hay que tener uno designado y varios de conveniencia

class Guerrero: Persona {
    var hp: Int//variable no inicializada nos dara problemas
    
    init(hp: Int, nombre: String, apellidos: String) {//creamos inicializaor de hp
        self.hp = hp
        super.init(nombre: nombre, apellidos: apellidos)
    }
    convenience init(hp: Int) {
        self.init(hp: hp, nombre: "", apellidos: "")
    }
    
    required override init(nombre: String, apellidos: String) {
        self.hp = 50
        super.init(nombre: "", apellidos: "")
    }
    override func caminar() {//podemos sobreescribir una funcion con el metodo override
        print("el guerrero camina")
    }
}


var guerrero1 = Guerrero(hp: 100)


//-----------------------------------------------------
//las clases permiten comparar la identidad con el === 3 iguales o si son diferentes con ! = = !==

//class func: nos permite la sobreescritura con override
//final class: es inamovible e impide que se pueda extender por herencia. Hay que usarlo siempre que se pueda
