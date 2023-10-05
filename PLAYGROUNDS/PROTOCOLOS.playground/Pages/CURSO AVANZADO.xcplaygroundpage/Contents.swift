
import Foundation

//Es un contrato que define las variables o funciones que deben cumplir

protocol DesarroladoriOS {
    func picarCodigoSwift()
    func analizarRequisitos()
    func leerCodigo()
}

protocol DesarroladorAndroid {
    func picarCodigoKotlin()
    func analizarRequisitos()
    func leerCodigo()
}

class Persona: DesarroladoriOS, DesarroladorAndroid {
    func analizarRequisitos() {
        
    }
    
    func picarCodigoKotlin() {
    
    }
    
    func picarCodigoSwift() {
    
    }
    
    func analizar() {
    
    }
    
    func leerCodigo() {
    
    }
    
    
}

var desarrolladores: [DesarroladoriOS] = [Persona(), Persona()]

desarrolladores.forEach {
    $0.picarCodigoSwift()
}

var desarrolladores2: [DesarroladoriOS & DesarroladorAndroid] = [Persona(), Persona()]

desarrolladores2.forEach {
    $0.picarCodigoSwift()
    $0.picarCodigoKotlin()
}

//-----------------------------------------------------

protocol Mago: AnyObject {//restriccion que tiene que ser de cualquier tipo pero de objeto, es por referencia así que solo lo puede implementar una clase y no un struct
    func lanzarHechizo()
        
}

protocol MagoSupremo: Mago {//este protocolo hereda del anterior
    func lanzarHechizoSupremo()
}

class Chaman: MagoSupremo {//esta clase hereda tanto de un protocolo como del otro
    func lanzarHechizoSupremo() {
        
    }
    
    func lanzarHechizo() {
        
    }
    
    
}


//================
// Equatable, Hashable, Comparable

// Equatable, Hashable
// - struct: si todas sus propiedades son Equatable, Hashable, el struct completo tambien lo será
// - enum: si no tiene tipos asociados
// - enum: donde los tipos asociados sean Equatable, Hashable

// Comparable
// - enum: sin rawValue o que sus tipos asociados sean Comparable

struct Noticia: Equatable, Hashable {
    var titulo: String
    var descripcion: String
}

var noticia1 = Noticia(titulo: "1", descripcion: "1")
var noticia2 = Noticia(titulo: "2", descripcion: "")

if noticia1 == noticia2 {
    print("Son iguales")
} else {
    print("No son iguales")
}
