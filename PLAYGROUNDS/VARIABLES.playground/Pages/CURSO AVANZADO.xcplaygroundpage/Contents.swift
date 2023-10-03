
import Foundation
let ponerBuenNombre = false
class Persona {
    //    var nombre: String = "Juan"   //variables almacenadas (stored properties)
    var nombre: String = {
        let result: String
        if ponerBuenNombre {
            result = "Rafael"
        } else {
            result = "Miguel"
        }
        return result
    }()
    
    var apellidos: String = "Garcia" {//nos indican los cambios producidos en la variable
        willSet{
            
        }
        didSet {
            
        }
    } //variables almacenadas
    
    lazy var dni: String = "53310982H" //no se inicializara si no se usa
    var nombreCompleto: String {
        return "\(nombre) \(apellidos)" //computer properties (es una especie de funcion)
    }
}
let persona1 = Persona()

persona1.nombre = "Antonio"
print(persona1.nombre)
print(persona1.dni)
print(persona1.nombreCompleto)
