import UIKit

class Prueba {
    var task: Task<Void, Error>?//metemos todo en esta variable para ejecutarlo
    func saludar() async throws {
        self.task = Task {
            try? await Task.sleep(nanoseconds: 3_000_000_000)
            if Task.isCancelled {
                print("Está cancelada")
            }
            print("Hello world 1")
//            try Task.checkCancellation() comoprobamos si hay  cancelacion
            try? await Task.sleep(nanoseconds: 3_000_000_000)
            print("Hello world 2")
            try? await Task.sleep(nanoseconds: 3_000_000_000)
            print("Hello world 3")
            try? await Task.sleep(nanoseconds: 3_000_000_000)
            print("Hello world 4")
        }
        try await self.task?.value
    }
}

var prueba = Prueba()

Task {
    do {
        try await prueba.saludar()
    } catch {
        print(error)
    }
}
//con esto fallaria el try away asi que los print se verian todos a la vez en lugar de cada 3 segundos
Task {
    try? await Task.sleep(nanoseconds: 1_000_000_000)
    prueba.task?.cancel()//detenemos la ejecucion | cancelamos la ejecución
}

