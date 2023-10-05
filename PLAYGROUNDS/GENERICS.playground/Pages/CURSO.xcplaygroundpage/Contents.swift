import UIKit

//permite generar funciones genericas

struct Stack<T> {//declaracion de un generico de un tipo inventado t
    var items: [T]//array del tipo t inventado
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}
var stackInt = Stack(items: [1, 2, 3, 4])//esto ya es automaticamente un stack de enteros
stackInt.push(5)
print(stackInt.items)
print(stackInt.pop())
print(stackInt.items)

print("-----")
var stackString = Stack(items: ["1", "2", "3", "4"])//esto ya es automaticamente un stack de Strings
stackString.push("5")
print(stackInt.items)
print(stackInt.pop())
print(stackInt.items)

print("-----")

func multiplier (by multiplier: Int, number: Int) -> Int {
    return multiplier * number
}
print(multiplier(by: 2, number: 5))
