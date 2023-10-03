import UIKit

//tipos por valor (struct)
struct resolution {
    var height: Int
    var width: Int
    
    init(height: Int, width: Int) {
        self.height = height
        self.width = width
    }
}
var pantalla = resolution(height: 1080, width: 720)
pantalla.width = 1920

var pantalla2 = pantalla
pantalla2.width = 850

var proyector = pantalla // coge el valor pero son variables totalmente distintas
proyector.height = 2048

print("pantalla: \(pantalla)")//al ser por valor el cambio en proyector no afecta a pantalla
print("proyector: \(proyector)")//al ser por valor proyector coge los valores de pantalla y pueden ser modificados sin afectar a pantalla

//---------------------------------------------------------------
//los structs no permiten herencia,no podemos usar super en los struct
do{
    struct StrucNivel1 {
        struct StructNivel2{//anidacion
            
        }
        
    }
    
    var nivel1 = StrucNivel1()
    var nivel2 = StrucNivel1.StructNivel2()
}
//---------------------------------------------------------------
// el struct nos permite crear variables o acceder a ellas sin crear el inicializador o constructor. Si creamos un init el inicializador automatico que trae por defecto desaparece.
do{
    
    struct Persona {
        var nombre: String
        var apellido: String
    }
    var persona1 = Persona(nombre: "Antonio", apellido: "Cantos")
    print(persona1.nombre)
    
}
//------------------------------------------
do {
    struct PruebaStruc {
        var nombre = "Rafa"
        static var nuemeroIteraciones = 9
    }
    print(PruebaStruc.nuemeroIteraciones) //accedemos a la variable estatica
    
    let result = PruebaStruc() //accedemos a la variable
    print(result.nombre)
    
}

do{
    struct Persona {
        var nombre: String
        var apellido: String
    }
    var persona1 = Persona(nombre: "Manolo", apellido: "Fernandez")
    persona1.nombre = "Miguel"
    print(persona1.nombre)
    
    //    la misma creacion con constante no nos dejaria realizar el cambio en los struct
    
    //    let persona1 = Persona(nombre: "Manolo", apellido: "Fernandez")
    //    persona1.nombre = "Miguel" <- esta linea da un fallo al compilar
    //    print(persona1.nombre)
}


//---------------------------------
protocol Humano{
    var nombreCompleto: String { get }//solo de consulta
}


struct Persona {
    var nombre: String
    var apellido: String
}

extension Persona: Humano {
    var nombreCompleto: String{
        "\(nombre) \(apellido)"
    }
    
}

let persona1 = Persona(nombre: "Antonio", apellido: "Cantos")
print(persona1)
print(persona1.nombreCompleto)

let array = [
    Persona(nombre: "Persona 1", apellido: "Apellido 1"),
    Persona(nombre: "Persona 2", apellido: "Apellido 2"),
    Persona(nombre: "Persona 3", apellido: "Apellido 3"),
    Persona(nombre: "Persona 4", apellido: "Apellido 4")
    
]
array.forEach { humano in
    if let persona = humano as? Persona {
        print(persona.nombre)
    }
}
