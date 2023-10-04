
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

protocol Mago {
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
