import UIKit

//Tipos por referencia (CLASS)

class resolution {
    var height: Int
    var widht: Int
    
    init(height: Int, widht: Int) {
        self.height = height
        self.widht = widht
    }
    
}

var pantallaSamsung = resolution(height: 1080, widht: 720)
pantallaSamsung.widht = 980

var pantallaLg = pantallaSamsung
pantallaLg.widht = 2024// cambia el valor tanto de esta variable como de la que toma referencia

print(pantallaSamsung.widht)
print(pantallaLg.widht)


print("--------")


class persona{
    var nombre: String
    var edad: Int
    var telefono: Int
    var direccion: String
    
    init(nombre: String, edad: Int, telefono: Int, direccion: String) {
        self.nombre = nombre
        self.edad = edad
        self.telefono = telefono
        self.direccion = direccion
    }
}
let persona1 = persona(nombre: "Antonio", edad: 40, telefono: 695180185, direccion: "Dr. Fleming")

print("El alumno \(persona1.nombre) tiene \(persona1.edad) años, número de teléfono \(persona1.telefono) y vive en \(persona1.direccion)")

