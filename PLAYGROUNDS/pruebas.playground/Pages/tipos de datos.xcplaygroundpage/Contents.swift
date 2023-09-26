//: [Previous](@previous)

import Foundation
//Son tipos de datos por valor (swift los trata como struct)
//Int
var numero1: Int = 4
print (numero1)

//Float
var float1: Float = 4.5
print (float1)

//Double igual que float pero almacena 64 bits en lugar de 32
var double1: Double = 4.6

//Bool
var boolean1: Bool = true
var boolean2: Bool = false
var boolean3 = true
print (boolean1)
print (boolean2)
print (boolean3)

//String, salto de linea es \n
var texto: String = "la casa"
var texto1 = "la casa"
var textoMultilinea = """
probando una cadena de caracteres
de más de una
linea
"""
var textoSuma = "\(texto1) sumado a \(texto1)"
var textInterpolacion = "interpolacion \(texto1)"


print (texto)
print (texto1)
print (textoMultilinea)
print (textoSuma)
print (textInterpolacion)

//Array

//Dictionary



//Tuplas
//tipo de dato simple que agrupa más de un valor
//la utilizamos para que una funcion pueda devolvernos más de un valor
var tupla: (Int, Int) = (2,3)
print (tupla)
print (tupla.1) //para imprimir un elemento le indicamos la posición



