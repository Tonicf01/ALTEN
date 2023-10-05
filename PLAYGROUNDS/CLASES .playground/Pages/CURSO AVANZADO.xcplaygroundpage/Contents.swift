
import Foundation


//tipo de inicializadores

class Persona {
    var nombre: String
    var apellidos: String
    var dni: String = ""
    
    init(nombre: String, apellidos: String) {//inicializador designated
        self.nombre = nombre
        self.apellidos = apellidos
    }
    
//    init() {//inicializador sin parametros
//        self.nombre = ""
//        self.apellidos = ""
//    }
    
    convenience init() {//inicializador de conveniencia
        self.init(nombre: "", apellidos: "")
        self.dni = "vacio"
    }
}
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
    
    required init(nombre: String, apellidos: String) {
        self.hp = 50
        super.init(nombre: "", apellidos: "")
    }
}


var guerrero1 = Guerrero(hp: 100)
