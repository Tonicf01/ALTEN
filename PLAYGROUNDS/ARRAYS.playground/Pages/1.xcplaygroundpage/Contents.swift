
import Foundation

/*
 Ejercicio 1: Acceso a Elementos en un Array

 Crea un array llamado nombres que contenga los nombres de algunos amigos tuyos.
 Accede al primer nombre en el array y guárdalo en una variable llamada primerNombre.
 Accede al último nombre en el array y guárdalo en una variable llamada ultimoNombre.
 Imprime primerNombre y ultimoNombre en la consola.
 Ejercicio 2: Agregar y Eliminar Elementos de un Array

 Crea un array de números enteros llamado numeros con algunos números de tu elección.
 Agrega un nuevo número al final del array.
 Elimina el segundo número del array.
 Imprime el array resultante en la consola.
 Ejercicio 3: Iteración en un Array

 Crea un array de números enteros llamado valores con al menos 5 números.
 Utiliza un bucle for-in para recorrer el array e imprimir cada número en la consola.
 Calcula la suma de todos los números en el array utilizando un bucle for-in y luego imprime la suma.
 Ejercicio 4: Filtrar Elementos en un Array

 Crea un array de números enteros llamado edades con edades de personas.
 Utiliza el método filter para crear un nuevo array llamado mayoresDe18 que contenga solo las edades mayores o iguales a 18.
 Imprime el array mayoresDe18 en la consola.
 Ejercicio 5: Ordenar un Array

 Crea un array de cadenas llamado nombres con los nombres de algunas ciudades.
 Utiliza el método sorted para ordenar el array alfabéticamente en orden ascendente.
 Imprime el array ordenado en la consola.
 Ejercicio 6: Búsqueda en un Array

 Crea un array de cadenas llamado frutas con nombres de frutas.
 Utiliza el método contains para verificar si el array contiene la cadena "Manzana".
 Imprime un mensaje que indique si la fruta "Manzana" está en el array o no
 */

var nombres = ["Antonio", "Juan", "Javier", "Mario", "Manuel", "Carlos"]

var primerNombre = nombres.first//accedemos al primer nombre
var primerNombre1 = nombres[0]//accedemos al primer nombre
print(primerNombre)
print(primerNombre1)

var ultimoNombre = nombres.last
var ultimoNombre1 = nombres[nombres.count - 1]
print(ultimoNombre)
print(ultimoNombre1)
print("-----------------------")
var numeros = [1, 3, 5, 6, 3, 9, 7, 9]
numeros.append(8)//añadimos un número al final del array
print(numeros)
numeros.remove(at: 1)//eliminamos la segunda posición del array
print(numeros)

print("-----------------------")

var enteros = [3, 5, 9, 6, 1, 5, 7]
for item in enteros {
    print(item)//recorremos el array
}
var suma = 0
for item in enteros {
    suma += item //sumamos los elementos que contiene el array
}
print("La suma de los elementos del array enteros es: \(suma)")

print("-----------------------")

var edades = [14, 87, 56, 40, 34, 28]
var mayores18 = edades.filter { $0 >= 18 }//$0 representa cada elemento y creamos un nuevo array solo con los valores mayores de 18 años
print("Las edades mayores de 18 años son: \(mayores18)")

print("-----------------------")

var ciudades = ["Sevilla", "Barcelona", "Madrid", "Bilbao", "Cordoba"]
var nombresOrdenados = ciudades.sorted()//creamos un nuevo array con los nombres ordenados alfabeticamente
print("Los nombres de ciudades ordenados: \(nombresOrdenados)")

print("-----------------------")

var frutas = ["manzana", "platano", "sandia", "melon", "uvas"]
frutas.contains("manzana")
if frutas.contains("manzana") {
    print("el array frutas contiene manzana")
}else {
    print("el array frutas no contiene manzana")
}

