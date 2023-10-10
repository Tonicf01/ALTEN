//
//  ContentView.swift
//  PruebaDepuracion
//
//  Created by antonio.cantos on 9/10/23.
//

import SwiftUI
class Prueba {
    
}

struct ContentView: View {
    var nombre: String = "Antonio"
    var apellidos: String = "Cantos"
    var items = [1, 2, 3]
    var prueba = Prueba()
    var hola = "Hello World"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(hola)
            Button("Pulsa") {
                print("Botón pulsado")
                print("Muy Bien")
                print("Sabes depurar")
                items.filter {$0 < 10}.forEach { print($0)}
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
