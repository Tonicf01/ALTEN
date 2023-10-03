import UIKit

var a: Int = 2
var b: Int = 3
var c: Int = 5
c = 7 //cambiamos el valor de la variable c

var resultado = a + b - 5
print(resultado)
print("el resultado es \(resultado)")
print("el resultado de sumar \(a) + \(b) - \(c) es \(resultado)")

print("------")

var stringMultilinea = """
Cuando escribimos una cadena de más
de una línea podemos hacerlo
con 3 comillas dobles a cada lado
"""
print(stringMultilinea)

//Son tipos de datos por valor (swift los trata como struct)
//Int
var numero1: Int = 4
print (numero1)
print("------")

//Float
var float1: Float = 4.5
print (float1)
print("------")

//Double igual que float pero almacena 64 bits en lugar de 32
var double1: Double = 4.6
print("------")

//Bool
var boolean1: Bool = true
var boolean2: Bool = false
var boolean3 = true
print (boolean1)
print (boolean2)
print (boolean3)
print("------")

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

var pi = 3.1416
var edad = 40

var numero: Int = 42
var decimal: Double = 3.14
var numeroDecimal = Double(numero)// realizar la conversion
var decimalEntero = Int(decimal)// realizar la conversion

print(numeroDecimal)
print(decimalEntero)

do{
    var nombre = "Antonio"
    var apellido = "Cantos"
    var nombreCompleto = nombre + " " + apellido //concatenar
    print(nombreCompleto)
}
do{
    var contador: Int = 0
    contador = contador + 1
    print(contador)
    contador = contador - 1
    print(contador)

    var puntuacion: Int = 85
    if puntuacion >= 90 {
        print("Excelente")
    }else if puntuacion >= 70 && puntuacion < 90 {
        print("Aprobado")
    }else if puntuacion < 70 {
        print("Reprobado")
    }
/* tambien se podría haber hecho así:
 
 var mensaje: String

 var puntuacion: Int = 85
    if puntuacion >= 90 {
mensaje = "Excelente"
 }else if puntuacion >= 70 && puntuacion < 90 {
 mensaje = "Aprobado"
    }else if puntuacion < 70 {
 mensaje = "Reprobado"
    }
 print("mensaje de puntuació: \(mensaje)")*/
}

do{
    var numeroEntero: Int = 42
    var cadena: String = "123"
    if var numeroDesdeCadena = Int(cadena){
        print("hemos convertido la cadena \(cadena)")
    }else {
        print("no hemos podido convertirlo")
    }
    
    var nombre: String = "Antonio"
    var apellido: String = "Cantos"
    var nombreCompleto = nombre + " " + apellido
    print(nombreCompleto)
    
    var numero1: Int = 5
    var numero2: Int = 6
    var multiplicacion = numero1 * numero2
    var division = numero1 / numero2
    print(multiplicacion)
    print(division)
    
    
    var contador: Int = 30
    contador += 1
    contador -= 3
    print(contador)
    
    var puntuacion: Int = 75
    var mensaje: String
    if puntuacion >= 90 {
        mensaje = "Excelente"
    } else if puntuacion >= 70 && < 90 {
        mensaje = "Aprobado"
    } else {
        mensaje = "Reprobado"
    }
    print(mensaje)
}
