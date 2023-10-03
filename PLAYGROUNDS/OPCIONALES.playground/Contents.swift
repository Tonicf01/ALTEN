import UIKit


//ningún tipo en swift puede ser nulo
//? indica que el tipo String puede existir o no (opcional)
//nil (null) u opcional son enumeradores
//nil seria lo mismo que poner optional.none
var nombre: String? = nil
nombre = "Antonio"

print(nombre)

//esto es lo mismo que lo anterior
var nombre1: String? = Optional.none
nombre1 = .none //igual nulo
print(nombre1)
nombre1 = .some("Jose")
print(nombre1)


nombre = nil
switch nombre {
    
case .none:
    print("no tiene nada")
case .some(let item):
    print("tiene almacenado \(item)")
}

nombre = "Antonio"
switch nombre {
    
case .none:
    print("no tiene nada")
case .some(let item):
    print("tiene almacenado \(item)")
}

//ejemplo de tipos opcionales
var edad: Int? = nil
var status: Bool? = nil
var array: [String]? = nil
var tupla: (String, String)? = nil
var otraTupla: (String, Int?, Bool, String?)? = nil
var closure: (() -> Void)? = nil
var otroClosure: ((Int?, String, Bool?) -> String?)? = nil


//el sistema no puede trabajar con un valor que sea nulo
var saluda: String? = nil
var texto: String

saluda = "Hello World"

texto = saluda!// con la exclamacion evitamos el fallo y le decimos que acceda al valor pero está prohibido hacerlo y en este caso daria un error en la app y se llama FORCED UNWRAPING


print(texto)


//optional Binding  (desempaquetado seguro)
//dentro de un if desenpaquetando no se puede hacer con && ni ||. Se utiliza la ,
do {
    var nombre: String?
    nombre = "Juanito"
    
    var texto: String
    if let nombre = nombre {
        texto = nombre
        print(texto)
    }else{
        print("No existe el texto")
    }
    //dentro de un if desenpaquetando no se puede hacer con && ni ||. Se utiliza la ,
    if let nombre = nombre, nombre == "Juanito" {
        print("Es Juanito")
    }
}

do {
    var nombre: String? = nil
//    print (nombre) no sepodria imprimir porque es un opcional
    print(nombre ?? "Javier")// si es nulo dale este valor
//    return array?.count ?? 0  si el array fuera nulo dale este valor
    
}

//OPTIONAL CHAINING
do {
    var numeros: [Int]? = nil
    print(numeros?.count ?? 0)//cada vez que accedo aalgo opcional he de indicarle que es opcional
}
