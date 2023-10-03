
import Foundation
/*
 Ejercicio 1: Creación y Acceso a Diccionarios

 Crea un diccionario llamado diccionarioFrutas que asocie nombres de frutas con sus colores. Por ejemplo, "Manzana" es roja.
 Accede al color de una fruta específica en el diccionario y guárdalo en una variable llamada colorManzana.
 Imprime colorManzana en la consola.
 Ejercicio 2: Agregar y Eliminar Elementos de un Diccionario

 Agrega una nueva fruta al diccionario junto con su color.
 Elimina una fruta existente del diccionario.
 Imprime el diccionario resultante en la consola.
 Ejercicio 3: Iteración en un Diccionario

 Crea un diccionario que represente un inventario de productos en una tienda. Cada clave es el nombre de un producto y el valor es su precio.
 Utiliza un bucle for-in para recorrer el diccionario e imprimir el nombre y el precio de cada producto.
 Ejercicio 4: Modificación de Valores en un Diccionario

 Crea un diccionario de contactos que asocie nombres de personas con sus números de teléfono.
 Modifica el número de teléfono de un contacto existente en el diccionario.
 Imprime el diccionario resultante en la consola.
 Ejercicio 5: Búsqueda y Verificación en un Diccionario

 Crea un diccionario que represente un menú de un restaurante, donde las claves son nombres de platos y los valores son sus precios.
 Utiliza el método contains para verificar si un plato específico está en el menú.
 Imprime un mensaje que indique si el plato está en el menú o no.
 */
var diccionarioFrutas = ["manzana": "Roja", "platano": "Amarillo", "uva": "morada", "sandia": "verde"]
var colorManzana = diccionarioFrutas["manzana"]//accedemos al valor de la clave manzana
print(colorManzana)

if var color = colorManzana {
    print("el color de la manzana es \(color)")
    
}else {
    print("la mandana no se encuentra en nuestro diccionario")
}

print("--------------------------")

diccionarioFrutas["pera"] = "verde"//añadimos elemento al diccionario
print(diccionarioFrutas)

diccionarioFrutas.removeValue(forKey: "uva")//borramos un elemento del diccionario por su clave
print(diccionarioFrutas)

print("--------------------------")

var inventario = ["tornillo": 100, "tuerca": 75, "escuadras":40]
for key in inventario {
    print(key)//recorremos el diccionario
}
for (producto, cantidad) in inventario {
    print("Hay \(cantidad) unidades de \(producto)")// recorremos el diccionario asociando una variable a la clave y al valor
}

print("--------------------------")

var contactos = ["Antonio": 111111111, "Juan": 222222222, "Miguel": 333333333, "Eloy": 444444444]
contactos["Antonio"] = 695180185//modificamos el valor de un diccionario
print(contactos)

print("--------------------------")

var menu = ["pizza": 12.99, "pasta": 21.56, "provolone": 4.15]
var buscarPlato = "pizza"//queremos buscar si  pizza esta en el menu
if var precio = menu[buscarPlato]{
    print("el menu tiene \(buscarPlato) y su precio es \(precio) ")
}else {
    print("el menu no contiene \(buscarPlato)")
}
