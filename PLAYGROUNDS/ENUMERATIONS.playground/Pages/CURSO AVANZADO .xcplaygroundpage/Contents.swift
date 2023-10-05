
import Foundation

import UIKit

//tipo de dato como estructura por valor

enum Direccion {
    func algo() {
        switch self {//self hace referencia al propio enumerador
        case .norte:
            break
        case .sur:
            break
        case .este:
            break
        case .oeste:
            break
        }
    }
    case norte
    case sur
    case este
    case oeste
}

var direccion = Direccion.este// asignacion

switch direccion {
case .norte:
    break
case .sur:
    break
default:
    print("Es otra dirección")//esta seria la opcion escogida
}

enum Analitica: String {//pueden ser de un tipo en concreto como String
    case listado = "Es un listado"
    case detalle = "Es un detalle"
}

print(Analitica.listado.rawValue)//variable que se crea prque es de un tipo concreto
print(Analitica.detalle.rawValue)//variable que se crea prque es de un tipo concreto

enum EstadoPedido: Int {//pueden ser de un tipo en concreto como Int
    case pedido = 6
    case enPreparacion = 3
    case enviado = 88
    case entregado = 77
}

print(EstadoPedido.pedido.rawValue)//variable que se crea prque es de un tipo concreto
print(EstadoPedido.entregado.rawValue)//variable que se crea prque es de un tipo concreto

//protocolo caseIterable: permite obtener los casos y recorrerlos
extension EstadoPedido: CaseIterable {
    
}

EstadoPedido.allCases.forEach {
    print($0)
}

//VALORES ASOCIADOS

// Noticias, videos, anuncios
enum Celda: RawRepresentable {
    case noticia(String, String)
    case video(titulo: String, url: String)
    case anuncio(String)
//    case anuncio(String, String) <- No se permite la sobrecarga
    
    var rawValue: String {
        switch self {
        case .noticia(let titulo, let descipcion):
            return "RawValue: Es una noticia con \(titulo) y \(descipcion)"
        case .video(let titulo, let url):
            return "RawValue: Es un video con \(titulo) y \(url)"
        case .anuncio(let texto):
            return "RawValue: Es un anuncio con \(texto)"
        }
    }
    
    init?(rawValue: String) {
        switch rawValue {
        case "anuncio":
            self = Celda.anuncio("--")
        default:
            return nil
        }
    }
}

let celda = Celda(rawValue: "anuncio")

print(celda)
if let celda = celda {
    print(celda.rawValue)
}
var datos: [Celda] = [Celda]()

datos.append(Celda.noticia("Noticia 1", "Descripcion 1"))
datos.append(Celda.noticia("Noticia 2", "Descripcion 2"))
datos.append(.anuncio("anuncio 1"))
datos.append(.video(titulo: "Video 1", url: "url video 1"))
datos.append(.video(titulo: "Video 2", url: "url video 2"))
datos.append(.anuncio("anuncio 2"))



print("============")
datos.forEach{
    switch $0 {
    case .noticia(let titulo, let descipcion):
        print("Es una noticia con \(titulo) y \(descipcion)")
    case .video(let titulo, let url):
        print("Es un video con \(titulo) y \(url)")
    case .anuncio(let texto):
        print("Es un anuncio con \(texto)")
    }
}

enum ExpresionAritmetica {
    case numero(Int)
    indirect case suma(ExpresionAritmetica, ExpresionAritmetica)
}

