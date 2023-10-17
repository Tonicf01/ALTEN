
 UIKIT: Framework para la creación de aplicaciones moviles
 CREACION DE NUEVO PROYECTO:
 1 Eliminamos ViewController y Main.storyboard
 2 Creamos nueva pantalla -> cocoa touch class -> class: nombre, subclass: UIViewController, marcamos crear el XIB
 3 Importante que tenga el tarjet
 4 En info.plist expandir todo y eliminar storyboard Name y guardar 
 5 Dejar en blanco de tarjets main interface
 6 Cada componente tenemos que añadirlo a esceneDelegate
 
-------------------------------------------------------------------------------------------------------------

1. **AppDelegate:** Es donde indicamos cual es la pantalla principal en la que estamos trabajando

   El `AppDelegate` es una clase que actúa como el punto de entrada principal de tu aplicación. Se encarga de gestionar eventos y acciones globales de la aplicación. Algunas de sus responsabilidades clave incluyen:

   - Manejar el ciclo de vida de la aplicación, como cuando se inicia, se suspende, se reanuda o se cierra.
   - Gestionar eventos importantes, como notificaciones push y eventos de localización.
   - Configurar y personalizar la inicialización de la aplicación, como la configuración de ventanas y controladores de vista iniciales.

   En resumen, el `AppDelegate` se encarga de tareas que son comunes a toda la aplicación y no están relacionadas específicamente con una ventana o vista en particular.

2. **SceneDelegate:**

   El `SceneDelegate` es una clase introducida en iOS 13 para manejar múltiples ventanas o escenas en una aplicación. Cada ventana representa una interfaz de usuario independiente en la aplicación. Algunas de sus responsabilidades clave incluyen:

   - Gestionar múltiples ventanas o escenas en la aplicación. Esto es útil cuando tienes aplicaciones que pueden mostrar varias ventanas a la vez en iPads y en iPhones más nuevos.
   - Controlar la interfaz de usuario específica de una escena, como configurar controladores de vista y responder a eventos relacionados con esa ventana en particular.
   - Manejar la transición entre escenas, como cuando el usuario cambia entre aplicaciones o ventanas en la multitarea.

   -------------------------------------------------------------------------------------------------------------

* Delegate:

El patrón delegate se utiliza para permitir que un objeto proporcione información y responda a eventos o acciones en nombre de otro objeto.
El objeto que actúa como delegado implementa un protocolo específico (por ejemplo, UIPickerViewDelegate, UITableViewDelegate) que define los métodos que el objeto delegado debe implementar para manejar eventos y proporcionar información.
Ejemplos de uso incluyen responder a selecciones de elementos en una tabla o lista, gestionar eventos de teclado, o recibir notificaciones de ciclo de vida de una vista.
El objeto delegado se establece generalmente a través de la propiedad delegate del objeto que necesita delegar su funcionalidad.

* DataSource:

El patrón dataSource se utiliza para proporcionar datos a un componente de interfaz de usuario, como una tabla (UITableView) o una colección (UICollectionView).
El objeto que actúa como fuente de datos implementa un protocolo específico (por ejemplo, UITableViewDataSource) que define los métodos para proporcionar datos, como el número de filas, celdas individuales y secciones.
Los métodos del dataSource se utilizan para personalizar la apariencia y el contenido de los componentes de la interfaz de usuario, como la representación de celdas en una tabla o elementos en una colección.
El objeto fuente de datos se establece generalmente a través de la propiedad dataSource del componente de interfaz de usuario.

En resumen, delegate se utiliza para gestionar eventos y acciones, mientras que dataSource se utiliza para proporcionar datos y personalizar la apariencia de los componentes de interfaz de usuario. Ambos patrones son esenciales para la programación de aplicaciones iOS y permiten una separación eficiente de responsabilidades, lo que conduce a un código más limpio y mantenible.

----------------------------------------------------------------------------------------------------------------
   
   CICLO DE VIDA DE UIKit:
   
1. View Controller Creado: Cuando se muestra una pantalla en la aplicación, se crea un View Controller. Este es el controlador de esa vista.
INIT

2. View Did Load: Después de que el View Controller se crea, se llama al método viewDidLoad(). Aquí puedes configurar la interfaz de usuario y realizar tareas de inicialización.

3. View Will Appear: Antes de que la vista sea visible en la pantalla, se llama a viewWillAppear(_:). Aquí puedes realizar tareas que deben ocurrir antes de que la vista aparezca, como animaciones previas.

