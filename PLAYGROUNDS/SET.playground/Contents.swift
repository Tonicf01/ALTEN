import UIKit

//Probando con set
//Similar al array , pero no es ordenado y solo puede almacenar datos distintos
//declarando un array
//funciones igual que array en general
var set1 : Set<Int> = []
var set2 : Set = [1, 2, 3, 4, 5, 6]

for item in set2{
    print (item)
}

print (set2.count)

set2.removeFirst()
print (set2)
set2.remove(4)
print(set2)
