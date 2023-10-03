import UIKit

//TIPOS POR VALOR (STRUCT   ENUM)

//STRUCT
struct resolution{
    var height: Int
    var widht: Int
    
    init(height: Int, widht: Int) {
        self.height = height
        self.widht = widht
    }
}
var pantallaSamsung = resolution(height: 1080, widht: 2089)
pantallaSamsung.widht = 1920

var pantallaLg = pantallaSamsung
pantallaLg.widht = 720 //coge el valor pero son variables totalmente distintas

print(pantallaSamsung)
print(pantallaLg)

print("-----------")

//ENUM
enum color {
    case red
    case blue
    case yellow
    case green
}

var favouriteColour = color.green

switch favouriteColour {
case .red:
    print("Mi color favorito es el rojo")

case .blue:
    print("Mi color favorito es el azul")

case .yellow:
    print("Mi color favorito es el amarillo")

case .green:
    print("Mi color favorito es el verde")

}
