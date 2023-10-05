
import Foundation

protocol Container {
    associatedtype Item
    var array: [Item] { get }
    func imprimir()
}

struct Almacen<Item>: Container {
    var array: [Item]
    func imprimir() {
        print("No imprimo nada")
    }
}

extension Almacen where Item: Numeric {//podriamos hacer lo mismo para StringProtocol
    func imprimir() {
        array.forEach {
            print("Número: \($0)")
        }
    }
}



var almacen1 = Almacen(array: [1, 2, 3, 4, 5])
var almacen2 = Almacen(array: ["Hello", "World"])


almacen1.imprimir()
//almacen2 fallaria porque no cumple la condicion numerica de la extension
almacen2.imprimir()
