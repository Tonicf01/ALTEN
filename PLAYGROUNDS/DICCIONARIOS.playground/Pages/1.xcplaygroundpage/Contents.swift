
import Foundation

//Probando con diccionarios
//se almacena clave valor
//nos permite acceder a los valores a trabes de una clave (ejem: base de datos)
struct Persona{
    var nombre: String
    var apellido: String
}
//esto anterior sería lo mismo que....
var persona: [String: String] = ["nombre": "rafael", "apellido": "lopez"]




var dict: [String: String] = ["nombre": "rafael", "apellido": "lopez"]

//añadimos elemento a diccionario
dict["dni"] = "53310983H"
//sobreescribir un valor
dict["nombre"] = "Juan"
print(dict)

//acceder a un valor
print(dict["nombre"] as Any)

for key in dict{
    print (key)
}


//borrar elementos del diccionario
dict.removeValue(forKey: "apellido")
for key in dict{
    print (key)
}

//consultamos el número de elementos del diccionario
print(dict.count)










//Probando con set
//Similar al array , pero no es ordenado y solo puede almacenar datos distintos
//declarando un array
//funciones igual que array en general
var set1 : Set<Int> = []
var set2 : Set = [1, 2, 3, 4, 5, 6]

for item in set2{
    print (item)
}

print (set2.count)

set2.removeFirst()
print (set2)
set2.remove(4)
print(set2)

