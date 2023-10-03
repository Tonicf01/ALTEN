import UIKit

//el resultado de una función que normalmente debería ser utilizado (por ejemplo, almacenado en una variable o evaluado en una condición) puede ser descartado de manera segura sin generar una advertencia del compilador. Esto es útil cuando tienes una función que devuelve un valor, pero en algunos casos, es posible que no quieras o necesites utilizar ese valor de retorno.
@discardableResult
func guardarPersona() -> Bool {
    return true
}

guardarPersona()

// podemos utilizar esto desde lenguaje objc
@objc class pruebaClase: NSObject {
    @objc var nombre: String = "Antonio"
}

//defer: ejecuta su codigo lo último despues de haber ejecutado el bloque entero, así imprime primero el hello world
func saluda() {
    defer{
        print("-----")
        print("Bye")
        print("World")
        print("----")
    }
    
    print("-----")
    print("Hello")
    print("World")
    print("----")

}
saluda()


//do crea un ámbito nuevo y puedes crear dos veces la misma variable. Se utiliza para realizar pruebas y no tener que renombrar
do {
    var prueba = "hola"
}
do {
    var prueba = "hola"
}


// if #available() comprobar la versión del sistema en el que estamos
if #available(iOS 13, *) {
    print ("estamos en ios 13 o superior")
}
if #available(iOS 18, *) {
    print ("estamos en ios 13 o superior")
}//al ser la última versión disponible la 17 a partir de ahi no obtenemos respuesta

if #unavailable(iOS 18) {
    print ("estamos en ios 17 o inferior")
}// hace lo mismo que la anterior pero al contrario, comprueba que no existe, se le quita el asterisco

//if en tiempo de compilacion, un cliente te dice usa este id si estas probando y si estas en produccion utiliza este id, entonces usamos uno u otro en una posición u otra
#if DEBUG
    ddddddd //al no ser valido no se compila y salta al endif
    #endif
