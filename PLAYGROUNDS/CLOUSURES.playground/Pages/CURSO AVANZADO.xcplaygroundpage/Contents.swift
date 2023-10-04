
import Foundation

//funciones anonimas
//los closures son tipos de datos por referencia


var miClosure: (String) -> Void

func saluda(nombre: String) {
    print("Hola \(nombre)")
}

miClosure = saluda

miClosure("Manuel")

miClosure = { texto in
    print("estoy mostrando el texto \(texto)")//contenido no se esta ejecutando, la variable contiene la funcion. Almacena un trozo de codigo para efectuarlo más adelante.
}

miClosure("Manuel")// ejecuta la funcion


//AUTOCLOSURES

do {
    var personas = ["Rafa", "Manuel", "Maria", "Jose", "Antonio"]
    
    //    func saludaPersona(persona: String) {
    //        print("Bienvenido \(persona)")
    //    }
    //
    //    saludaPersona(persona: personas[0])
    //    personas.remove(at: 0)
    //    saludaPersona(persona: personas[0])
    
    //    vamos a realizar lo mismo con un autoclosure
    func saludaPersona(persona: @autoclosure () -> String) {//al poner aautoclosure nos permite llamar a la funcion pasando el texto de la persona
        print("Bienvenido \(persona())")
    }
    saludaPersona(persona: personas.remove(at: 0))
    saludaPersona(persona: personas.remove(at: 0))
    saludaPersona(persona: personas.remove(at: 0))
    
}


//ESCAPING
do {
    class Guerrero {
        
        var hp: Int = 100 {
            didSet {
                if hp < 0 {
                    ejecutarAlMorir()
                }
            }
        }
        var ataque: Int = 20
        var velocidad: Int = 10
        var metodoEjecutado: (String) -> Void
        var ejecutarAlMorir: () -> Void
        
        init(metodoEjecutado: @escaping (String) -> Void, ejecutarAlMorir: @escaping () -> Void) {
            self.metodoEjecutado = metodoEjecutado//se puede ejecutar fuera del ambito que se ejecutó
            self.ejecutarAlMorir = ejecutarAlMorir
        }
        
        
        func pegar() {
            metodoEjecutado("pegar")
        }
        
        func moverse() {
            metodoEjecutado("moverse")
            
        }
        
        func recibirDano(dmg: Int) {
            metodoEjecutado("recibirDano")
            hp -= dmg
        }
        
    }
    
    var personaje = Guerrero {
        print("Se está ejecutando el método \($0)")
    } ejecutarAlMorir: {
        print("has muerto")
    }
    personaje.moverse()//ahora se ejecuta
    personaje.pegar()//ahora se ejecuta
    personaje.recibirDano(dmg: 50)
    personaje.recibirDano(dmg: 500)
    
}

