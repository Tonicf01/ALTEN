
import Foundation

import UIKit

func saludar() async {
    do {
        try await Task.sleep(nanoseconds: 3_000_000_000)
        print("Hello world")
    } catch {
        print("Ha habido un error")
    }
        
}

func saludar2() {
    Task {
        print("Hello world")
    }
}

print("Empieza")//primero imprimira esto
Task {
    await saludar()//esto en tercer lugar ya que tarda 3 segundos en ejecutarse
    
}
print("Termina")//esto lo imprimira en segundo lugar

Task(priority: .userInitiated) {//podemos marcar la prioridad de la accion
    await saludar()
}