4. View Did Appear: Cuando la vista es completamente visible en la pantalla, se llama a viewDidAppear(_:). Aquí puedes realizar acciones que deben ocurrir después de que la vista se muestre.

5. Interacción del Usuario: Los usuarios interactúan con la vista a través de gestos, toques y entradas. Esto puede incluir tocar botones, deslizar, escribir texto, etc.

6. View Will Disappear: Antes de que la vista desaparezca, se llama a viewWillDisappear(_:). Aquí puedes realizar tareas antes de que la vista se oculte, como guardar datos o detener animaciones.

7. View Did Disappear: Después de que la vista desaparece completamente de la pantalla, se llama a viewDidDisappear(_:). Puedes realizar tareas de limpieza aquí.

8. View Controller Liberado: Si la vista ya no es necesaria, el View Controller puede ser liberado de la memoria para ahorrar recursos.

9. deInit: liberar el espacio de la clase en caso de necesitarlo
 
** prepareForReuse: limpia la celda para que no de fallos extraños

En resumen, el ciclo de vida de UIKit se trata de la creación, configuración, aparición, interacción, desaparición y liberación de vistas y controladores en una aplicación iOS. Cada uno de estos eventos te permite realizar acciones específicas en momentos precisos durante la vida de una vista o pantalla en tu aplicación.
   ----------------------------------------------------------------------------------------
    LISTADO (List View o TableView):

Un "listado" se refiere a una vista que muestra una lista de elementos, a menudo en una estructura de tabla (UITableView) en aplicaciones iOS.
En una vista de listado, los elementos suelen mostrarse en una lista vertical, donde cada elemento de la lista es un "celda" que puede contener texto, imágenes u otros elementos.
Los listados son comunes en situaciones donde se necesita mostrar una colección de elementos de manera eficiente, como listas de contactos, mensajes, productos, etc.
Los elementos del listado son a menudo elementos seleccionables que pueden llevar a vistas de detalle cuando se tocan.

    DETALLE (Detail View):

Un "detalle" se refiere a una vista que muestra información más detallada o específica sobre un elemento seleccionado de un listado.
En una vista de detalle, se muestra información más completa sobre un elemento en particular, como texto detallado, imágenes ampliadas u otros detalles relacionados con ese elemento.
Los detalles son comunes en aplicaciones que muestran información detallada sobre elementos de un listado, como la vista de un contacto en una aplicación de contactos o la vista de un producto en una aplicación de compras en línea.
Los detalles suelen mostrarse después de que un elemento del listado ha sido seleccionado o tocado.

En resumen, la diferencia clave entre un listado y un detalle en UIKit es que un listado muestra una colección de elementos, generalmente en una lista, mientras que un detalle muestra información detallada sobre un elemento específico seleccionado de ese listado. Ambos tipos de vistas son fundamentales en el diseño de aplicaciones iOS, ya que permiten a los usuarios ver una visión general de la información y profundizar en detalles cuando sea necesario.
   
----------------------------------------------------------------------------------------------------------------   
 
* FIJAR ALGO EN INTERFAZ: trailing(derecha), leading(izquierda)
* Cada componente es una pantalla vacia. (tenemos que añairla a EsceneDelegate)
* IMPORTANTE CONSEJO: Crear nueva vista la pongo debajo de la principal, a la principal se le desactiva Safe Area Layout Guide y se le activan a la nueva y todo lo demas se construye dentro de la nueva, con margenes 0 a todos los lados y se le cambia el color a transparente
* IMPORTANTISIMO: @IBOutlet se añade antes de las variables para que esta nos la muestr en la parte de interfaz. Si la arrastramos desde la derecha al menu grafico ya nos permite modificarla desde el view controller.
* En interfaz se posicionan los componentes pero los valores, alineación etc se hace a codigo. Si nos ponemos encima del dibujito en la parte grafica nos da el nombre de la propiedad a utilizar con el código.
* Si nos ponemos encima del componente determinado, picamos arriba "3 rayas" que es el asistente y se nos abre código pudiendo arrastrar el componente dentro del código para darle ahi las propiedades.
* En código declaramos las variables con @IBOutlet delante, debajo creamos una función para ese componente y llamamos a las variables dandole las caracteristicas que queramos.
* Buscar fuentes: la descargamos, creamos una carpeta en proyecto font y las copiamos ahi haciendo click en tarjet y luego hay que añadirlas a info.plist
* Las imagenes las añadimos en assets
* Aspectos lo tocamos a código para quesea reutilizable
* Todo lo que eliminemos en codigo hay que borrarlo posteriormente de interfaz también (asociaciones) para que no de error (min 26 de COMPONENTES INTERMEDIOS)
* Outlets Delegate: se interactua con un componente(acceder a las noticias) Hay que marcarlos en la interface
* Outlets dataSource: cargar datos(cargar noticias en una table por ejemplo)
* Para añadir el outlet arratramos desde la interfaz al código como se muestra en los videos
* En setup() añadimos la configuracion y caracteristicas del componente
* @IBOutlet: se usa para establecer conexiones entre elementos de la interfaz de usuario y propiedades en el código fuente, lo que te permite acceder y modificar esos elementos desde el código. Declara las variables
* @IBAction se utiliza para crear métodos que se ejecutan en respuesta a eventos generados por elementos de la interfaz de usuario, lo que te permite definir la lógica que debe ocurrir cuando un usuario interactúa con la vista. 

