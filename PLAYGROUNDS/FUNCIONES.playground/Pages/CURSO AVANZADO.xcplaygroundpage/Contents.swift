import Foundation

func decirHola() { //sin parametro y no devuelve nada
    print("hello world")
}

decirHola()
print("-----------")

func mostrarSaludo(nombre: String) -> String {//con parametros y devuelve un String
    return "Hola, \(nombre)"
}

print(mostrarSaludo(nombre: "Antonio"))

print("-----------")

func cargarDatos() throws -> Data {//comprobamos si carga una URL concreta con excepciones
    return try Data(contentsOf: URL(string: "https:/algo.com")!)
}
do {
    try cargarDatos()
} catch {
    print(error)
}
print("-----------")

func devuelveNumero() -> Int {//devuelve un solo valor
   return Int.random(in: 0...100)
}
print(devuelveNumero())

print("-----------")

func devuelveNumeros() -> (Int, Int) {//devuelve una tupla con dos valores
   return (Int.random(in: 0...100), Int.random(in: 0...100))
}
print(devuelveNumeros())

print("-----------")

var a: Int = 10
var b: Int = 20

func intercambiaDatos(a: inout Int, b: inout Int) {//cambiamos el valor de una variable por otra
    let c = a//inout hace que el let sea var
    a = b
    b = c
}
print("a: \(a)")
print("a: \(b)")
intercambiaDatos(a: &a, b: &b)
print("a: \(a)")
print("a: \(b)")


print("-----------")
func suma(_ numeros: Int...) -> Int {
    var result = 0
    for numero in numeros {
        result += numero
    }
    return result
}
print(suma(2, 3, 44, 6, 5, 89))
print("-----------")
//las funciones son parametros
//podemos aplicar funciones a variables
