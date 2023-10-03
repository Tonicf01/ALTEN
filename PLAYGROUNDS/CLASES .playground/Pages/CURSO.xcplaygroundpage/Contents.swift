import UIKit

//Creamos clases cuando
//tipo de dato por referencia
do {
    class PruebaClase {
        var nombre: String = "Rafa"
    }
    
    var prueba1 = PruebaClase()
    var prueba2 = prueba1
    
    print(prueba1.nombre)
    print(prueba2.nombre)
    
    prueba1.nombre = "Miguel" //aplica el mismo valor a todas las variable a partir de aqui por se por referencia
    
    print(prueba1.nombre)
    print(prueba2.nombre)
}
//-----------------------------------
print("--------------------")

//las clases permiten la anidación, dentro de una clase se puede añadir otra
do{
    class ClaseNivel1 {
        class ClaseNivel2 {
            
        }
    }
    var pruebaNivel1 = ClaseNivel1()
    var pruevaNivel2 = ClaseNivel1.ClaseNivel2() //para acceder a ella debemos acceder primero a la de primer nivel
    
}

//--------------------------------
print("--------------------")
//una clase puede heredar de otra

protocol Seasson {}

do{
    class MediaItem {
        var nombre: String = "Juan"
    }
    
    class Film: MediaItem {
        var director: String = "Antonio"
    }
    class Director: MediaItem {
        var artist: String = "Javier"
    }
    var film = Film() //tendrá sus propiedades más todas las que tenga la clase padre
    print(film.director)
    print(film.nombre)
    
    class TVShow: MediaItem, Seasson { //primero clase base y luego protocolo
        
    }
    print("-----------------------")
    
    do{
        class Persona {
            var nombre: String
            var apellidos: String
            
            init() {
                nombre = "Antonio"
                apellidos = "Cantos"
            }
            init(nombre: String, apellidos: String) {
                self.nombre = nombre
                self.apellidos = apellidos
            }
        }
        
        var persona1 = Persona()
        print(persona1.nombre)
        
        var persona2 = Persona(nombre: "Juan", apellidos: "Sanchez")
        print(persona2.nombre)
    }
    
    
}
//-----------------------------------------
print("---------------------------")
do {
    class PruebaClase {
        var nombre: String = "Antonio"
        static var numeroIteraciones = 6
        
        
    }
    print(PruebaClase.numeroIteraciones)//para acceder a la estatica debe ser por medio de la clase
    
    var result = PruebaClase()//para acceder a la NO estática debemos iicializar
    print(result.nombre)
    
    
}
print("---------------")
//---------------------------------------------
//Si le quitamo el valor de las variables nos obliga a inicializar con init (constructor)
//
do {
    class MediaItem {
        var nombre: String
        
        init(nombre: String) {
            self.nombre = nombre
        }
    }
    
    class Film: MediaItem {
        var director: String
        
        init(director: String, nombre: String) {
            self.director = director
            super.init(nombre: nombre)//en los constructores de subclases debemos acceder con super. a la clase padre
        }
    }
    class Song: MediaItem {
        var artist: String
        
        init(artist: String, nombre: String) {
            self.artist = artist
            super.init(nombre: nombre)//en los constructores de subclases debemos acceder con super. a la clase padre
        }
    }
    var film = Film(director: "Almodovar", nombre: "Todo sobre mi madre")
    print(film.nombre)
}
//--------------------------------------------------
print("----------------------")

class Persona {
    var nombre: String
    var apellidos: String
    
    init(nombre: String, apellidos: String) {
        self.nombre = nombre
        self.apellidos = apellidos
    }
    func nombreCompleto() -> String {
        return "\(nombre) \(apellidos)"//Podemos crear una función para conseguir el mismo objetivo y reutilizar el código
    }
}
let persona1 = Persona(nombre: "Antonio", apellidos: "Cantos")
print(persona1.nombre, persona1.apellidos)

print(persona1.nombreCompleto())//Accedemos a la función y nos muestra el mismo resultado

//--------------------------------------------------
//EXTENSIONES: UNA FORMA DE AÑADIR FUNCIONALIDAD A UN TIPO DE DATO

print("----------------------")
do{
    class Persona {
        var nombre: String
        var apellidos: String
        
        init(nombre: String, apellidos: String) {
            self.nombre = nombre
            self.apellidos = apellidos
        }
        
    }
    let persona1 = Persona(nombre: "Antonio", apellidos: "Cantos")
    print(persona1.nombre, persona1.apellidos)
    
    
    //creamos una funcion fuera de la clase por medio de extension
    
//    extension Persona {//el error se refiere a que no puede estar dentro de un do, debe estar en primer nivel
//        func nombreCompleto() -> String {
//            return "\(nombre) \(apellidos)"
        }
//    }
    
    
//    print(persona1.nombreCompleto())//Accedemos a la función y nos muestra el mismo resultado
//}

print("---------------")
//---------------------------------------------

do {
    class MediaItem {
        var nombre: String
        
        init(nombre: String) {
            self.nombre = nombre
        }
    }
    
    class Film: MediaItem {
        var director: String
        
        init(director: String, nombre: String) {
            self.director = director
            super.init(nombre: nombre)//en los constructores de subclases debemos acceder con super. a la clase padre
        }
    }
    class Song: MediaItem {
        var artist: String
        
        init(artist: String, nombre: String) {
            self.artist = artist
            super.init(nombre: nombre)//en los constructores de subclases debemos acceder con super. a la clase padre
        }
    }
    let array: [MediaItem] = [
        Film(director: "Director 1", nombre: "Película 1"),
        Film(director: "Director 2", nombre: "Película 2"),
        Film(director: "Director 3", nombre: "Película 3"),
        Song(artist: "Artista 1", nombre: "Canción 1"),
        Song(artist: "Artista 2", nombre: "Canción 2"),
        Song(artist: "Artista 3", nombre: "Canción 3")

    ]
//    recorremos con un foreach y si es una pelicula muestrame director
    array.forEach { item in
        if let item = item as? Film {// hacemos una comprobación y con as (casting)
            print("película: \(item.director)")
        }else if let item = item as? Song {
            print("película: \(item.artist)")
        }
        if item is Film {
            print("Es una película")
        }else if item is Song {
            print("Es una canción")
        }
    }
}