-------------------------------------------------------------------------------------------------------------


COMPONENTES BASICOS: 

1: VIEW: vistas utilizadas como contenedores viewCustom...(para programar)

2: LABEL: Texto lbCustom...(para programar)

3: IMAGEVIEW: Componente para añadir imagen imgCustom...(para programar)
   - Nombre de la variable.image = UIImage(named: "nombre de la imagen en assets")
    ejem: imgCustom.image = UIImage(named: "spiderman")
   - Con la propiedad .frame podemos obtener el alto y ancho de una imagen
   
4: ACTIVITI INDICATOR: (Logo loading)...activityIndicatorCustom...(para programar)
    - Si le añadimos la funcion .starAnimating girara
    
5: STACK VIEW: HORIZONTAL Y VERTICAL: nos permite añadir componentes sin tener que indicar tantas constrains. Son vistas de posicionamiento y añadimos los componentes dentro.
    - Se pueden utilizar stacks dentro de otros stacks
    - Todo lo que añadamos dentro del stack hay que añadirlo tambien al codigo igual que lo anterior.

-------------------------------------------------------------------------------------------------------------


COMPONENTES INTERMEDIOS(interactuar con el usuario y responda a un evento): 

6: HACER QUE UN LABEL RESPONDA A UN EVENTO: añadimos un label o a lo que sea + tap gesture recognizer, lo arrastramos dentro del label
    - Importante que tengan su @IBOutlet y su IBAction
    - Importante que tenga la pestaña de interacción de usuario activada, sino no va a funcionar!!!
    - Importante que llamemos a las funciones en el viewDidLoad() debajo de la clase
    - Hay diferentes tipos de tab segun el tipo de pulsación o movimiento queramos
    
7: BUTTON: Porlo general utilizamos por defecto aunque hay algunos con algo de estilo ya predefinido
btnCustom (nombre)
    - Importante que tengan su @IBOutlet y su IBAction
    - Importante que tenga la pestaña de interacción de usuario activada, sino no va a funcionar!!!
    - Importante que llamemos a las funciones en el viewDidLoad() debajo de la clase
    - Para personalizarlo cambiarlo el type a custom
    - En el mismo sitio de loas relaciones en interfaz tenemos los tipos de eventos de los botones (acciones)
    - Podemos añadirle distintas propiedades según los estados, normal/resaltado/seleted/focused....

8: TEXTFIELD: Permite abrir el teclado y escribir en el espacio que se le indique. Solo una linea
tfCustom.. (nombre)
    - Importante que tengan su @IBOutlet y su IBAction
    - Importante que tenga la pestaña de interacción de usuario activada, sino no va a funcionar!!!
    - Importante que llamemos a las funciones en el viewDidLoad() debajo de la clase
    - Min 45 video
    - Delegate: junto a eventos

9: TEXTVIEW: Un text fiel de más de una linea o un label con reconocimiento de contenido, link, telf, calendario...
tvCustom. (nombre)
    - Importante que tengan su @IBOutlet y su IBAction
    - Importante que tenga la pestaña de interacción de usuario activada, sino no va a funcionar!!!
    - Importante que llamemos a las funciones en el viewDidLoad() debajo de la clase
    - Min 1.20h video
    - Delegate: junto a eventos

