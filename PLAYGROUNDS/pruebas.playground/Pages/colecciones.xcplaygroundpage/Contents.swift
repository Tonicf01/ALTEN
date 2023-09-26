
import Foundation
//probando creación de arrays
//dentro del array no puede haber tipo de datos diferentes
//se pueden repetir valores
//conjunto ordenado

var array: [String] = ["coche", "casa", "moto"]

//añadir un elemento a un array
array.append("bicicleta")

//comprobar elementos de un array
print (array.count)

//crear un array vacio
var array1 = [Int]()
var array11 : [Int] = []

//con if comprobar si array está vacío o tiene elementos dentro
if array.isEmpty{
    print ("el array no contiene ningun elemento")
}else {
    print ("el array tiene \(array.count) elementos ")
}
//añadir un elemento a una posición determinada del array
array.insert("avión", at: 3)
print(array)

//eliminar elemento de un array
var eliminar = array.removeFirst()

//averiguamos el contenido de un espacio determinado del array
var busqueda = array [3]
print (busqueda)

//recorrer un array 1
for item in array{
    print (item)
}

//recorrer un array 2

array.forEach { item in
    print (item)
}

//filtrar un array segun lo que necesitemos
var array2 = [1, 2, 3, 4, 5, 6]
array2.filter { item in
    if item < 3{
        return true
    }else{
        return false
    }
}.forEach { item in
        print (item)
}














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
print(dict["nombre"])

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
