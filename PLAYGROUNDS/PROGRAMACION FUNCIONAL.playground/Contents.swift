import UIKit
//swift es un lenguaje funcional: lenguaje que permite usar las funciones como tipo de datos o parametros (clousures)

var closure: (String) -> Void

// forEach
do {
    let items = [1, 5, 3, 11, 87]
    items.forEach { numero in
        print(numero)
    }
}

print("========")
// map permite transformar los tipos de datos del array a otro tipo de dato

do {
    let items = [1, 5, 3, 11, 87]
    items.map { n in
        "Es el número \(n)"//el numero lo transformamos aun string
    }.forEach {//podemos concatenar mas funciones de primer nivel
        print($0)
    }
}

print("========")

// compactMap, la diferencia con map es que devuelve un tipo de elemento que puede ser opcional
do {
    let items: [Int?] = [1, 5, nil, 3, 11, nil, 87]
    print(items.count)
    items.compactMap {
        if let n = $0 {
            return "Es el \(n)"
        } else {
            return nil//finalmente nos elimina los nulos del array
        }
    }.forEach {
        print($0)//nos devuelve un array sin los nulos
    }
}

print("========")

// flatMap
do {
    let items = [[1, 2], [3, 4], [8, 9]]//creamos un array de arrays de enteros
    print("count: \(items.count)")//nos devuelve 3 elementos
    items.flatMap {
        $0
    }.forEach {
        print($0)//nos devuelve todos los elementos de dentro de los arrays
    }
}

print("========")

// reduce ayuda a reducir todos los elementos en uno solo
do {
    let items: [Int] = [1, 5, 3, 11, 87]
//    let result = items.reduce(0) {
//        $0 + $1
//    }
    
//    func +(_ n1: Int, _ n2: Int) -> Int {
//
//    }
    func suma(n1: Int, n2: Int) -> Int {
        return n1 + n2
    }
    
    let result1 = items.reduce(0, suma(n1:n2:))
    let result2 = items.reduce(0, +)//nos los suma todos, esto seria similar a la funcion anterior mas result1
    print("Suma 1: \(result1)")
    print("Suma 2: \(result2)")
}

print("========")

// filter nos ayuda a filtrar
do {
    let items = [1, 2, 5, 6, 3, 11, 87]
    items.filter {
        $0 % 2 == 1//añadimos la condicion que queramos
    }.forEach {
        print($0)//lo recorremos y nos muestra los numeros pares en este caso
    }
}

print("========")
// sorted se utiliza para ordenar
do {
    let items = [1, 2, 5, 6, 3, 11, 87]
    
    items.sorted {
        $0 > $1//en este caso de menos a mayor si se pone > seria al contrario
    }.forEach {
        print($0)//lo recorre y nos lo muestra ordenado
    }
}

print("========")

// contains
do {
    let items = [1, 2, 5, 6, 3, 11, 87]
    let result1 = items.contains {//nos devuelve un valor booleano
        $0 == 11
    }
    print("Contains 1: \(result1)")//true
    
    let result2 = items.contains {
        $0 == 63
    }
    print("Contains 1: \(result2)")//false
}

print("========")


// allSatisfy: si todos los elementos de un array satisfacen una condición
//devuelve un booleano
do {
    let items = [1, 2, 5, 6, 3, 11, 87]
    let result1 = items.allSatisfy {
        $0 % 2 == 0//le estamos preguntando si stodos son pares
    }
    print("AllSatisfy 1: \(result1)")//devuelve false
    
    let result2 = items.allSatisfy {
        $0 < 100
    }
    print("AllSatisfy 2: \(result2)")//devuelve true
}


print("========")
// removeAll: borrar todo o todo según una condicion
do {
    var items = [1, 2, 5, 6, 3, 11, 87]
    items.removeAll {
        $0 % 2 == 0//eliminar todos los elementos según la condicion que escojamos
    }
    items.forEach {
        print($0)// nos mostraria todos los impares porque ha eliminado los pares
    }
}

print("========")


// drop: elimina del PRINCIPIO del array los elementos que cumplan una condición
do {
    let items = [1, 7, 2, 5, 6, 3, 11, 87]
    items.drop {
        $0 % 2 == 1
    }.forEach {
        print($0)
    }
}

print("========")

// prefix es al contrario del drop muestra los elementos que devuelven true
do {
    let items = [1, 7, 2, 5, 6, 3, 11, 87]
    items.prefix {
        $0 % 2 == 1
    }.forEach {
        print($0)
    }
}

print("========")


// first
do {
    let items = [1, 7, 2, 5, 6, 3, 11, 87]
    
    let result = items.first {
        $0 % 2 == 0//devuelve el primer elemento que sea par
    }
    
    if let result = result {
        print("first: \(result)")//devuelve un 2
    }
}

print("========")
// last  es el contrario a first
do {
    let items = [1, 7, 2, 5, 6, 3, 11, 87]
    
    let result = items.last {
        $0 % 2 == 0
    }
    
    if let result = result {
        print("last: \(result)")//
    }
}

print("========")

//podemos concatenar funciones sin problemas

do {
    let items = [1, 7, nil, 2, 5, 6, 3, nil, 11, 87]
    items.compactMap {
        $0
    }.filter {
        $0 % 2 == 1
    }.sorted {
        $0 > $1
    }.map {
        return "Es el número \($0)"
    }.forEach {
        print($0)
    }
}