10: SLIDER: Linea que se puede mover de un lado a otro, brillo, volumen, tamaño de letra...
sliderCustom
    - Importante que tengan su @IBOutlet y su IBAction
    - Importante que tenga la pestaña de interacción de usuario activada, sino no va a funcionar!!!
    - Importante que llamemos a las funciones en el viewDidLoad() debajo de la clase
    - Min 1.20h video
    - Delegate: junto a eventos
    
11: PICKER VIEW: Desplegable con opciones (tiene muy poca personalización)
pickerView.. (nombre)
    - Importante que tengan su @IBOutlet y su IBAction
    - Importante que tenga la pestaña de interacción de usuario activada, sino no va a funcionar!!!
    - Importante que llamemos a las funciones en el viewDidLoad() debajo de la clase
    - Min 1.45h video
    
12: DATE PICKER: Parecido al anterior pero con fecha y horas se le pueden cambiar los estilos a tipos calendario...
    - Importante que tengan su @IBOutlet y su IBAction
    - Importante que tenga la pestaña de interacción de usuario activada, sino no va a funcionar!!!
    - Importante que llamemos a las funciones en el viewDidLoad() debajo de la clase

12: SEGMENT CONTROL: Son pestañas seleccionable, para escoger una opcion u otra
segmentControl... (nombre)
    - Importante que tengan su @IBOutlet y su IBAction
    - Importante que tenga la pestaña de interacción de usuario activada, sino no va a funcionar!!!
    - Importante que llamemos a las funciones en el viewDidLoad() debajo de la clase
    - Nuemero de segmentos en interfaz no permite añadir el numero de pestañas que queremos y sus titulos
    
13: PAGE CONTROL: las dos o mas bolitas que aparecen en la pantalla en la parte inferior para cambiar de una página a otra
pageControl...(nombre)
    - Importante que tengan su @IBOutlet y su IBAction
    - Importante que tenga la pestaña de interacción de usuario activada, sino no va a funcionar!!!
    - Importante que llamemos a las funciones en el viewDidLoad() debajo de la clase
    - Podemos darle el número de páginas, y la pagina actual

-------------------------------------------------------------------------------------------------------------


COMPONENTES AVANZADOS(interactuar con el usuario y responda a un evento): 

14: SCROLL VIEW: Para el deslizamiento de la pantalla ya que no lo trae de serie. Todo lo que pongamos dentro del scrollView se mueve en caso de lo que tengamos dentro (label..)no quepa dentro.
    - Content Size (tamaño del contenido)
    - Frame (el tamaño de la ventana de scroll)
    - Hay que indicar muy bien los constrain
15: TABBAR: Componente que nos permite tener en la parte inferior pestañas con todas las pantallas

16: PAGEVIEW: Añadimos un viewControllerdentro de otro pasar paginas arrastrando

17: TABLAS: Comoponente que añade celdas 
tableView..(nombre)
    - Recomendado añadir un enumerador con los tipos de elementos a introducir.
    - Tenemos un array de elementos
    - Antes de pintar nada importantisimo registrar celdas.
                registerCell()
    - Declaramos el delegate y el dataSource
        tableViewCustom.delegate = self
        tableViewCustom.dataSource = self
        
    - Método con numero de secciones
    - metodo con numero de elementos en la seción
    - La vista que nos va a mostrar al entrar en el bucle

18: COLLECTION: Igual que las celdas pero con más posibilidades de tamaños y formas.
    - Página cocoa controls: componentes y layouts visuales para reutilizarlos
    - Página Awesome ios: directorio de librerias de interes

19: MAPS: para añadir mapas 
customMap
    - Tenemos que importar mapKit

20: ALERTS: Mostrar alertas en la pantalla
    - la unica diferencia entre actionSheet y alert es la forma en la que se muestra en pantalla

----------------------------------------------------------------------------------------------------------

PRESENTACION Y NAVEGACION

- UINavigationController:
Este componente es una pila de navegación que nos permite navegar hacia adelante y atrás
Push: para navegar hacia adelante y añadir la nueva pantalla a la pila de navegación
Pop: para navegar hacia atrás y eliminar la pantalla de la pila de navegación

- Modal:
Este componente inicia un nuevo contexto de presentación de pantallas por encima de todo lo demás. Cuando se oculta, se sigue manteniendo el contexto que había anteriormente.
Present: para mostrar la nueva pantalla sobre un nuevo contexto
Dismiss: para ocultar el contexto en el que se encuentra la pantalla

--------------------------------------------------------------------------------------------------------------




