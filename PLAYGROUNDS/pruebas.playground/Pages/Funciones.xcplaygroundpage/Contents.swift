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
//es una función anónima
//bloque de código que podemos almacenar en variables
/*
 { (parametros) -> (tipo devuelto) in
 Implementación
 }
 */
//una función es un closure con nombre
//se crea sobre una variable

var imprimir = { () -> Void in
    print("----")
    print("hello")
    print("world")
    print("----")
}
imprimir()


var pruebaConParametros: (String, String) -> String = { (nombre: String, apellidos: String)-> String in
    return "Nombre completo: \(nombre) \(apellidos)"
}
print(pruebaConParametros("Antonio", "Cantos"))

//abreviamos lo anterior
var pruebaConParametrosAbreviado: (String, String) -> String = {
    return "Nombre completo: \($0) \($1)" // si no tenemos nombre de parametros lo llamamos por la posición
}
print(pruebaConParametros("Antonio", "Cantos"))


var numeros = [1, 2, 3, 4, 5]
numeros.sorted { numero1, numero2 in
    numero1 > numero2
}
