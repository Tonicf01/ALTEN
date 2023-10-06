import UIKit

actor CuentaBancaria {//los actores aseguran que cualquier acceso a sus acciones o variables sean seguras. Regulan el acceso y solo se puede ejecutar una tarea en un hilo.
    nonisolated var nombre: String { "Mi cuenta" }
    var saldo: Int
    
    init(saldo: Int) {
        self.saldo = saldo
    }
    
    func retirarDinero(_ cantidad: Int) {
        guard (saldo - cantidad) >= 0 else { return }
        saldo -= cantidad
    }
    
    nonisolated func nombreCuenta() -> String {
        "El nombre de la cuenta es \(nombre)"
    }
}

var cuenta = CuentaBancaria(saldo: 100)

Task(priority: .background) {
    await cuenta.retirarDinero(80)//hacemos las llamadas con await porque actor implica async
    print("Saldo 1: \(await cuenta.saldo)")
    print(cuenta.nombre)
    print(cuenta.nombreCuenta())
}

Task(priority: .background) {
    await cuenta.retirarDinero(100)
    print("Saldo 2: \(await cuenta.saldo)")
}

//Data race

