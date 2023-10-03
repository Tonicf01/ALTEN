import UIKit

var a = 1
var b = 3
var c = 8

func suma(a: Int, b: Int) -> Int {
    return a + b
}
var result = suma(a: 5, b: 6)//Declaramos la variable que va a contener el resultado de la funcion y la invocamos
    
print(result)

print("---------")

func multiplicar(a: Int, b: Int, c: Int) -> Int {
    return a * b * c
}
var result1 = multiplicar(a: 4, b: 8, c: 2)
print(result1)

print("---------")

func saludar(nombre: String = "invitado") {//no necesita indicar el tipo que devuelve
    print("buenos días \(nombre) bienvenido a la fiesta")
}

saludar(nombre: "Antonio")// Invocamos a la funcion



print("---------")


//EJEMPLO DE SOBRECARGA DE MÉTODOS
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
