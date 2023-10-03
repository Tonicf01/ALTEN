import UIKit

/*
 Ejercicio: Registro de Empleados

 Crea un programa Swift que gestione un registro de empleados. Deberás definir lo siguiente:

 Una clase Empleado con las siguientes propiedades:
 nombre (String)
 edad (Int)
 puesto (String)
 Una estructura Departamento con las siguientes propiedades:
 nombre (String)
 responsable (String)
 Una enumeración TipoContrato con los siguientes casos:
 indefinido
 temporal
 practicante
 Un protocolo Contratable que requiere la implementación de una función llamada firmarContrato(tipo: TipoContrato).
 Una función llamada contratarEmpleado que toma un objeto que conforma el protocolo Contratable, el nombre del departamento y el nombre del empleado. La función debe imprimir un mensaje que indique que el empleado ha sido contratado en el departamento especificado con un contrato del tipo correspondiente. Por ejemplo, "Juan ha sido contratado en el departamento de Ventas con un contrato indefinido".
 Crea instancias de empleados y departamentos, y contrata empleados utilizando la función contratarEmpleado.
 */
class Empleado {
    var nombre: String
    var edad: Int
    var puesto: String
    
    init(nombre: String, edad: Int, puesto: String) {
        self.nombre = nombre
        self.edad = edad
        self.puesto = puesto
    }
}
struct Departamento {
    var nombre: String
    var responsable: String
    
    init(nombre: String, responsable: String) {
        self.nombre = nombre
        self.responsable = responsable
    }
}
enum TipoContrato {
    case indefinido
    case temporal
    case practicante
}

protocol Contratable {
    func firmarContrato (tipo: TipoContrato) {
        
    }
}

extension Empleado: Contratable {
    func firmarContrato(tipo: TipoContrato) {
        <#code#>
    }
    
}
