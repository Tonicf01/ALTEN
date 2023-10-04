import UIKit

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
