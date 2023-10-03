//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/**
 Ejercicio 1: Condicional IF

 Crea una variable entera llamada edad y asígnale un valor.
 Utiliza una declaración if para verificar si la edad es mayor o igual a 18.
 Si la condición es verdadera, imprime "Eres mayor de edad" en la consola. Si es falsa, imprime "Eres menor de edad".
 Ejercicio 2: Condicional IF-ELSE

 Crea una variable entera llamada numero y asígnale un valor.
 Utiliza una declaración if para verificar si el numero es positivo.
 Si la condición es verdadera, imprime "El número es positivo". Si es falsa, imprime "El número no es positivo".
 Agrega una declaración else para imprimir "El número es cero" cuando el número sea igual a cero.
 Ejercicio 3: Condicional IF-ELSE IF-ELSE

 Crea una variable entera llamada puntuacion y asígnale un valor.
 Utiliza una estructura if-else if-else para determinar la calificación según la puntuación:
 Si puntuacion es mayor o igual a 90, imprime "Excelente".
 Si puntuacion es mayor o igual a 70 y menor que 90, imprime "Aprobado".
 En otros casos, imprime "Reprobado".
 Ejercicio 4: Operador Ternario

 Ejercicio 5: Condicional SWITCH

 Crea una variable llamada diaSemana y asígnale el nombre de un día de la semana en inglés (por ejemplo, "Monday").
 Utiliza una estructura switch para imprimir un mensaje específico según el día de la semana. Asegúrate de manejar al menos tres casos diferentes.
 Estos ejercicios te ayudarán a practicar el uso de condicionales en Swift. ¡Espero que te sean útiles! Si tienes alguna pregunta o necesitas más ejercicios, no dudes en preguntar.
 */

var edad: Int = 40
if edad < 18 {
    print("el alumno es menos de edad")
    
}else{
    print("el elumno es mayor de edad")
}
//-------------------
print("-------------")

var numero: Int = -1
if numero > 0 {
    print("el numero es positivo")
}else if numero < 0 {
    print("el número es negativo")
}else if numero == 0{
    print("el número es 0")
}
//-------------------
print("-------------")
var puntuacion: Int = 80
if puntuacion >= 90 {
    print ("la nota obtenida es un excelente")
}else if puntuacion >= 70 && puntuacion < 90 {
    print("la nota obtenida es notable")
}else {
    print("suspendido")
}
//-------------------
print("-------------")

var diaDeLaSemana: String = "Martes"
switch diaDeLaSemana {
case "Lunes":
    print("es lunes")
case "Martes":
    print("es martes")
case "Miercoles":
    print("es miercoles")
default:
    print("es otro dia de la semana")
}
