import Foundation

/**
 Ejercicio 1: Función que Suma Dos Números

 Escribe una función llamada suma que tome dos números enteros como parámetros y devuelva su suma. Luego, llama a la función con algunos números y muestra el resultado.

 Ejercicio 2: Función que Encuentra el Máximo

 Escribe una función llamada encontrarMaximo que tome un array de números enteros como parámetro y devuelva el número más grande en el array. Luego, llama a la función con un array y muestra el resultado.

 Ejercicio 3: Función que Verifica si un Número es Par

 Escribe una función llamada esNumeroPar que tome un número entero como parámetro y devuelva true si es par y false si es impar. Luego, llama a la función con varios números y muestra el resultado.

 Ejercicio 4: Función que Calcula el Factorial

 Escribe una función llamada calcularFactorial que tome un número entero positivo como parámetro y devuelva su factorial. El factorial de un número es el producto de todos los números enteros positivos desde 1 hasta ese número. Luego, llama a la función con un número y muestra el resultado.

 Ejercicio 5: Función que Concatena Dos Cadenas

 Escribe una función llamada concatenarCadenas que tome dos cadenas de texto como parámetros y devuelva una nueva cadena que sea la concatenación de las dos cadenas originales. Luego, llama a la función con dos cadenas y muestra el resultado.
 */

func suma (a: Int, b: Int) -> Int {
    return a + b
}
var result = suma(a: 5, b: 8)
print(result)
print("el resultado de la suma es \(result)")

print("--------------")

func concatenaCadenas (a: String, b: String) -> String {
    return a + b
}
var texto1 = concatenaCadenas(a: "la casa de la playa ", b: "tiene humedades")
print(texto1)
//tambien se podría hacer
var cadena1 = "la casa de la playa"
var cadena2 = " tiene humedades"
var texto2 = concatenaCadenas(a: cadena1, b: cadena2)
print(texto2)
