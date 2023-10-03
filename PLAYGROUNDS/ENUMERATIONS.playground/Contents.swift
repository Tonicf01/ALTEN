import UIKit

//tipo de dato por valor
//Se usan para representar grupo de valores que tienen relacion entre si y con un numero acotado de opciones
do{
    enum PruebaEnum {
        case opcion1
        case opcion2
        case opcion3
    }
    var prueba1: PruebaEnum = PruebaEnum.opcion1
    print(prueba1)
    
}
//-----------------------------------
print("------------------------")
do{
    enum Dirección {
        case norte
        case sur
        case este
        case oeste
    }
    let direccion: Dirección = Dirección.sur
    switch direccion {
        
    case .norte:
        print("Ha elegido norte")
    case .sur:
        print("Ha elegido sur")
    case .este:
        print("Ha elegido este")
    case .oeste:
        print("Ha elegido oeste")
        
    }
    //-----------------------------------
    print("------------------------")
    
    
    //    podemos hacerlo de forma similar con un if
    if direccion == Dirección.oeste {
        print("es correcto")
    }else {
        print("es incorrecto")
    }
    
    //    otra opcion de hacerlo sin poner todos los casos
    switch direccion {
        
    case .norte:
        print("Ha elegido norte")
    default:
        print("es otra direccin")
        
        
    }
}
//-----------------------------------
print("------------------------")

//podemos crearlos anidados dentro de clases o clases
do {
    struct Noticia {
        enum Tipo {
            case noticia
            case opinion
            case pilitica
            case deporte
        }
        
        var titulo: String
        var autor: String
        var tipo: Tipo
    }
    var tipo1: Noticia.Tipo = .noticia
    print(tipo1)
}
//-----------------------------------
print("------------------------")
do {
    struct Noticia {
        enum Tipo: String {//pueden ser de un tipo determinado como string o int
            case noticia = "n"
            case opinion = "o"
            case pilitica = "p"
            case deporte = "d"
        }
        
        var titulo: String
        var autor: String
        var tipo: Tipo
    }
    var tipo1: Noticia.Tipo = .noticia
    print("el tipo de la noticia es \(tipo1.rawValue)")//valor real del enumerador
}
//-----------------------------------
print("------------------------")
do {
    struct Noticia {
        enum Tipo: Int {//pueden ser de un tipo determinado como string o int
            case noticia = 15
            case opinion = 67
            case pilitica = 46
            case deporte = 96
        }
        
        var titulo: String
        var autor: String
        var tipo: Tipo
    }
    var tipo1: Noticia.Tipo = .noticia
    print("el tipo de la noticia es \(tipo1.rawValue)")//valor real del enumerador
}
//-----------------------------------
print("------------------------")
do {
    enum Dirección {
        case norte(latitud: Double, longitud: Double)
        case sur(latitud: Double, longitud: Double)
        case este(latitud: Double, longitud: Double)
        case oeste(latitud: Double, longitud: Double)
        case none
    }
    var direccion1 = Dirección.norte(latitud: 3.11, longitud: 44.67)
    switch direccion1 {
        
    case .norte(let latitud, let longitud):
        print("norte: \(latitud) - \(longitud)")
    case .sur(let latitud, let longitud):
        print("norte: \(latitud) - \(longitud)")
    case .este(let latitud, let longitud):
        print("norte: \(latitud) - \(longitud)")
    case .oeste(let latitud, let longitud):
        print("norte: \(latitud) - \(longitud)")
    case .none:
        print("sin rumbo")
    }
    
}
//-----------------------------------
print("------------------------")
do {
    enum Noticia {
        case opinion
        case deportes
        case nombre
        //no se puede crear variables de un tipo var nombre: String
        //permite la creación de funciones
        func tipoNoticia() -> String {
            switch self {
                
            case .opinion:
                return "opinion"
            case .deportes:
                return "deportes"
            case .nombre:
                return "nombre"
            }
        }
    }
    
    var result1 = Noticia.deportes
    print(result1)//se puede hacer asi o llamando directamente a la funcion como a continuación
    print(result1.tipoNoticia())
}

//-----------------------------------
print("------------------------")
protocol RepresentableEnTexto {
    func texto() -> String
}


enum Pelicula {
    case accion
    case animacion
    case drama
    case terror
}
extension Pelicula: RepresentableEnTexto {
    func texto() -> String {
        switch self {
            
        case .accion:
            return "pelicula de acción"
        case .animacion:
            return "pelicula de dibujos"

        case .drama:
            return "pelicula de llorar"

        case .terror:
            return "pelicula de miedo"

        }
    }
}
var pelicula1 = Pelicula.drama
print(pelicula1.texto())
//dos manera de hacerlo
var pelicula2: RepresentableEnTexto = Pelicula.drama
print(pelicula2.texto())


