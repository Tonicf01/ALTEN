import UIKit

//ESTATICOS VS INSTANCIA

class Prueba {
//    estaticos (creamos una variable de tipo estática)
//    el valor de la variable estatica puede ser modificada para todo el mundo
//    la clase tambien puede ser static
    static var nombre: String = "Antonio estático"
    
//    instancia
    var apellidos: String = "Cantos instancia"
}
//para acceder a la variable estatica nombre: nombre de la clase.variable
print(Prueba.nombre)

//para acceder a la variable de instancia primero he de inicializar la clase y acceder a la variable usando la variable recien creada
let miVariable = Prueba()
print(miVariable.apellidos)


Prueba.nombre = "Miguel estático"//a partir de aquie su valor será este
print(Prueba.nombre)


let miVariable1 = Prueba()
print(miVariable1.apellidos)
miVariable1.apellidos = "Falcón Instancia"//hemos modificado el valor aquí
print(miVariable1.apellidos)

let miVariable2 = Prueba()
print(miVariable2.apellidos)//Sigue teniendo el valor del principio
