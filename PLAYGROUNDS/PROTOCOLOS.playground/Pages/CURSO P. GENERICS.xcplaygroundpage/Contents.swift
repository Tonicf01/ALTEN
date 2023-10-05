
import Foundation
//GENERICS
//protocol no permite genericos, utiliza tipos asociados

protocol Armadura {
    associatedtype GradoArmadura
}


protocol Mago {
    associatedtype GradoArmadura: Armadura
    var armadura: GradoArmadura { get }
    func lanzarhechizo()
    
}
class ArmaduraComun: Armadura {
    
}
class ArmaduraEpica: Armadura {
    
}

class Persona: Mago {
    var GradoArmadura = ArmaduraComun()
    
    func lanzarHechizo() {
        
    }
    class Mono: Mago {
        var GradoArmadura = ArmaduraComun()
        
        func lanzarHechizo() {
            
        }
        
        func generarMago() -> some Mago {//tipos opacos al contrario que los tipos genericos
            return Persona()
        }
    }
