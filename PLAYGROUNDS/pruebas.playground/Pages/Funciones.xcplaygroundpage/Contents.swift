//: [Previous](@previous)

import Foundation


var a = 1
var b = 2
var c = 3
func suma(x: Int, y: Int) -> Int {
    return x + y
}

suma(x: 5, y: 10) //invocamos a la funcion
var result = suma(x: 5, y: 11) //declaramos variable que va a contener la invocacion de la funcion
print (result)

func multipicar(x: Int, y: Int) -> Int {
    return x * y
}
var result2 = multipicar(x: 5, y: 4)
print(result2)


func saludar(nombre: String = "invitado") {
    print ("buenos días \(nombre), como estas?")
}
saludar(nombre: "Antonio")

func longCadena (cadena:String) -> Int {
    return cadena.count
    
    
    
}
var longitud = longCadena(cadena: "Antonio")
print ("la longitud de esta cadena es de \(longitud)")


class calculadora{
 func suma(a:Int, b:Int) -> Int {
 return a + b
}
func suma(a:Int, b:Int, c:Int) -> Int {
return a + b + c
}
}
var calc = calculadora()
var resulta1 = calc.suma(a: 1, b: 2, c: 3) //llamará a la segunda funcion
var resulta2 = calc.suma(a: 1, b: 2) //lamara a la primera funcion

print(resulta1)
print(resulta2)





//closures
//bloque de c
