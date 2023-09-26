
import Foundation

//tipos por valor y por referencia


//tipos por valor (struct)
struct resolution {
    var height: Int
    var width: Int
    
    init(height: Int, width: Int) {
        self.height = height
        self.width = width
    }
}
var pantalla = resolution(height: 1080, width: 720)
pantalla.width = 1920

var pantalla2 = pantalla
pantalla2.width = 850

var proyector = pantalla // coge el valor pero son variables totalmente distintas
proyector.height = 2048

print("pantalla: \(pantalla)")//al ser por valor el cambio en proyector no afecta a pantalla
print("proyector: \(proyector)")//al ser por valor proyector coge los valores de pantalla y pueden ser modificados sin afectar a pantalla

//tipos por valor (enum)
enum color{
    case red
    case yellow
    case blue
    case green
}
let favouriteColor = color.blue
switch favouriteColor {
case .red:
    print("Mi color favorito es el rojo")
case .yellow:
    print("Mi color favorito es el amarillo")
case .blue:
    print("Mi color favorito es el azul")
case .green:
    print("Mi color favorito es el verde")
}







//tipos por referencia (class)
class resolution1 {
    var height: Int
    var width: Int
    
    init(height: Int, width: Int) {
        self.height = height
        self.width = width
    }
}
var pantalla1 = resolution1(height: 1080, width: 720)
pantalla1.width = 1920

var pantalla3 = pantalla1
pantalla3.width = 850

print(pantalla1.width)
print(pantalla3.width)

var proyector1 = pantalla1 // coge el valor y se convierten en la misma variable
proyector1.height = 2048

print("pantalla: \(pantalla1.height) - \(pantalla1.width)")//al ser poreferencia el cambio en proyector si afecta a pantalla
print("proyector: \(proyector1.height) - \(proyector1.width)")//al ser por referencia proyector coge los valores de pantalla y pueden ser modificados afectando a pantalla


class Person{
    var name: String
    var surname: String
    var age: Int
    
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}
let person1 = Person(name: "Antonio", surname: "Cantos", age: 40)

print ("El alumno se llama \(person1.name) con appelido \(person1.surname) y edad \(person1.age)")
