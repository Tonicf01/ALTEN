import UIKit
/*Ejercicio 1: Definición de una Clase

Crea una clase llamada Persona que tenga dos propiedades: nombre (String) y edad (Int). Añade un inicializador personalizado para la clase que permita asignar valores a estas propiedades al crear una instancia. Luego, crea una instancia de Persona e imprime sus propiedades.

Ejercicio 2: Métodos de Clase

Agrega un método a la clase Persona llamado saludar() que imprima un saludo utilizando el nombre de la persona. Llama a este método en la instancia que creaste en el ejercicio anterior.

Ejercicio 3: Herencia de Clases

Crea una clase llamada Estudiante que herede de la clase Persona. Agrega una propiedad adicional llamada grado (String) que represente el nivel de grado del estudiante (por ejemplo, "Primero", "Segundo", etc.). Define un inicializador personalizado para la clase Estudiante que incluya la propiedad grado. Crea una instancia de Estudiante e imprime sus propiedades y el saludo.

Ejercicio 4: Sobrescritura de Métodos

Sobrescribe el método saludar() en la clase Estudiante para que incluya el grado del estudiante en el saludo. Llama al método saludar() en la instancia de Estudiante.

Ejercicio 5: Polimorfismo

Crea una función llamada presentar(_:) que acepte una instancia de Persona como parámetro y llame al método saludar() en esa instancia. Llama a esta función pasando tanto la instancia de Persona como la instancia de Estudiante y observa cómo el polimorfismo permite que el método correcto se llame en función del tipo real del objeto.

Estos ejercicios te ayudarán a practicar la definición de clases, la herencia, la sobrescritura de métodos y el polimorfismo en Swift.*/
 
class Persona {
    var nombre: String
    var edad: Int
    
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
    
    func saludar() {
        print("Saludos a \(nombre) con edad \(edad)")
    }
}
    let persona1 = Persona(nombre: "Antonio", edad: 40)
persona1.saludar()


    
class Estudiante: Persona {
    var grado: String
    
    init(nombre: String, edad: Int, grado: String) {
        self.grado = grado
        super.init(nombre: nombre, edad: edad)
    }
    override func saludar() {
        print("Saludos a \(nombre) con edad \(edad) y estudiando \(grado)")
    }
    
}
let persona2 = Estudiante(nombre: "Juan", edad: 25, grado: "iOS")
persona2.saludar()


func presentar (_ persona: Persona) {
    persona.saludar()
}
