import UIKit

//ARRAYS
//Declaración de un array
//Los datos deben ser del mismo tipo
//Es un conjunto de datos ordenado

// creación de un array vacio
var arrayVacio1 = [String]()
var arrayVacio2: [String] = []


var array1: [String] = ["futbol", "baloncesto", "tenis", "piragüismo"]
print("-------------")

//Añadimos un elemento al array1
array1.append("padel")
print(array1)
print("-------------")

//Añadimos un elemento en una posición determinada
array1.insert("hokey", at: 2)
print(array1)
print("-------------")

//Obtenemos el número de elemento de un array
var elements = array1.count
print(elements)
print("-------------")

//Borramos un elemento de una posición determinada del array
array1.remove(at: 3)
print(array1)
print("-------------")

//Recorremos el array
for item in array1{
    print(item)
}
print("-------------")

//buscar el contenido de una posición concreta dentro del array
var position = array1 [3]
print(position)
print("-------------")

//Comprobamos si un array esta vacio (if)
if array1.isEmpty{
    print("el array está vacio")
}else{
    print("el array tiene el siguiente contenido \(array1)")
}
print("-------------")

//Recorrer un array con un foreach
array1.forEach {item in
    print(item)
}

print("-------------")

//filtrar un array recorrer un array con foreach

var array2 = [1, 2, 3, 4, 5, 6, 7]
array2.filter { item in
    if item > 4 {
        return true
    }else {
        return false
    }
    
}.forEach { item in
    print(item)
}
