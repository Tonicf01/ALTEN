CONCEPTOS, DEFINICIONES Y NOTAS

CLASE: Representarentidades o conceptos
       Contiene variable y funciones / atributos y metodos
       Sirve para crear posteriormente objetos = instanciar una clase

DEPENDENCIA: Una clase b utiliza un método de la clase a, uno seriía dependencia del otro.

INSTANCIAR: Crear un objeto a partir de una clase o estructura
            Se crean llamando al constructor o inicializador
            Una vez instanciado podemos llamar a sus métodos

ITERAR: Repetir un proceso varias veces
        Recorrer o repetir una operación varias veces

INTERFAZ: 1. parte visual de la aplicació (lo que ve el usuario)
          2. Conjunto de reglas y protocolos que permite que diferentes componentes se comuniquen entre si  
          
FUNCION O MÉTODO: Bloque de código que hace una función o tarea determinada (rehutilización)
                  Método: funciones en POO, se definen dentro de una clase y representan el comportamiento del objeto, acceden y modifican los atributos de este.
          

26.09.2023

CAMELCASE: Nombre compuesto poniendo en mayuscula la primera letra del segundo ejem: resultadoSuma

SOBRECARGA DE FUNCIONES O METODOS: dos funciones con el mismo nombre pero con distintos parámetros, operaciones similares y el compilador o interprete es el que determina cual se tiene que invocar según los argumentos recibidos.
class calculadora{
 func suma(a:Int, b:Int) -> Int {
 return a + b
}
func suma(a:Int, b:Int, c:Int) -> Int {
return a + b + c
}
}
var calc = calculadora()
var result1 = calc.suma(1, 2, 3) //llamará a la segunda funcion
var result2 = calc.suma(1, 2) //lamara a la primera funcion

DIFERENCIA ENTRE ERROR DE COMPILACION Y EJECUCION:
COMPILACION: Durante la compilación, errores de sintaxis, escritura, falta de variables. No se ejecuta hasta que se resulvan todos los fallos porque no compila
EJECUCION: Durante la ejecución del programa, problemas con la lógica del programa, ejem: división por cero. Compilará correctamente pero arrojará una excepción.
