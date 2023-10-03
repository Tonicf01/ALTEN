import UIKit

//Probando con diccionarios
//se almacena clave valor
//nos permite acceder a los valores a trabes de una clave (ejem: base de datos)
//Creación de un diccionario
var persona: [String: String] = ["nombre": "Antonio", "apellido": "Cantos"]

//Esto anterior sería lo mismo que crear esto:
struct Persona {
    var nombre: String
    var apellido: String
}

//Creamos un diccionario
var dict: [String: String] = ["nombre": "Antonio", "apellido": "Cantos"]
print(dict)

print("--------")

//añadir un elemento al diccionario
dict["dni"] = "53310982H"
print(dict)

print("--------")
//sobreescribir un valor del diccionario
dict["nombre"] = "Juan"
print(dict)

print("--------")

//consultar el número de elementos de un diccionario
print(dict.count)

print("--------")

//borrar un elemento del diccionario
dict.removeValue(forKey: "apellido")
print(dict)

print("--------")

//recorremos un diccionario
for key in dict{
    print(key)
}
