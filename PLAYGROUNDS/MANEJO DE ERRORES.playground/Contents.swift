import UIKit
//Protocol: Error
struct MiErrorStruct: Error {
    var descripcion: String
}
func prueba() throws -> String {
    return "hello world"
}

func pruebaConError() throws -> String {
    throw MiErrorStruct(descripcion: "Ha ocurrido un error desconocido")
    return "hello world"
}
print(try prueba())

var result = try prueba()

struct Test {
    static func llamarPrueba(){
        let result = try? prueba()//try? devuleve un tipo opcional
        print(result)
    }
    static func llamarPrueba2(){
        do{
            let result = try prueba()
            print(result)
        } catch{
            print(error)
        }
    }
    static func llamarPrueba3(){
        do{
            let result = try pruebaConError()
            print(result)
        } catch{
            print(error)
        }
    }
    
}

Test.llamarPrueba()//al ser estática se llama por medio del nombre de la estructura.nombre de la funcion
Test.llamarPrueba2()
Test.llamarPrueba3()//muestra el error imprimiendo catch

//--------------------------
do {
    if let url = URL(string: "https://google.es") {
        _ = try Data(contentsOf: url)
        print("Es correcto")
    }
} catch {
    print(error)
}
do {
    if let url = URL(string: "sdfsdf:sfdsdf.es") {
        _ = try Data(contentsOf: url)
        print("Es correcto")
    }
} catch {
    print(error)
}
