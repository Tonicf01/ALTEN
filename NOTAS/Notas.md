

CLASE: Representarentidades o conceptos
       Contiene variable y funciones / atributos y metodos
       Sirve para crear posteriormente objetos = instanciar una clase
--------------------------------------------------
DEPENDENCIA: Una clase b utiliza un método de la clase a, uno seriía dependencia del otro.
----------------------------------------------------
INSTANCIAR: Crear un objeto a partir de una clase o estructura
            Se crean llamando al constructor o inicializador
            Una vez instanciado podemos llamar a sus métodos
-----------------------------------------------
ITERAR: Repetir un proceso varias veces
        Recorrer o repetir una operación varias veces
        
--------------------------------------------------------
INICIALIZAR: Crear una instancia de la clase
-----------------------------------------------
INTERFAZ: 1. parte visual de la aplicació (lo que ve el usuario)
          2. Conjunto de reglas y protocolos que permite que diferentes componentes se comuniquen entre si  
-----------------------------------------------
FUNCION O MÉTODO: Bloque de código que hace una función o tarea determinada (rehutilización)
                  Método: funciones en POO, se definen dentro de una clase y representan el comportamiento del objeto, acceden y modifican los atributos de este.
                  Los CLOSURES con funciones sin nombre
                  Se pueden pasar a las variables como parametros
------------------------------------------------
ALIAS: Darle un alias o nombre a un tipo que nosotros ayamos creado
------------------------------------------------
NIVELES DE ACCESO:
1 PUBLIC: (la menos restrictiva) se puede utilizar desde cualquier parte
2 INTERNAL: (por defecto) accesible por todo el módulo (la aplicación)
3 FILEPRIVATE: solo se puede llamar desde dentro del fichero al que pertenece el fichero
4 PRIVATE: (la mas restrictiva) solo puede ser invocada desde el ambito al que pertenece
          
---------------------------------------------------------
CAMELCASE: Nombre compuesto poniendo en mayuscula la primera letra del segundo ejem: resultadoSuma
-----------------------------------------------
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
----------------------------------------------
DIFERENCIA ENTRE ERROR DE COMPILACION Y EJECUCION:
1.- COMPILACION: Durante la compilación, errores de sintaxis, escritura, falta de variables. No se ejecuta hasta que se resulvan todos los fallos porque no compila
2.- EJECUCION: Durante la ejecución del programa, problemas con la lógica del programa, ejem: división por cero. Compilará correctamente pero arrojará una excepción.
----------------------------------------------
ESTRUCTURAS TIPO POR VALOR Y POR REFERENCIA (hace referencia al espacio que ocupa cada variable)
1.- POR VALOR: Aunque una variable coja el valor de otra variable y este sea modificado, no modifica el valor de la primera. Siguen siendo dos variables distintas que ocupan un espacio distinto (etruct)(enum)
2.- POR REFERENCIA: Si la variable coge el valor de otra variable y este es modificado si cambia el valor de la primera. Ocupan el mismo espacio en disco y por lo tanto tienen el mismo valor (class)
----------------------------------------------
SWIFT: lenguaje orientado a protocolos, se hace de forma escalable
----------------------------------------------
PROTOCOLO: Es lo mismo que en otros lenguajes una interfaz
           Un contrato en el que vamos a indicar que para cumplir el protocolo hay que implementar lo que hay dentro.
           Se pueden implementar cosas nuevas pero hay que cumplir si so si las que mande el protocol
---------------------------------------------
EXTENSION: Podemos crear una función o init fuera de una clase y aún así acceder a ella.
           No podríamos crear variables nuevas
-----------------------------------------------------
ANY: Es un tipo que representa un valor de cualquier tipo (no es una práctica recomendada)
ANYOBJECT: Es un tipo que representa un valor de cualquier instancia de clase (no es una practica recomendada)           
----------------------------------------------------
STRUCTS: Tipos por valor
         NO permiten la herencia
         Esta pensado para que una vez creado no sea modificado (son mas seguros)
        Apple dice que por defecto se ha de usar STRUCTS!!!!
-----------------------------------------------------

CLASS: Tipos por referencia
         SI permiten la herencia
        Apple dice que por defecto se ha de usar STRUCTS!!!! Cuando se trabaja con obtc o modelado de datos
-----------------------------------------------------
ENUMERADORES: Se utilizan cuando queremos representar un numero de valores que tienen relación entre sí.
              Número acotado de opciones, util para controlar opciones
-----------------------------------------------------
OPERADORES BASICOS: 
Asignación: =
Aritméticos
+
-
*
/
Asignación compuesta
+=
-=
*=
/=
Resto
%
Comparación
==
!=
<
>
<=
>=
Comparación de identidad (sólo para tipos por referencia)
===
Ternario
? :
Coalescencia nula
??
Para devolver un valor por defecto cuando trabajamos con opcionales
Rangos
Rango cerrado
0…100
Rango abierto
0..<100
Rango de un sentido
...100
0...
Lógicos
&&
Se sustituye por coma (,) cuando usamos optional binding
!
||
No permitido en optional binding
-------------------------------------------------------
ASYN-AWAIT: La asincronía se utiliza principalmente al llamar a servicios web.
            Nos permite ejecutar una tarea que tarda más de lo normal en un hilo distinto al principal para no bloquear las tareas normales sin problema
--------------------------------------------------------
JSON: Una serie de reglas para que los datos vengan con una estructura por sistemas moviles, backen-frontend-
      Se compone de 3 partes, clave-valor, llaves y corchetes englobandolo todo.
      PAGINA: jsoneditor para poner bien estructurados y bonitos los json y sean bien interpretados.
      [] arrays
      {} objetos
      Datos de tipo simple
