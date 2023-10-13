
 UIKIT: Framework para la creación de aplicaciones moviles
 CREACION DE NUEVO PROYECTO:
 1 Eliminamos ViewController y Main.storyboard
 2 Creamos nueva pantalla -> cocoa touch class -> class: nombre, subclass: UIViewController, marcamos crear el XIB
 3 Importante que tenga el tarjet
 4 En info.plist expandir todo y eliminar storyboard Name y guardar 
 5 Dejar en blanco de tarjets main interface
 6 Cada componente tenemos que añadirlo a esceneDelegate
 
-------------------------------------------------------------------------------------------------------------

1. **AppDelegate:**

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
* Poner toda la pantalla en scroll view: 

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
