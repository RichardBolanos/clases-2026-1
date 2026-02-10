# Guía Completa de Flutter para Equipos de Desarrollo
## Manual de Enseñanza - Ingeniería de Software

---

## Tabla de Contenidos

1. [Introducción a Flutter](#1-introducción-a-flutter)
2. [Arquitectura y Funcionamiento](#2-arquitectura-y-funcionamiento)
3. [Configuración del Entorno](#3-configuración-del-entorno)
4. [Fundamentos de Dart](#4-fundamentos-de-dart)
5. [Sistema de Widgets](#5-sistema-de-widgets)
6. [Layouts y Diseño](#6-layouts-y-diseño)
7. [Navegación y Rutas](#7-navegación-y-rutas)
8. [Gestión de Estado](#8-gestión-de-estado)
9. [Networking y APIs](#9-networking-y-apis)
10. [Persistencia de Datos](#10-persistencia-de-datos)
11. [Formularios y Validación](#11-formularios-y-validación)
12. [Animaciones](#12-animaciones)
13. [Testing](#13-testing)
14. [Arquitectura y Patrones](#14-arquitectura-y-patrones)
15. [Buenas Prácticas](#15-buenas-prácticas)
16. [Ejercicios Prácticos](#16-ejercicios-prácticos)

---

## 1. Introducción a Flutter

### 1.1 ¿Qué es Flutter?

Flutter es un **framework de UI multiplataforma** desarrollado por Google que permite crear aplicaciones nativas de alta calidad para:
- 📱 iOS y Android
- 🌐 Web
- 💻 Windows, macOS y Linux

**Desde una única base de código en Dart.**

### 1.2 ¿Por qué Flutter?

#### Ventajas:
- ⚡ **Hot Reload**: Ver cambios instantáneamente sin perder el estado
- 🎨 **UI Declarativa**: Describe cómo debe verse la UI, no cómo construirla
- 🚀 **Rendimiento Nativo**: Compila a código ARM/x86 nativo
- 📦 **Widget Rico**: Miles de widgets prediseñados
- 🔧 **Desarrollo Rápido**: Menos código, más productividad
- 🎯 **Una Base de Código**: Mantén un solo proyecto para todas las plataformas

#### Comparación con otras tecnologías:

| Característica | Flutter | React Native | Native |
|---------------|---------|--------------|--------|
| Lenguaje | Dart | JavaScript | Swift/Kotlin |
| Rendimiento | Alto (60fps) | Medio | Muy Alto |
| Hot Reload | ✅ | ✅ | ❌ |
| UI Nativa | ❌ (Skia) | ✅ | ✅ |
| Curva de aprendizaje | Media | Baja | Alta |
| Multiplataforma | ✅ | ✅ | ❌ |

### 1.3 Casos de Uso Reales

Empresas que usan Flutter:
- **Google**: Google Ads, Stadia
- **Alibaba**: Xianyu (50M+ usuarios)
- **BMW**: My BMW App
- **eBay**: eBay Motors
- **Nubank**: App bancario (40M+ usuarios)

---

## 2. Arquitectura y Funcionamiento

### 2.1 Capas de Flutter

```
┌─────────────────────────────────────────────┐
│  DART APP (Tu Código)                       │
│  - Widgets personalizados                   │
│  - Lógica de negocio                        │
├─────────────────────────────────────────────┤
│  FLUTTER FRAMEWORK (Dart)                   │
│  - Material/Cupertino Widgets               │
│  - Rendering                                │
│  - Animation, Gestures                      │
├─────────────────────────────────────────────┤
│  FLUTTER ENGINE (C/C++)                     │
│  - Skia (Motor gráfico 2D)                  │
│  - Dart Runtime                             │
│  - Text Layout                              │
├─────────────────────────────────────────────┤
│  PLATFORM (Android/iOS/Web/Desktop)         │
│  - Embedder específico de plataforma       │
│  - Platform Channels                        │
└─────────────────────────────────────────────┘
```

### 2.2 ¿Cómo Renderiza Flutter?

**Diferencia clave**: Flutter NO usa componentes nativos (excepto para funcionalidades del sistema).

#### Proceso de Renderización:

1. **Widget Tree**: Describes la UI con widgets
2. **Element Tree**: Flutter crea elementos (instancias de widgets)
3. **Render Tree**: Calcula layout y pinta
4. **Skia**: Dibuja cada pixel en el canvas

```dart
// 1. Widget Tree (Tu código)
Container(
  child: Text('Hola'),
)

// 2. Flutter lo convierte en Element Tree
// 3. Calcula posición, tamaño (Render Tree)
// 4. Skia dibuja los pixels
```

### 2.3 Hot Reload vs Hot Restart

#### Hot Reload (r):
- Inyecta código actualizado
- **Mantiene el estado** de la app
- Tarda ~1 segundo
- Ideal para cambios de UI

#### Hot Restart (R):
- Reinicia la app completamente
- **Pierde el estado**
- Tarda ~3-5 segundos
- Necesario para cambios en main() o initState()

### 2.4 Ciclo de Vida de una App Flutter

```dart
void main() {
  runApp(MyApp());  // 1. Punto de entrada
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {  // 2. Construye el árbol de widgets
    return MaterialApp(
      home: HomePage(),
    );
  }
}
```

**Flujo**:
1. `main()` ejecuta `runApp()`
2. Flutter crea el árbol de widgets
3. Llama a `build()` de cada widget
4. Renderiza en pantalla
5. Espera eventos (taps, gestos, etc.)
6. Reconstruye cuando hay cambios

---

## 3. Configuración del Entorno

### 3.1 Instalación de Flutter

#### Windows:
```bash
# 1. Descargar Flutter SDK
# https://docs.flutter.dev/get-started/install/windows

# 2. Extraer en C:\src\flutter

# 3. Agregar al PATH
# C:\src\flutter\bin

# 4. Verificar instalación
flutter doctor
```

#### macOS:
```bash
# 1. Instalar con Homebrew
brew install flutter

# 2. Verificar
flutter doctor

# 3. Instalar Xcode (para iOS)
xcode-select --install
```

#### Linux:
```bash
# 1. Descargar y extraer
cd ~/development
tar xf ~/Downloads/flutter_linux_*.tar.xz

# 2. Agregar al PATH
export PATH="$PATH:`pwd`/flutter/bin"

# 3. Verificar
flutter doctor
```

### 3.2 Flutter Doctor

```bash
flutter doctor
```

**Salida esperada**:
```
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.x.x)
[✓] Android toolchain - develop for Android devices
[✓] Xcode - develop for iOS and macOS
[✓] Chrome - develop for the web
[✓] Android Studio
[✓] VS Code
[✓] Connected device
```

**Solución de problemas comunes**:
- ❌ Android toolchain: Instalar Android Studio
- ❌ Xcode: Instalar desde App Store (macOS)
- ❌ cmdline-tools: `flutter doctor --android-licenses`

### 3.3 IDEs Recomendados

#### Visual Studio Code (Recomendado):
```bash
# Extensiones necesarias:
- Flutter
- Dart
- Flutter Widget Snippets
- Awesome Flutter Snippets
```

#### Android Studio:
```bash
# Plugins necesarios:
- Flutter plugin
- Dart plugin
```

### 3.4 Crear Primer Proyecto

```bash
# Crear proyecto
flutter create mi_primera_app

# Estructura generada:
mi_primera_app/
├── lib/
│   └── main.dart          # Código principal
├── android/               # Proyecto Android
├── ios/                   # Proyecto iOS
├── test/                  # Tests
├── pubspec.yaml           # Dependencias
└── README.md

# Entrar al proyecto
cd mi_primera_app

# Ejecutar
flutter run

# O especificar dispositivo
flutter run -d chrome      # Web
flutter run -d windows     # Windows
flutter run -d <device_id> # Dispositivo específico
```

### 3.5 Comandos Esenciales

```bash
# Ver dispositivos disponibles
flutter devices

# Limpiar build
flutter clean

# Obtener dependencias
flutter pub get

# Actualizar dependencias
flutter pub upgrade

# Analizar código
flutter analyze

# Formatear código
dart format lib/

# Ver logs
flutter logs

# Captura de pantalla
flutter screenshot

# Información del proyecto
flutter doctor -v
```

---

## 4. Fundamentos de Dart

### 4.1 ¿Por qué Dart?

Dart fue diseñado específicamente para desarrollo de UI:
- **Compilación AOT**: Código nativo rápido
- **Compilación JIT**: Hot reload durante desarrollo
- **Garbage Collection**: Optimizado para UI (60fps)
- **Async/Await**: Manejo simple de asincronía
- **Null Safety**: Previene errores de null

### 4.2 Variables y Tipos

```dart
void main() {
  // Inferencia de tipos
  var nombre = 'Juan';           // String
  var edad = 25;                 // int
  var altura = 1.75;             // double
  var esEstudiante = true;       // bool
  
  // Tipos explícitos
  String apellido = 'Pérez';
  int semestre = 6;
  double promedio = 8.5;
  bool graduado = false;
  
  // Tipos de colecciones
  List<String> materias = ['Flutter', 'React', 'Node'];
  Set<int> numeros = {1, 2, 3, 3};  // Set elimina duplicados
  Map<String, int> calificaciones = {
    'Flutter': 10,
    'React': 9,
  };
  
  print('$nombre $apellido tiene $edad años');
}
```

### 4.3 Null Safety (Importante)

Dart tiene **null safety** desde la versión 2.12:

```dart
// Variable que NO puede ser null
String nombre = 'Juan';
// nombre = null;  // ❌ ERROR

// Variable que SÍ puede ser null
String? apellido;
apellido = null;  // ✅ OK

// Operador ??
String saludo = apellido ?? 'Sin apellido';

// Operador ?.
int? longitud = apellido?.length;

// Operador !
String definitivo = apellido!;  // ⚠️ Lanza excepción si es null
```

**Regla de oro**: Usa `?` solo cuando realmente necesites null.

### 4.4 Final vs Const

```dart
// final: Valor asignado en runtime (no puede cambiar después)
final fechaActual = DateTime.now();
final nombre = obtenerNombre();

// const: Valor conocido en compile-time (constante de compilación)
const PI = 3.14159;
const URL_API = 'https://api.ejemplo.com';

// En widgets
const Text('Hola');  // ✅ Mejor rendimiento
Text('Hola');        // ❌ Se reconstruye cada vez
```

**Cuándo usar cada uno**:
- `const`: Valores que nunca cambian (URLs, colores, textos fijos)
- `final`: Valores que se asignan una vez pero pueden variar (fecha actual, ID de usuario)
- `var/tipo`: Valores que pueden cambiar

### 4.5 Funciones

```dart
// Función tradicional
int sumar(int a, int b) {
  return a + b;
}

// Arrow function (una línea)
int multiplicar(int a, int b) => a * b;

// Parámetros opcionales posicionales
void saludar(String nombre, [String? apellido]) {
  print('Hola $nombre ${apellido ?? ''}');
}
saludar('Juan');
saludar('Juan', 'Pérez');

// Parámetros nombrados
void crearUsuario({
  required String email,
  String? nombre,
  int edad = 18,
}) {
  print('Usuario: $email, $nombre, $edad');
}
crearUsuario(email: 'juan@mail.com');
crearUsuario(email: 'juan@mail.com', nombre: 'Juan', edad: 25);

// Funciones como parámetros
void ejecutar(Function callback) {
  callback();
}
ejecutar(() => print('Ejecutado'));

// Funciones de orden superior
List<int> numeros = [1, 2, 3, 4, 5];
var pares = numeros.where((n) => n % 2 == 0).toList();      // [2, 4]
var dobles = numeros.map((n) => n * 2).toList();            // [2, 4, 6, 8, 10]
var suma = numeros.reduce((a, b) => a + b);                 // 15
```

### 4.6 Clases y Programación Orientada a Objetos

```dart
// Clase básica
class Persona {
  String nombre;
  int edad;
  
  // Constructor
  Persona(this.nombre, this.edad);
  
  // Named constructor
  Persona.invitado() 
    : nombre = 'Invitado',
      edad = 0;
  
  // Factory constructor
  factory Persona.fromJson(Map<String, dynamic> json) {
    return Persona(json['nombre'], json['edad']);
  }
  
  // Método
  void presentarse() {
    print('Soy $nombre, tengo $edad años');
  }
  
  // Getter
  bool get esMayorDeEdad => edad >= 18;
  
  // Setter
  set cambiarEdad(int nuevaEdad) {
    if (nuevaEdad > 0) edad = nuevaEdad;
  }
}

// Uso
var persona = Persona('Juan', 25);
persona.presentarse();
print(persona.esMayorDeEdad);

var invitado = Persona.invitado();
```

### 4.7 Herencia

```dart
class Persona {
  String nombre;
  int edad;
  
  Persona(this.nombre, this.edad);
  
  void presentarse() {
    print('Soy $nombre');
  }
}

class Estudiante extends Persona {
  String carrera;
  double promedio;
  
  Estudiante(String nombre, int edad, this.carrera, this.promedio)
    : super(nombre, edad);
  
  @override
  void presentarse() {
    super.presentarse();
    print('Estudio $carrera con promedio $promedio');
  }
  
  void estudiar() {
    print('$nombre está estudiando $carrera');
  }
}

// Uso
var estudiante = Estudiante('Ana', 20, 'Ingeniería', 9.5);
estudiante.presentarse();
estudiante.estudiar();
```

### 4.8 Interfaces y Clases Abstractas

```dart
// Clase abstracta (puede tener implementación)
abstract class Animal {
  String nombre;
  
  Animal(this.nombre);
  
  void hacerSonido();  // Método abstracto
  
  void dormir() {      // Método con implementación
    print('$nombre está durmiendo');
  }
}

class Perro extends Animal {
  Perro(String nombre) : super(nombre);
  
  @override
  void hacerSonido() {
    print('Guau guau');
  }
}

// Interface (implements)
class Volador {
  void volar() {}
}

class Pajaro extends Animal implements Volador {
  Pajaro(String nombre) : super(nombre);
  
  @override
  void hacerSonido() {
    print('Pío pío');
  }
  
  @override
  void volar() {
    print('$nombre está volando');
  }
}
```

### 4.9 Mixins

Los mixins permiten reutilizar código en múltiples clases:

```dart
mixin Nadador {
  void nadar() => print('Nadando...');
}

mixin Volador {
  void volar() => print('Volando...');
}

class Pato extends Animal with Nadador, Volador {
  Pato(String nombre) : super(nombre);
  
  @override
  void hacerSonido() => print('Cuac cuac');
}

// Uso
var pato = Pato('Donald');
pato.nadar();
pato.volar();
pato.hacerSonido();
```

### 4.10 Async/Await y Futures

```dart
// Future: Representa un valor que estará disponible en el futuro
Future<String> obtenerDatosDeAPI() async {
  // Simular llamada a API
  await Future.delayed(Duration(seconds: 2));
  return 'Datos obtenidos';
}

// Uso con async/await
void main() async {
  print('Iniciando...');
  
  String datos = await obtenerDatosDeAPI();
  print(datos);
  
  print('Finalizado');
}

// Manejo de errores
Future<void> obtenerUsuario() async {
  try {
    var datos = await obtenerDatosDeAPI();
    print(datos);
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Limpieza');
  }
}

// Múltiples Futures en paralelo
Future<void> obtenerMultiple() async {
  var resultados = await Future.wait([
    obtenerDatosDeAPI(),
    obtenerDatosDeAPI(),
    obtenerDatosDeAPI(),
  ]);
  print(resultados);
}
```

### 4.11 Streams

Los Streams son flujos de datos asíncronos:

```dart
// Crear un Stream
Stream<int> contadorStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;  // Emite un valor
  }
}

// Escuchar un Stream
void main() async {
  await for (int valor in contadorStream()) {
    print('Valor: $valor');
  }
}

// Con listen
void escucharStream() {
  contadorStream().listen(
    (valor) => print('Valor: $valor'),
    onError: (error) => print('Error: $error'),
    onDone: () => print('Stream completado'),
  );
}

// StreamController (para crear tus propios streams)
import 'dart:async';

class ContadorController {
  final _controller = StreamController<int>();
  
  Stream<int> get stream => _controller.stream;
  
  void agregar(int valor) {
    _controller.sink.add(valor);
  }
  
  void dispose() {
    _controller.close();
  }
}
```

### 4.12 Colecciones y Operadores

```dart
// Listas
List<int> numeros = [1, 2, 3, 4, 5];
numeros.add(6);
numeros.remove(3);
numeros.insert(0, 0);

// Spread operator
List<int> masNumeros = [...numeros, 7, 8, 9];

// Collection if
List<String> items = [
  'Item 1',
  'Item 2',
  if (esAdmin) 'Item Admin',
];

// Collection for
List<int> cuadrados = [
  for (int i in numeros) i * i
];

// Maps
Map<String, dynamic> usuario = {
  'nombre': 'Juan',
  'edad': 25,
  'email': 'juan@mail.com',
};

// Acceso
print(usuario['nombre']);
usuario['edad'] = 26;

// Iterar
usuario.forEach((key, value) {
  print('$key: $value');
});

// Sets (sin duplicados)
Set<int> unicos = {1, 2, 3, 3, 4};  // {1, 2, 3, 4}
```

---

## 5. Sistema de Widgets

### 5.1 Todo es un Widget

En Flutter, **TODO es un widget**:
- Elementos visuales (botones, textos, imágenes)
- Layouts (filas, columnas, stacks)
- Gestos (detectores de taps, drags)
- Animaciones
- Temas y estilos

### 5.2 StatelessWidget vs StatefulWidget

#### StatelessWidget (Sin Estado):

Widgets que **NO cambian** después de ser construidos.

```dart
class MiTexto extends StatelessWidget {
  final String texto;
  final Color color;
  
  const MiTexto({
    Key? key,
    required this.texto,
    this.color = Colors.black,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(color: color),
    );
  }
}

// Uso
MiTexto(texto: 'Hola Mundo', color: Colors.blue)
```

**Cuándo usar**: Textos estáticos, iconos, layouts que no cambian.

#### StatefulWidget (Con Estado):

Widgets que **SÍ cambian** durante su ciclo de vida.

```dart
class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);
  
  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 0;
  
  void _incrementar() {
    setState(() {
      _contador++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contador: $_contador',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _incrementar,
          child: Text('Incrementar'),
        ),
      ],
    );
  }
}
```

**Cuándo usar**: Formularios, contadores, listas dinámicas, cualquier cosa que cambie.

### 5.3 Ciclo de Vida de StatefulWidget

```dart
class MiWidget extends StatefulWidget {
  @override
  _MiWidgetState createState() => _MiWidgetState();
}

class _MiWidgetState extends State<MiWidget> {
  
  // 1. Constructor (opcional)
  _MiWidgetState() {
    print('1. Constructor');
  }
  
  // 2. initState - Se llama UNA vez al crear el widget
  @override
  void initState() {
    super.initState();
    print('2. initState');
    // Inicializar controladores, suscripciones, etc.
  }
  
  // 3. didChangeDependencies - Después de initState
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('3. didChangeDependencies');
  }
  
  // 4. build - Se llama cada vez que hay cambios
  @override
  Widget build(BuildContext context) {
    print('4. build');
    return Container();
  }
  
  // 5. didUpdateWidget - Cuando el widget padre cambia
  @override
  void didUpdateWidget(MiWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('5. didUpdateWidget');
  }
  
  // 6. setState - Fuerza reconstrucción
  void actualizarEstado() {
    setState(() {
      print('6. setState');
    });
  }
  
  // 7. deactivate - Cuando se remueve temporalmente
  @override
  void deactivate() {
    print('7. deactivate');
    super.deactivate();
  }
  
  // 8. dispose - Limpieza final
  @override
  void dispose() {
    print('8. dispose');
    // Limpiar controladores, listeners, etc.
    super.dispose();
  }
}
```

**Orden de ejecución**:
1. Constructor → 2. initState → 3. didChangeDependencies → 4. build
5. (Cambios) → setState → build
6. (Widget actualizado) → didUpdateWidget → build
7. (Removido) → deactivate → dispose


### 5.4 Widgets Básicos Esenciales

#### Text - Mostrar texto

```dart
Text(
  'Hola Mundo',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
    letterSpacing: 2.0,
    decoration: TextDecoration.underline,
  ),
  textAlign: TextAlign.center,
  maxLines: 2,
  overflow: TextOverflow.ellipsis,
)
```

#### Image - Mostrar imágenes

```dart
// Desde red
Image.network('https://ejemplo.com/imagen.jpg')

// Desde assets
Image.asset('assets/images/logo.png')

// Con propiedades
Image.network(
  'url',
  width: 200,
  height: 200,
  fit: BoxFit.cover,  // cover, contain, fill, fitWidth, fitHeight
  loadingBuilder: (context, child, progress) {
    if (progress == null) return child;
    return CircularProgressIndicator();
  },
)
```

#### Icon - Iconos

```dart
Icon(
  Icons.favorite,
  color: Colors.red,
  size: 30,
)

// Iconos de Material Design disponibles:
// Icons.home, Icons.search, Icons.settings, Icons.person, etc.
```

#### Button - Botones

```dart
// ElevatedButton (con elevación)
ElevatedButton(
  onPressed: () => print('Presionado'),
  child: Text('Enviar'),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
)

// TextButton (sin fondo)
TextButton(
  onPressed: () {},
  child: Text('Cancelar'),
)

// OutlinedButton (con borde)
OutlinedButton(
  onPressed: () {},
  child: Text('Más info'),
)

// IconButton
IconButton(
  icon: Icon(Icons.delete),
  onPressed: () {},
  color: Colors.red,
)

// FloatingActionButton
FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.add),
  backgroundColor: Colors.blue,
)
```

#### TextField - Entrada de texto

```dart
TextField(
  decoration: InputDecoration(
    labelText: 'Email',
    hintText: 'ejemplo@correo.com',
    prefixIcon: Icon(Icons.email),
    suffixIcon: Icon(Icons.check),
    border: OutlineInputBorder(),
    filled: true,
    fillColor: Colors.grey[200],
  ),
  keyboardType: TextInputType.emailAddress,
  obscureText: false,  // true para contraseñas
  maxLines: 1,
  onChanged: (value) {
    print('Texto: $value');
  },
  onSubmitted: (value) {
    print('Enviado: $value');
  },
)
```

#### Scaffold - Estructura básica

```dart
Scaffold(
  appBar: AppBar(
    title: Text('Mi App'),
    actions: [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: () {},
      ),
    ],
  ),
  body: Center(
    child: Text('Contenido'),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
  ),
  drawer: Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          child: Text('Menú'),
          decoration: BoxDecoration(color: Colors.blue),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Inicio'),
          onTap: () {},
        ),
      ],
    ),
  ),
  bottomNavigationBar: BottomNavigationBar(
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
    ],
    currentIndex: 0,
    onTap: (index) {},
  ),
)
```

---

## 6. Layouts y Diseño

### 6.1 Container - Caja de diseño

El widget más versátil para diseño:

```dart
Container(
  // Dimensiones
  width: 200,
  height: 100,
  
  // Espaciado interno
  padding: EdgeInsets.all(16),
  // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  // padding: EdgeInsets.only(left: 10, top: 5),
  
  // Espaciado externo
  margin: EdgeInsets.all(8),
  
  // Decoración
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: Colors.black, width: 2),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10,
        offset: Offset(0, 5),
      ),
    ],
    gradient: LinearGradient(
      colors: [Colors.blue, Colors.purple],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  
  // Alineación del hijo
  alignment: Alignment.center,
  
  // Widget hijo
  child: Text('Hola'),
)
```

### 6.2 Row - Disposición horizontal

```dart
Row(
  // Alineación en eje principal (horizontal)
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  // start, end, center, spaceBetween, spaceAround, spaceEvenly
  
  // Alineación en eje cruzado (vertical)
  crossAxisAlignment: CrossAxisAlignment.center,
  // start, end, center, stretch, baseline
  
  // Tamaño
  mainAxisSize: MainAxisSize.max,  // max o min
  
  children: [
    Icon(Icons.star, size: 30),
    Text('Título'),
    Icon(Icons.more_vert),
  ],
)
```

**Ejemplo práctico**:
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    // Columna izquierda
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Juan Pérez', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('Desarrollador', style: TextStyle(color: Colors.grey)),
      ],
    ),
    // Botón derecha
    ElevatedButton(
      onPressed: () {},
      child: Text('Seguir'),
    ),
  ],
)
```

### 6.3 Column - Disposición vertical

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Línea 1'),
    SizedBox(height: 10),  // Espaciado
    Text('Línea 2'),
    SizedBox(height: 10),
    Text('Línea 3'),
  ],
)
```

### 6.4 Stack - Apilar widgets

Permite superponer widgets uno sobre otro:

```dart
Stack(
  children: [
    // Fondo
    Container(
      width: 300,
      height: 200,
      color: Colors.blue,
    ),
    // Texto encima
    Positioned(
      top: 20,
      left: 20,
      child: Text(
        'Título',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    ),
    // Icono en esquina
    Positioned(
      bottom: 10,
      right: 10,
      child: Icon(Icons.favorite, color: Colors.red),
    ),
  ],
)
```

**Ejemplo: Card con imagen y overlay**:
```dart
Stack(
  children: [
    Image.network('url', width: 300, height: 200, fit: BoxFit.cover),
    Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.black54,
        padding: EdgeInsets.all(10),
        child: Text(
          'Descripción',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ],
)
```

### 6.5 Expanded y Flexible

Controlan cómo los hijos ocupan el espacio disponible:

```dart
Row(
  children: [
    // Ocupa 1 parte
    Expanded(
      flex: 1,
      child: Container(color: Colors.red, height: 100),
    ),
    // Ocupa 2 partes
    Expanded(
      flex: 2,
      child: Container(color: Colors.blue, height: 100),
    ),
    // Ocupa 1 parte
    Expanded(
      flex: 1,
      child: Container(color: Colors.green, height: 100),
    ),
  ],
)
```

**Diferencia Expanded vs Flexible**:
- `Expanded`: Fuerza al hijo a ocupar todo el espacio disponible
- `Flexible`: Permite al hijo ser más pequeño si quiere

### 6.6 ListView - Listas scrolleables

#### ListView básico:
```dart
ListView(
  children: [
    ListTile(title: Text('Item 1')),
    ListTile(title: Text('Item 2')),
    ListTile(title: Text('Item 3')),
  ],
)
```

#### ListView.builder (Recomendado para listas grandes):
```dart
ListView.builder(
  itemCount: 100,
  itemBuilder: (context, index) {
    return ListTile(
      leading: CircleAvatar(child: Text('${index + 1}')),
      title: Text('Item $index'),
      subtitle: Text('Descripción del item $index'),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print('Tap en item $index');
      },
    );
  },
)
```

#### ListView.separated (Con separadores):
```dart
ListView.separated(
  itemCount: 20,
  itemBuilder: (context, index) {
    return ListTile(title: Text('Item $index'));
  },
  separatorBuilder: (context, index) {
    return Divider();
  },
)
```

### 6.7 GridView - Cuadrículas

```dart
GridView.count(
  crossAxisCount: 2,  // 2 columnas
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  padding: EdgeInsets.all(10),
  children: List.generate(20, (index) {
    return Card(
      child: Center(
        child: Text('Item $index'),
      ),
    );
  }),
)
```

#### GridView.builder:
```dart
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    childAspectRatio: 1.0,
  ),
  itemCount: 50,
  itemBuilder: (context, index) {
    return Card(
      child: Center(child: Text('$index')),
    );
  },
)
```

### 6.8 SingleChildScrollView

Para hacer scrolleable cualquier contenido:

```dart
SingleChildScrollView(
  child: Column(
    children: [
      Container(height: 200, color: Colors.red),
      Container(height: 200, color: Colors.blue),
      Container(height: 200, color: Colors.green),
      Container(height: 200, color: Colors.yellow),
    ],
  ),
)
```

### 6.9 Padding y SizedBox

```dart
// Padding - Agregar espaciado
Padding(
  padding: EdgeInsets.all(16),
  child: Text('Con padding'),
)

// SizedBox - Espaciado fijo
Column(
  children: [
    Text('Texto 1'),
    SizedBox(height: 20),  // Espacio vertical
    Text('Texto 2'),
  ],
)

Row(
  children: [
    Text('Texto 1'),
    SizedBox(width: 20),  // Espacio horizontal
    Text('Texto 2'),
  ],
)
```

### 6.10 Card - Tarjetas

```dart
Card(
  elevation: 5,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Título',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text('Descripción de la tarjeta'),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: () {}, child: Text('CANCELAR')),
            TextButton(onPressed: () {}, child: Text('ACEPTAR')),
          ],
        ),
      ],
    ),
  ),
)
```

---

## 7. Navegación y Rutas

### 7.1 Navigator Básico

#### Push - Ir a nueva pantalla:
```dart
// En un botón
ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SegundaPantalla()),
    );
  },
  child: Text('Ir a Segunda Pantalla'),
)
```

#### Pop - Regresar:
```dart
// En la segunda pantalla
ElevatedButton(
  onPressed: () {
    Navigator.pop(context);
  },
  child: Text('Regresar'),
)

// O usar el botón de back automático del AppBar
```

#### Push con datos:
```dart
// Enviar datos
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => DetallePantalla(
      id: 123,
      nombre: 'Producto',
    ),
  ),
);

// Recibir en la otra pantalla
class DetallePantalla extends StatelessWidget {
  final int id;
  final String nombre;
  
  const DetallePantalla({
    Key? key,
    required this.id,
    required this.nombre,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nombre)),
      body: Center(child: Text('ID: $id')),
    );
  }
}
```

#### Recibir datos al regresar:
```dart
// Pantalla 1: Esperar resultado
final resultado = await Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SeleccionPantalla()),
);
print('Seleccionado: $resultado');

// Pantalla 2: Regresar con datos
Navigator.pop(context, 'Opción A');
```

### 7.2 Rutas Nombradas

Más organizado para apps grandes:

```dart
// main.dart
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/detalles': (context) => DetallesPage(),
        '/perfil': (context) => PerfilPage(),
        '/configuracion': (context) => ConfiguracionPage(),
      },
    );
  }
}

// Navegar
Navigator.pushNamed(context, '/detalles');

// Navegar y reemplazar
Navigator.pushReplacementNamed(context, '/perfil');

// Navegar y limpiar stack
Navigator.pushNamedAndRemoveUntil(
  context,
  '/home',
  (route) => false,  // Elimina todas las rutas anteriores
);
```

### 7.3 Pasar argumentos con rutas nombradas

```dart
// Navegar con argumentos
Navigator.pushNamed(
  context,
  '/detalles',
  arguments: {
    'id': 123,
    'nombre': 'Producto',
    'precio': 99.99,
  },
);

// Recibir argumentos
class DetallesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    
    return Scaffold(
      appBar: AppBar(title: Text(args['nombre'])),
      body: Column(
        children: [
          Text('ID: ${args['id']}'),
          Text('Precio: \$${args['precio']}'),
        ],
      ),
    );
  }
}
```

### 7.4 onGenerateRoute (Rutas dinámicas)

Para rutas más complejas:

```dart
MaterialApp(
  onGenerateRoute: (settings) {
    // Extraer nombre y argumentos
    final name = settings.name;
    final args = settings.arguments;
    
    // Rutas dinámicas
    if (name == '/producto') {
      return MaterialPageRoute(
        builder: (context) => ProductoPage(args as int),
      );
    }
    
    if (name?.startsWith('/usuario/') ?? false) {
      final userId = name!.split('/').last;
      return MaterialPageRoute(
        builder: (context) => UsuarioPage(userId),
      );
    }
    
    // Ruta por defecto
    return MaterialPageRoute(builder: (context) => NotFoundPage());
  },
)
```

### 7.5 Transiciones Personalizadas

```dart
Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SegundaPantalla(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Fade
      return FadeTransition(opacity: animation, child: child);
      
      // Slide
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(position: animation.drive(tween), child: child);
      
      // Scale
      return ScaleTransition(scale: animation, child: child);
    },
    transitionDuration: Duration(milliseconds: 500),
  ),
);
```

### 7.6 Bottom Navigation Bar

Navegación por pestañas:

```dart
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  
  final List<Widget> _pages = [
    InicioPage(),
    BuscarPage(),
    PerfilPage(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
```

### 7.7 Drawer (Menú lateral)

```dart
Scaffold(
  appBar: AppBar(title: Text('Mi App')),
  drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                child: Icon(Icons.person, size: 40),
              ),
              SizedBox(height: 10),
              Text(
                'Juan Pérez',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                'juan@mail.com',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Inicio'),
          onTap: () {
            Navigator.pop(context);  // Cerrar drawer
            Navigator.pushNamed(context, '/');
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configuración'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/configuracion');
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Cerrar sesión'),
          onTap: () {
            // Lógica de cierre de sesión
          },
        ),
      ],
    ),
  ),
  body: Center(child: Text('Contenido')),
)
```

---

## 8. Gestión de Estado

### 8.1 ¿Qué es el Estado?

El **estado** es cualquier dato que puede cambiar durante el ciclo de vida de la app:
- Contador
- Lista de productos
- Usuario autenticado
- Tema (claro/oscuro)
- Datos de formularios

### 8.2 setState (Estado Local)

Para estado simple dentro de un widget:

```dart
class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int _contador = 0;
  bool _loading = false;
  
  void _incrementar() {
    setState(() {
      _contador++;
    });
  }
  
  Future<void> _cargarDatos() async {
    setState(() => _loading = true);
    
    await Future.delayed(Duration(seconds: 2));
    
    setState(() => _loading = false);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contador')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_loading)
              CircularProgressIndicator()
            else
              Text('$_contador', style: TextStyle(fontSize: 48)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementar,
              child: Text('Incrementar'),
            ),
          ],
        ),
      ),
    );
  }
}
```

**Cuándo usar setState**:
- Estado local de un widget
- No necesitas compartir con otros widgets
- Lógica simple

### 8.3 InheritedWidget (Base de Provider)

Permite compartir datos en el árbol de widgets:

```dart
class ContadorInherited extends InheritedWidget {
  final int contador;
  final Function incrementar;
  
  ContadorInherited({
    required this.contador,
    required this.incrementar,
    required Widget child,
  }) : super(child: child);
  
  static ContadorInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ContadorInherited>();
  }
  
  @override
  bool updateShouldNotify(ContadorInherited oldWidget) {
    return contador != oldWidget.contador;
  }
}

// Uso (complejo, mejor usar Provider)
```


### 8.4 Provider (Recomendado)

La solución oficial de Google para gestión de estado.

#### Instalación:
```yaml
# pubspec.yaml
dependencies:
  provider: ^6.1.1
```

#### Paso 1: Crear el modelo

```dart
import 'package:flutter/foundation.dart';

class ContadorModel extends ChangeNotifier {
  int _contador = 0;
  
  int get contador => _contador;
  
  void incrementar() {
    _contador++;
    notifyListeners();  // Notifica a los listeners
  }
  
  void decrementar() {
    _contador--;
    notifyListeners();
  }
  
  void reset() {
    _contador = 0;
    notifyListeners();
  }
}
```

#### Paso 2: Proveer el modelo

```dart
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContadorModel(),
      child: MyApp(),
    ),
  );
}

// Múltiples providers
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ContadorModel()),
        ChangeNotifierProvider(create: (_) => UsuarioModel()),
        ChangeNotifierProvider(create: (_) => CarritoModel()),
      ],
      child: MyApp(),
    ),
  );
}
```

#### Paso 3: Consumir el modelo

**Opción 1: Provider.of**
```dart
class ContadorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final modelo = Provider.of<ContadorModel>(context);
    
    return Scaffold(
      appBar: AppBar(title: Text('Contador')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${modelo.contador}', style: TextStyle(fontSize: 48)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: modelo.decrementar,
                  child: Text('-'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: modelo.incrementar,
                  child: Text('+'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

**Opción 2: Consumer (Recomendado)**
```dart
Consumer<ContadorModel>(
  builder: (context, modelo, child) {
    return Text('${modelo.contador}');
  },
)

// Con child estático (optimización)
Consumer<ContadorModel>(
  builder: (context, modelo, child) {
    return Column(
      children: [
        Text('${modelo.contador}'),
        child!,  // Este widget no se reconstruye
      ],
    );
  },
  child: Text('Texto estático'),
)
```

**Opción 3: context.watch y context.read**
```dart
class ContadorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // watch: Escucha cambios y reconstruye
    final contador = context.watch<ContadorModel>().contador;
    
    return Column(
      children: [
        Text('$contador'),
        ElevatedButton(
          onPressed: () {
            // read: No escucha cambios, solo ejecuta
            context.read<ContadorModel>().incrementar();
          },
          child: Text('Incrementar'),
        ),
      ],
    );
  }
}
```

#### Ejemplo completo: Lista de tareas

```dart
// Modelo
class Tarea {
  String titulo;
  bool completada;
  
  Tarea({required this.titulo, this.completada = false});
}

class TareasModel extends ChangeNotifier {
  List<Tarea> _tareas = [];
  
  List<Tarea> get tareas => _tareas;
  int get totalTareas => _tareas.length;
  int get tareasCompletadas => _tareas.where((t) => t.completada).length;
  
  void agregar(String titulo) {
    _tareas.add(Tarea(titulo: titulo));
    notifyListeners();
  }
  
  void toggleCompletada(int index) {
    _tareas[index].completada = !_tareas[index].completada;
    notifyListeners();
  }
  
  void eliminar(int index) {
    _tareas.removeAt(index);
    notifyListeners();
  }
}

// UI
class TareasPage extends StatelessWidget {
  final _controller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Tareas'),
        actions: [
          Consumer<TareasModel>(
            builder: (context, modelo, _) {
              return Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('${modelo.tareasCompletadas}/${modelo.totalTareas}'),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Nueva tarea',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      context.read<TareasModel>().agregar(_controller.text);
                      _controller.clear();
                    }
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
          Expanded(
            child: Consumer<TareasModel>(
              builder: (context, modelo, _) {
                if (modelo.tareas.isEmpty) {
                  return Center(child: Text('No hay tareas'));
                }
                
                return ListView.builder(
                  itemCount: modelo.tareas.length,
                  itemBuilder: (context, index) {
                    final tarea = modelo.tareas[index];
                    return ListTile(
                      leading: Checkbox(
                        value: tarea.completada,
                        onChanged: (_) => modelo.toggleCompletada(index),
                      ),
                      title: Text(
                        tarea.titulo,
                        style: TextStyle(
                          decoration: tarea.completada
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => modelo.eliminar(index),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
```

### 8.5 Riverpod (Alternativa moderna)

Mejora de Provider con más características:

```yaml
dependencies:
  flutter_riverpod: ^2.4.9
```

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider
final contadorProvider = StateProvider<int>((ref) => 0);

// Provider con lógica
final tareasProvider = StateNotifierProvider<TareasNotifier, List<Tarea>>((ref) {
  return TareasNotifier();
});

class TareasNotifier extends StateNotifier<List<Tarea>> {
  TareasNotifier() : super([]);
  
  void agregar(String titulo) {
    state = [...state, Tarea(titulo: titulo)];
  }
  
  void eliminar(int index) {
    state = [...state]..removeAt(index);
  }
}

// Consumir
class ContadorPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contador = ref.watch(contadorProvider);
    
    return Column(
      children: [
        Text('$contador'),
        ElevatedButton(
          onPressed: () => ref.read(contadorProvider.notifier).state++,
          child: Text('Incrementar'),
        ),
      ],
    );
  }
}
```

---

## 9. Networking y APIs

### 9.1 Paquete HTTP

```yaml
dependencies:
  http: ^1.1.0
```

### 9.2 Modelo de Datos

```dart
class Usuario {
  final int id;
  final String nombre;
  final String email;
  final String? telefono;
  
  Usuario({
    required this.id,
    required this.nombre,
    required this.email,
    this.telefono,
  });
  
  // Desde JSON
  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'],
      nombre: json['name'],
      email: json['email'],
      telefono: json['phone'],
    );
  }
  
  // A JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': nombre,
      'email': email,
      'phone': telefono,
    };
  }
}
```

### 9.3 Servicio de API

```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';
  
  // GET - Obtener lista
  Future<List<Usuario>> obtenerUsuarios() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/users'),
        headers: {'Content-Type': 'application/json'},
      );
      
      if (response.statusCode == 200) {
        List<dynamic> jsonList = json.decode(response.body);
        return jsonList.map((json) => Usuario.fromJson(json)).toList();
      } else {
        throw Exception('Error ${response.statusCode}: ${response.body}');
      }
    } catch (e) {
      throw Exception('Error de conexión: $e');
    }
  }
  
  // GET - Obtener uno
  Future<Usuario> obtenerUsuario(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/users/$id'));
    
    if (response.statusCode == 200) {
      return Usuario.fromJson(json.decode(response.body));
    } else {
      throw Exception('Usuario no encontrado');
    }
  }
  
  // POST - Crear
  Future<Usuario> crearUsuario(Usuario usuario) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(usuario.toJson()),
    );
    
    if (response.statusCode == 201) {
      return Usuario.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al crear usuario');
    }
  }
  
  // PUT - Actualizar completo
  Future<Usuario> actualizarUsuario(Usuario usuario) async {
    final response = await http.put(
      Uri.parse('$baseUrl/users/${usuario.id}'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(usuario.toJson()),
    );
    
    if (response.statusCode == 200) {
      return Usuario.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al actualizar');
    }
  }
  
  // PATCH - Actualizar parcial
  Future<Usuario> actualizarParcial(int id, Map<String, dynamic> datos) async {
    final response = await http.patch(
      Uri.parse('$baseUrl/users/$id'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(datos),
    );
    
    if (response.statusCode == 200) {
      return Usuario.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al actualizar');
    }
  }
  
  // DELETE - Eliminar
  Future<void> eliminarUsuario(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/users/$id'));
    
    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('Error al eliminar');
    }
  }
  
  // Con autenticación
  Future<List<Usuario>> obtenerConToken(String token) async {
    final response = await http.get(
      Uri.parse('$baseUrl/users'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    
    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Usuario.fromJson(json)).toList();
    } else {
      throw Exception('No autorizado');
    }
  }
}
```

### 9.4 FutureBuilder

Widget para manejar estados asíncronos:

```dart
class UsuariosPage extends StatefulWidget {
  @override
  _UsuariosPageState createState() => _UsuariosPageState();
}

class _UsuariosPageState extends State<UsuariosPage> {
  final ApiService _api = ApiService();
  late Future<List<Usuario>> _usuariosFuture;
  
  @override
  void initState() {
    super.initState();
    _usuariosFuture = _api.obtenerUsuarios();
  }
  
  Future<void> _refrescar() async {
    setState(() {
      _usuariosFuture = _api.obtenerUsuarios();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuarios'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _refrescar,
          ),
        ],
      ),
      body: FutureBuilder<List<Usuario>>(
        future: _usuariosFuture,
        builder: (context, snapshot) {
          // Estado: Cargando
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          
          // Estado: Error
          if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error, size: 60, color: Colors.red),
                  SizedBox(height: 16),
                  Text('Error: ${snapshot.error}'),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _refrescar,
                    child: Text('Reintentar'),
                  ),
                ],
              ),
            );
          }
          
          // Estado: Sin datos
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No hay usuarios'));
          }
          
          // Estado: Éxito
          final usuarios = snapshot.data!;
          return RefreshIndicator(
            onRefresh: _refrescar,
            child: ListView.builder(
              itemCount: usuarios.length,
              itemBuilder: (context, index) {
                final usuario = usuarios[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(usuario.nombre[0]),
                  ),
                  title: Text(usuario.nombre),
                  subtitle: Text(usuario.email),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalleUsuarioPage(usuario: usuario),
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
```

### 9.5 Manejo de Errores

```dart
class ApiException implements Exception {
  final String mensaje;
  final int? statusCode;
  
  ApiException(this.mensaje, [this.statusCode]);
  
  @override
  String toString() => mensaje;
}

class ApiService {
  Future<T> _handleResponse<T>(
    http.Response response,
    T Function(dynamic) parser,
  ) async {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return parser(json.decode(response.body));
    } else if (response.statusCode == 401) {
      throw ApiException('No autorizado', 401);
    } else if (response.statusCode == 404) {
      throw ApiException('No encontrado', 404);
    } else if (response.statusCode >= 500) {
      throw ApiException('Error del servidor', response.statusCode);
    } else {
      throw ApiException('Error desconocido', response.statusCode);
    }
  }
  
  Future<List<Usuario>> obtenerUsuarios() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/users'))
          .timeout(Duration(seconds: 10));
      
      return _handleResponse(
        response,
        (data) => (data as List).map((json) => Usuario.fromJson(json)).toList(),
      );
    } on TimeoutException {
      throw ApiException('Tiempo de espera agotado');
    } on SocketException {
      throw ApiException('Sin conexión a internet');
    } catch (e) {
      throw ApiException('Error: $e');
    }
  }
}
```

### 9.6 Dio (Alternativa avanzada)

```yaml
dependencies:
  dio: ^5.4.0
```

```dart
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.ejemplo.com',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    ),
  );
  
  ApiService() {
    // Interceptores
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print('REQUEST: ${options.method} ${options.path}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          print('RESPONSE: ${response.statusCode}');
          return handler.next(response);
        },
        onError: (error, handler) {
          print('ERROR: ${error.message}');
          return handler.next(error);
        },
      ),
    );
  }
  
  Future<List<Usuario>> obtenerUsuarios() async {
    try {
      final response = await _dio.get('/users');
      return (response.data as List)
          .map((json) => Usuario.fromJson(json))
          .toList();
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        throw Exception('Tiempo de espera agotado');
      } else if (e.type == DioExceptionType.receiveTimeout) {
        throw Exception('Tiempo de respuesta agotado');
      } else {
        throw Exception('Error: ${e.message}');
      }
    }
  }
}
```

---

## 10. Persistencia de Datos

### 10.1 SharedPreferences (Datos simples)

Para guardar configuraciones, tokens, preferencias:

```yaml
dependencies:
  shared_preferences: ^2.2.2
```

```dart
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasService {
  // Singleton
  static final PreferenciasService _instance = PreferenciasService._internal();
  factory PreferenciasService() => _instance;
  PreferenciasService._internal();
  
  SharedPreferences? _prefs;
  
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }
  
  // String
  Future<void> guardarToken(String token) async {
    await _prefs?.setString('token', token);
  }
  
  String? obtenerToken() {
    return _prefs?.getString('token');
  }
  
  // Int
  Future<void> guardarContador(int valor) async {
    await _prefs?.setInt('contador', valor);
  }
  
  int obtenerContador() {
    return _prefs?.getInt('contador') ?? 0;
  }
  
  // Bool
  Future<void> guardarTemaOscuro(bool valor) async {
    await _prefs?.setBool('tema_oscuro', valor);
  }
  
  bool obtenerTemaOscuro() {
    return _prefs?.getBool('tema_oscuro') ?? false;
  }
  
  // Double
  Future<void> guardarPrecio(double valor) async {
    await _prefs?.setDouble('precio', valor);
  }
  
  double obtenerPrecio() {
    return _prefs?.getDouble('precio') ?? 0.0;
  }
  
  // List<String>
  Future<void> guardarFavoritos(List<String> favoritos) async {
    await _prefs?.setStringList('favoritos', favoritos);
  }
  
  List<String> obtenerFavoritos() {
    return _prefs?.getStringList('favoritos') ?? [];
  }
  
  // Eliminar
  Future<void> eliminarToken() async {
    await _prefs?.remove('token');
  }
  
  // Limpiar todo
  Future<void> limpiarTodo() async {
    await _prefs?.clear();
  }
  
  // Verificar si existe
  bool existeToken() {
    return _prefs?.containsKey('token') ?? false;
  }
}

// Uso
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenciasService().init();
  runApp(MyApp());
}

// En cualquier parte
final prefs = PreferenciasService();
await prefs.guardarToken('mi_token_123');
String? token = prefs.obtenerToken();
```

### 10.2 SQLite (Base de datos local)

```yaml
dependencies:
  sqflite: ^2.3.0
  path: ^1.8.3
```

```dart
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;
  
  DatabaseHelper._init();
  
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('app_database.db');
    return _database!;
  }
  
  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
      onUpgrade: _upgradeDB,
    );
  }
  
  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE usuarios (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nombre TEXT NOT NULL,
        email TEXT NOT NULL UNIQUE,
        edad INTEGER,
        activo INTEGER DEFAULT 1,
        fecha_creacion TEXT
      )
    ''');
    
    await db.execute('''
      CREATE TABLE productos (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nombre TEXT NOT NULL,
        precio REAL NOT NULL,
        stock INTEGER DEFAULT 0
      )
    ''');
  }
  
  Future _upgradeDB(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      await db.execute('ALTER TABLE usuarios ADD COLUMN telefono TEXT');
    }
  }
  
  // CREATE
  Future<int> insertarUsuario(Map<String, dynamic> usuario) async {
    final db = await database;
    return await db.insert('usuarios', usuario);
  }
  
  // READ - Todos
  Future<List<Map<String, dynamic>>> obtenerUsuarios() async {
    final db = await database;
    return await db.query('usuarios', orderBy: 'nombre ASC');
  }
  
  // READ - Uno
  Future<Map<String, dynamic>?> obtenerUsuario(int id) async {
    final db = await database;
    final results = await db.query(
      'usuarios',
      where: 'id = ?',
      whereArgs: [id],
    );
    return results.isNotEmpty ? results.first : null;
  }
  
  // READ - Con filtro
  Future<List<Map<String, dynamic>>> buscarUsuarios(String nombre) async {
    final db = await database;
    return await db.query(
      'usuarios',
      where: 'nombre LIKE ?',
      whereArgs: ['%$nombre%'],
    );
  }
  
  // UPDATE
  Future<int> actualizarUsuario(int id, Map<String, dynamic> usuario) async {
    final db = await database;
    return await db.update(
      'usuarios',
      usuario,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
  
  // DELETE
  Future<int> eliminarUsuario(int id) async {
    final db = await database;
    return await db.delete(
      'usuarios',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
  
  // Query personalizada
  Future<List<Map<String, dynamic>>> usuariosActivos() async {
    final db = await database;
    return await db.rawQuery(
      'SELECT * FROM usuarios WHERE activo = 1 AND edad >= ?',
      [18],
    );
  }
  
  // Transacciones
  Future<void> transferencia(int deId, int aId, double monto) async {
    final db = await database;
    await db.transaction((txn) async {
      await txn.rawUpdate(
        'UPDATE cuentas SET saldo = saldo - ? WHERE id = ?',
        [monto, deId],
      );
      await txn.rawUpdate(
        'UPDATE cuentas SET saldo = saldo + ? WHERE id = ?',
        [monto, aId],
      );
    });
  }
  
  // Cerrar base de datos
  Future close() async {
    final db = await database;
    db.close();
  }
}

// Uso
final db = DatabaseHelper.instance;

// Insertar
await db.insertarUsuario({
  'nombre': 'Juan',
  'email': 'juan@mail.com',
  'edad': 25,
  'fecha_creacion': DateTime.now().toIso8601String(),
});

// Obtener todos
List<Map<String, dynamic>> usuarios = await db.obtenerUsuarios();

// Actualizar
await db.actualizarUsuario(1, {'nombre': 'Juan Pérez', 'edad': 26});

// Eliminar
await db.eliminarUsuario(1);
```

### 10.3 Hive (NoSQL rápido)

```yaml
dependencies:
  hive: ^2.2.3
  hive_flutter: ^1.1.0
```

```dart
import 'package:hive_flutter/hive_flutter.dart';

// Modelo
@HiveType(typeId: 0)
class Usuario extends HiveObject {
  @HiveField(0)
  String nombre;
  
  @HiveField(1)
  String email;
  
  @HiveField(2)
  int edad;
  
  Usuario({required this.nombre, required this.email, required this.edad});
}

// Inicializar
void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UsuarioAdapter());
  await Hive.openBox<Usuario>('usuarios');
  runApp(MyApp());
}

// Uso
final box = Hive.box<Usuario>('usuarios');

// Agregar
box.add(Usuario(nombre: 'Juan', email: 'juan@mail.com', edad: 25));

// Obtener todos
List<Usuario> usuarios = box.values.toList();

// Obtener por key
Usuario? usuario = box.get('key');

// Actualizar
usuario?.nombre = 'Juan Pérez';
usuario?.save();

// Eliminar
box.delete('key');

// Escuchar cambios
box.watch().listen((event) {
  print('Cambio en la base de datos');
});
```


---

## 11. Formularios y Validación

### 11.1 TextEditingController

```dart
class FormularioPage extends StatefulWidget {
  @override
  _FormularioPageState createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  final _nombreController = TextEditingController();
  final _emailController = TextEditingController();
  
  @override
  void initState() {
    super.initState();
    
    // Escuchar cambios
    _nombreController.addListener(() {
      print('Nombre: ${_nombreController.text}');
    });
  }
  
  @override
  void dispose() {
    _nombreController.dispose();
    _emailController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulario')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Nombre: ${_nombreController.text}');
                print('Email: ${_emailController.text}');
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
```

### 11.2 Form y Validación

```dart
class FormularioValidadoPage extends StatefulWidget {
  @override
  _FormularioValidadoPageState createState() => _FormularioValidadoPageState();
}

class _FormularioValidadoPageState extends State<FormularioValidadoPage> {
  final _formKey = GlobalKey<FormState>();
  final _nombreController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _edadController = TextEditingController();
  
  bool _obscurePassword = true;
  
  @override
  void dispose() {
    _nombreController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _edadController.dispose();
    super.dispose();
  }
  
  String? _validarNombre(String? value) {
    if (value == null || value.isEmpty) {
      return 'El nombre es requerido';
    }
    if (value.length < 3) {
      return 'Mínimo 3 caracteres';
    }
    return null;
  }
  
  String? _validarEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'El email es requerido';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Email inválido';
    }
    return null;
  }
  
  String? _validarPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'La contraseña es requerida';
    }
    if (value.length < 6) {
      return 'Mínimo 6 caracteres';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Debe contener al menos una mayúscula';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Debe contener al menos un número';
    }
    return null;
  }
  
  void _enviar() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Formulario válido')),
      );
      
      print('Nombre: ${_nombreController.text}');
      print('Email: ${_emailController.text}');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulario Validado')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nombreController,
                decoration: InputDecoration(
                  labelText: 'Nombre completo',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
                validator: _validarNombre,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: _validarEmail,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(_obscurePassword ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() => _obscurePassword = !_obscurePassword);
                    },
                  ),
                  border: OutlineInputBorder(),
                ),
                obscureText: _obscurePassword,
                validator: _validarPassword,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _edadController,
                decoration: InputDecoration(
                  labelText: 'Edad',
                  prefixIcon: Icon(Icons.calendar_today),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'La edad es requerida';
                  }
                  final edad = int.tryParse(value);
                  if (edad == null) {
                    return 'Debe ser un número';
                  }
                  if (edad < 18) {
                    return 'Debes ser mayor de 18 años';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _enviar,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text('ENVIAR', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

---

## 12. Animaciones

### 12.1 AnimatedContainer

```dart
class AnimatedBoxPage extends StatefulWidget {
  @override
  _AnimatedBoxPageState createState() => _AnimatedBoxPageState();
}

class _AnimatedBoxPageState extends State<AnimatedBoxPage> {
  bool _expanded = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Container')),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() => _expanded = !_expanded),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: _expanded ? 300 : 100,
            height: _expanded ? 300 : 100,
            decoration: BoxDecoration(
              color: _expanded ? Colors.blue : Colors.red,
              borderRadius: BorderRadius.circular(_expanded ? 50 : 10),
            ),
            child: Center(
              child: Text(
                'Tap',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

### 12.2 Hero Animation

```dart
// Pantalla 1
class ListaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Hero(
              tag: 'imagen-$index',
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200?random=$index'),
              ),
            ),
            title: Text('Item $index'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallePage(index: index),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Pantalla 2
class DetallePage extends StatelessWidget {
  final int index;
  
  const DetallePage({required this.index});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalle $index')),
      body: Center(
        child: Hero(
          tag: 'imagen-$index',
          child: Image.network('https://picsum.photos/400?random=$index'),
        ),
      ),
    );
  }
}
```

### 12.3 AnimationController

```dart
class FadeAnimationPage extends StatefulWidget {
  @override
  _FadeAnimationPageState createState() => _FadeAnimationPageState();
}

class _FadeAnimationPageState extends State<FadeAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  
  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );
    
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );
    
    _controller.forward();
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animación')),
      body: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text('Animado', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isCompleted) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
```

---

## 13. Testing

### 13.1 Test Unitario

```dart
// test/calculadora_test.dart
import 'package:flutter_test/flutter_test.dart';

class Calculadora {
  int sumar(int a, int b) => a + b;
  int restar(int a, int b) => a - b;
  int multiplicar(int a, int b) => a * b;
  double dividir(int a, int b) {
    if (b == 0) throw ArgumentError('No se puede dividir por cero');
    return a / b;
  }
}

void main() {
  group('Calculadora', () {
    late Calculadora calculadora;
    
    setUp(() {
      calculadora = Calculadora();
    });
    
    test('Suma correctamente', () {
      expect(calculadora.sumar(2, 3), 5);
      expect(calculadora.sumar(-1, 1), 0);
    });
    
    test('Resta correctamente', () {
      expect(calculadora.restar(5, 3), 2);
    });
    
    test('Multiplica correctamente', () {
      expect(calculadora.multiplicar(3, 4), 12);
    });
    
    test('Divide correctamente', () {
      expect(calculadora.dividir(10, 2), 5.0);
    });
    
    test('Lanza error al dividir por cero', () {
      expect(() => calculadora.dividir(10, 0), throwsArgumentError);
    });
  });
}
```

### 13.2 Widget Test

```dart
// test/widget_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Contador incrementa', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ContadorPage()));
    
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
  
  testWidgets('Botón muestra texto correcto', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ElevatedButton(
            onPressed: () {},
            child: Text('Presionar'),
          ),
        ),
      ),
    );
    
    expect(find.text('Presionar'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
```

---

## 14. Arquitectura y Patrones

### 14.1 Estructura de Carpetas Recomendada

```
lib/
├── main.dart
├── config/
│   ├── routes.dart
│   ├── theme.dart
│   └── constants.dart
├── models/
│   ├── usuario.dart
│   └── producto.dart
├── services/
│   ├── api_service.dart
│   ├── auth_service.dart
│   └── database_service.dart
├── providers/
│   ├── usuario_provider.dart
│   └── carrito_provider.dart
├── screens/
│   ├── home/
│   │   ├── home_screen.dart
│   │   └── widgets/
│   ├── auth/
│   │   ├── login_screen.dart
│   │   └── register_screen.dart
│   └── perfil/
│       └── perfil_screen.dart
├── widgets/
│   ├── custom_button.dart
│   ├── loading_indicator.dart
│   └── error_widget.dart
└── utils/
    ├── validators.dart
    ├── helpers.dart
    └── extensions.dart
```

### 14.2 Clean Architecture

```dart
// Domain Layer - Entidades
class Usuario {
  final String id;
  final String nombre;
  final String email;
  
  Usuario({required this.id, required this.nombre, required this.email});
}

// Domain Layer - Repositorio (Interface)
abstract class UsuarioRepository {
  Future<List<Usuario>> obtenerUsuarios();
  Future<Usuario> obtenerUsuario(String id);
  Future<void> crearUsuario(Usuario usuario);
}

// Data Layer - Implementación
class UsuarioRepositoryImpl implements UsuarioRepository {
  final ApiService _api;
  
  UsuarioRepositoryImpl(this._api);
  
  @override
  Future<List<Usuario>> obtenerUsuarios() async {
    final data = await _api.get('/usuarios');
    return data.map((json) => Usuario.fromJson(json)).toList();
  }
  
  @override
  Future<Usuario> obtenerUsuario(String id) async {
    final data = await _api.get('/usuarios/$id');
    return Usuario.fromJson(data);
  }
  
  @override
  Future<void> crearUsuario(Usuario usuario) async {
    await _api.post('/usuarios', usuario.toJson());
  }
}

// Presentation Layer - Provider
class UsuarioProvider extends ChangeNotifier {
  final UsuarioRepository _repository;
  
  List<Usuario> _usuarios = [];
  bool _loading = false;
  String? _error;
  
  List<Usuario> get usuarios => _usuarios;
  bool get loading => _loading;
  String? get error => _error;
  
  UsuarioProvider(this._repository);
  
  Future<void> cargarUsuarios() async {
    _loading = true;
    _error = null;
    notifyListeners();
    
    try {
      _usuarios = await _repository.obtenerUsuarios();
    } catch (e) {
      _error = e.toString();
    } finally {
      _loading = false;
      notifyListeners();
    }
  }
}
```

---

## 15. Buenas Prácticas

### 15.1 Principios SOLID

1. **Single Responsibility**: Cada clase una responsabilidad
2. **Open/Closed**: Abierto a extensión, cerrado a modificación
3. **Liskov Substitution**: Subclases deben ser sustituibles
4. **Interface Segregation**: Interfaces específicas
5. **Dependency Inversion**: Depender de abstracciones

### 15.2 Optimización

```dart
// ✅ Bueno - Widget const
const Text('Hola');

// ❌ Malo
Text('Hola');

// ✅ Bueno - ListView.builder
ListView.builder(
  itemCount: 1000,
  itemBuilder: (context, index) => ItemWidget(index),
);

// ❌ Malo - Crea todos los widgets
ListView(
  children: List.generate(1000, (i) => ItemWidget(i)),
);
```

### 15.3 Manejo de Errores

```dart
try {
  final data = await api.obtenerDatos();
} on SocketException {
  print('Sin conexión');
} on TimeoutException {
  print('Tiempo agotado');
} catch (e) {
  print('Error: $e');
} finally {
  print('Limpieza');
}
```

---

## 16. Ejercicios Prácticos

### Ejercicio 1: App de Tareas
Crear una app de lista de tareas con:
- Agregar tareas
- Marcar como completadas
- Eliminar tareas
- Persistencia con SharedPreferences

### Ejercicio 2: App de Clima
- Consumir API de clima
- Mostrar temperatura actual
- Pronóstico de 5 días
- Búsqueda por ciudad

### Ejercicio 3: App de Notas
- CRUD completo
- SQLite para persistencia
- Categorías de notas
- Búsqueda

### Ejercicio 4: E-commerce
- Lista de productos
- Carrito de compras
- Provider para estado global
- Navegación entre pantallas

---

## Comandos Útiles

```bash
flutter create mi_app
flutter run
flutter clean
flutter pub get
flutter analyze
dart format .
flutter test
flutter build apk --release
flutter doctor
```

---

## Recursos Adicionales

- **Documentación**: https://docs.flutter.dev
- **Pub.dev**: https://pub.dev
- **DartPad**: https://dartpad.dev
- **Flutter Awesome**: https://flutterawesome.com

---

**¡Éxito en tu aprendizaje de Flutter!**


---

## 17. Proyectos Guiados Paso a Paso

### Proyecto 1: Calculadora de Propinas 💰

**Uso real**: Calcular propinas en restaurantes y dividir la cuenta.

#### Estructura del proyecto:
```
lib/
├── main.dart
├── models/
│   └── propina.dart
├── providers/
│   └── propina_provider.dart
└── screens/
    └── home_screen.dart
```

#### models/propina.dart
```dart
class Propina {
  double montoTotal;
  double porcentajePropina;
  int numeroPersonas;
  
  Propina({this.montoTotal = 0, this.porcentajePropina = 15, this.numeroPersonas = 1});
  
  double get propina => montoTotal * (porcentajePropina / 100);
  double get total => montoTotal + propina;
  double get porPersona => total / numeroPersonas;
}
```

#### providers/propina_provider.dart
```dart
import 'package:flutter/foundation.dart';
import '../models/propina.dart';

class PropinaProvider extends ChangeNotifier {
  Propina _propina = Propina();
  
  Propina get propina => _propina;
  
  void setMonto(double monto) {
    _propina.montoTotal = monto;
    notifyListeners();
  }
  
  void setPorcentaje(double porcentaje) {
    _propina.porcentajePropina = porcentaje;
    notifyListeners();
  }
  
  void setPersonas(int personas) {
    _propina.numeroPersonas = personas;
    notifyListeners();
  }
}
```

#### screens/home_screen.dart
```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/propina_provider.dart';

class HomeScreen extends StatelessWidget {
  final _controller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora de Propinas')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Monto Total',
                prefixText: '\$',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                context.read<PropinaProvider>().setMonto(double.tryParse(value) ?? 0);
              },
            ),
            SizedBox(height: 20),
            Consumer<PropinaProvider>(
              builder: (context, provider, _) {
                return Column(
                  children: [
                    Text('Propina: ${provider.propina.porcentajePropina.toInt()}%'),
                    Slider(
                      value: provider.propina.porcentajePropina,
                      min: 0,
                      max: 30,
                      divisions: 30,
                      onChanged: (value) => provider.setPorcentaje(value),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () => provider.setPersonas(provider.propina.numeroPersonas - 1),
                        ),
                        Text('${provider.propina.numeroPersonas} personas'),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () => provider.setPersonas(provider.propina.numeroPersonas + 1),
                        ),
                      ],
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text('Total: \$${provider.propina.total.toStringAsFixed(2)}'),
                            Text('Por Persona: \$${provider.propina.porPersona.toStringAsFixed(2)}',
                                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
```

---

### Proyecto 2: Lista de Compras 🛒

**Uso real**: Gestionar compras del supermercado con presupuesto.

#### Dependencias (pubspec.yaml):
```yaml
dependencies:
  sqflite: ^2.3.0
  path: ^1.8.3
  provider: ^6.1.1
```

#### models/producto.dart
```dart
class Producto {
  int? id;
  String nombre;
  double precio;
  int cantidad;
  bool comprado;
  
  Producto({this.id, required this.nombre, required this.precio, this.cantidad = 1, this.comprado = false});
  
  double get total => precio * cantidad;
  
  Map<String, dynamic> toMap() => {
    'id': id,
    'nombre': nombre,
    'precio': precio,
    'cantidad': cantidad,
    'comprado': comprado ? 1 : 0,
  };
  
  factory Producto.fromMap(Map<String, dynamic> map) => Producto(
    id: map['id'],
    nombre: map['nombre'],
    precio: map['precio'],
    cantidad: map['cantidad'],
    comprado: map['comprado'] == 1,
  );
}
```

#### services/database_service.dart
```dart
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/producto.dart';

class DatabaseService {
  static Database? _database;
  
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await openDatabase(
      join(await getDatabasesPath(), 'compras.db'),
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE productos(id INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT, precio REAL, cantidad INTEGER, comprado INTEGER)',
        );
      },
    );
    return _database!;
  }
  
  Future<void> insertar(Producto p) async {
    final db = await database;
    await db.insert('productos', p.toMap());
  }
  
  Future<List<Producto>> obtener() async {
    final db = await database;
    final maps = await db.query('productos');
    return maps.map((m) => Producto.fromMap(m)).toList();
  }
  
  Future<void> actualizar(Producto p) async {
    final db = await database;
    await db.update('productos', p.toMap(), where: 'id = ?', whereArgs: [p.id]);
  }
  
  Future<void> eliminar(int id) async {
    final db = await database;
    await db.delete('productos', where: 'id = ?', whereArgs: [id]);
  }
}
```

---

### Proyecto 3: Conversor de Monedas 💱

**Uso real**: Convertir entre diferentes monedas en tiempo real.

#### Dependencias:
```yaml
dependencies:
  http: ^1.1.0
  provider: ^6.1.1
```

#### services/api_service.dart
```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const String apiKey = 'TU_API_KEY';
  static const String baseUrl = 'https://api.exchangerate-api.com/v4/latest';
  
  Future<Map<String, double>> obtenerTasas(String base) async {
    final response = await http.get(Uri.parse('$baseUrl/$base'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return Map<String, double>.from(data['rates']);
    }
    throw Exception('Error al obtener tasas');
  }
}
```

#### screens/conversor_screen.dart
```dart
import 'package:flutter/material.dart';
import '../services/api_service.dart';

class ConversorScreen extends StatefulWidget {
  @override
  _ConversorScreenState createState() => _ConversorScreenState();
}

class _ConversorScreenState extends State<ConversorScreen> {
  final _api = ApiService();
  final _controller = TextEditingController();
  
  String _monedaOrigen = 'USD';
  String _monedaDestino = 'EUR';
  double _resultado = 0;
  Map<String, double> _tasas = {};
  
  final List<String> _monedas = ['USD', 'EUR', 'MXN', 'COP', 'ARS', 'CLP'];
  
  @override
  void initState() {
    super.initState();
    _cargarTasas();
  }
  
  Future<void> _cargarTasas() async {
    _tasas = await _api.obtenerTasas(_monedaOrigen);
    setState(() {});
  }
  
  void _convertir() {
    final monto = double.tryParse(_controller.text) ?? 0;
    setState(() {
      _resultado = monto * (_tasas[_monedaDestino] ?? 1);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Conversor de Monedas')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Monto',
                border: OutlineInputBorder(),
              ),
              onChanged: (_) => _convertir(),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: DropdownButton<String>(
                    value: _monedaOrigen,
                    isExpanded: true,
                    items: _monedas.map((m) => DropdownMenuItem(value: m, child: Text(m))).toList(),
                    onChanged: (value) {
                      setState(() => _monedaOrigen = value!);
                      _cargarTasas();
                    },
                  ),
                ),
                Icon(Icons.arrow_forward),
                Expanded(
                  child: DropdownButton<String>(
                    value: _monedaDestino,
                    isExpanded: true,
                    items: _monedas.map((m) => DropdownMenuItem(value: m, child: Text(m))).toList(),
                    onChanged: (value) {
                      setState(() => _monedaDestino = value!);
                      _convertir();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  '${_resultado.toStringAsFixed(2)} $_monedaDestino',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

### Proyecto 4: Contador de Agua 💧

**Uso real**: Registrar vasos de agua diarios para mantenerse hidratado.

#### models/registro_agua.dart
```dart
class RegistroAgua {
  DateTime fecha;
  int vasos;
  int meta;
  
  RegistroAgua({required this.fecha, this.vasos = 0, this.meta = 8});
  
  double get porcentaje => (vasos / meta) * 100;
  bool get metaAlcanzada => vasos >= meta;
}
```

#### providers/agua_provider.dart
```dart
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/registro_agua.dart';

class AguaProvider extends ChangeNotifier {
  RegistroAgua _registro = RegistroAgua(fecha: DateTime.now());
  
  RegistroAgua get registro => _registro;
  
  AguaProvider() {
    _cargar();
  }
  
  Future<void> _cargar() async {
    final prefs = await SharedPreferences.getInstance();
    final fecha = prefs.getString('fecha');
    final hoy = DateTime.now().toIso8601String().split('T')[0];
    
    if (fecha == hoy) {
      _registro.vasos = prefs.getInt('vasos') ?? 0;
    } else {
      _registro.vasos = 0;
    }
    notifyListeners();
  }
  
  Future<void> agregarVaso() async {
    _registro.vasos++;
    await _guardar();
    notifyListeners();
  }
  
  Future<void> quitarVaso() async {
    if (_registro.vasos > 0) {
      _registro.vasos--;
      await _guardar();
      notifyListeners();
    }
  }
  
  Future<void> _guardar() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('vasos', _registro.vasos);
    await prefs.setString('fecha', DateTime.now().toIso8601String().split('T')[0]);
  }
}
```

#### screens/agua_screen.dart
```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/agua_provider.dart';

class AguaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contador de Agua')),
      body: Consumer<AguaProvider>(
        builder: (context, provider, _) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.water_drop, size: 100, color: Colors.blue),
                SizedBox(height: 20),
                Text(
                  '${provider.registro.vasos} / ${provider.registro.meta}',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text('vasos de agua'),
                SizedBox(height: 30),
                LinearProgressIndicator(
                  value: provider.registro.vasos / provider.registro.meta,
                  minHeight: 10,
                ),
                SizedBox(height: 10),
                Text('${provider.registro.porcentaje.toStringAsFixed(0)}%'),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      heroTag: 'remove',
                      onPressed: provider.quitarVaso,
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(width: 20),
                    FloatingActionButton(
                      heroTag: 'add',
                      onPressed: provider.agregarVaso,
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
```

---

### Proyecto 5: Calculadora de IMC 📊

**Uso real**: Calcular índice de masa corporal y dar recomendaciones.

#### models/imc.dart
```dart
class IMC {
  double peso;
  double altura;
  
  IMC({required this.peso, required this.altura});
  
  double get valor => peso / (altura * altura);
  
  String get categoria {
    if (valor < 18.5) return 'Bajo peso';
    if (valor < 25) return 'Normal';
    if (valor < 30) return 'Sobrepeso';
    return 'Obesidad';
  }
  
  String get recomendacion {
    if (valor < 18.5) return 'Consulta a un nutricionista';
    if (valor < 25) return '¡Excelente! Mantén tu peso';
    if (valor < 30) return 'Considera hacer más ejercicio';
    return 'Consulta a un médico';
  }
}
```

#### screens/imc_screen.dart
```dart
import 'package:flutter/material.dart';
import '../models/imc.dart';

class IMCScreen extends StatefulWidget {
  @override
  _IMCScreenState createState() => _IMCScreenState();
}

class _IMCScreenState extends State<IMCScreen> {
  double _peso = 70;
  double _altura = 1.70;
  
  @override
  Widget build(BuildContext context) {
    final imc = IMC(peso: _peso, altura: _altura);
    
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora de IMC')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Peso: ${_peso.toStringAsFixed(1)} kg'),
            Slider(
              value: _peso,
              min: 30,
              max: 150,
              onChanged: (value) => setState(() => _peso = value),
            ),
            SizedBox(height: 20),
            Text('Altura: ${_altura.toStringAsFixed(2)} m'),
            Slider(
              value: _altura,
              min: 1.0,
              max: 2.2,
              onChanged: (value) => setState(() => _altura = value),
            ),
            SizedBox(height: 40),
            Card(
              color: Colors.blue.shade50,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text('Tu IMC', style: TextStyle(fontSize: 18)),
                    Text(
                      imc.valor.toStringAsFixed(1),
                      style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                    Text(imc.categoria, style: TextStyle(fontSize: 24)),
                    SizedBox(height: 10),
                    Text(imc.recomendacion, textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

### Proyecto 6: Temporizador Pomodoro ⏱️

**Uso real**: Técnica de productividad 25 min trabajo / 5 min descanso.

#### providers/pomodoro_provider.dart
```dart
import 'dart:async';
import 'package:flutter/foundation.dart';

class PomodoroProvider extends ChangeNotifier {
  int _minutos = 25;
  int _segundos = 0;
  bool _corriendo = false;
  bool _esDescanso = false;
  Timer? _timer;
  
  int get minutos => _minutos;
  int get segundos => _segundos;
  bool get corriendo => _corriendo;
  bool get esDescanso => _esDescanso;
  
  void iniciar() {
    _corriendo = true;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_segundos > 0) {
        _segundos--;
      } else if (_minutos > 0) {
        _minutos--;
        _segundos = 59;
      } else {
        _completar();
      }
      notifyListeners();
    });
  }
  
  void pausar() {
    _corriendo = false;
    _timer?.cancel();
    notifyListeners();
  }
  
  void reiniciar() {
    _timer?.cancel();
    _corriendo = false;
    _minutos = _esDescanso ? 5 : 25;
    _segundos = 0;
    notifyListeners();
  }
  
  void _completar() {
    _timer?.cancel();
    _corriendo = false;
    _esDescanso = !_esDescanso;
    _minutos = _esDescanso ? 5 : 25;
    _segundos = 0;
    notifyListeners();
  }
}
```

#### screens/pomodoro_screen.dart
```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/pomodoro_provider.dart';

class PomodoroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pomodoro Timer')),
      body: Consumer<PomodoroProvider>(
        builder: (context, provider, _) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  provider.esDescanso ? 'Descanso' : 'Trabajo',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Text(
                  '${provider.minutos.toString().padLeft(2, '0')}:${provider.segundos.toString().padLeft(2, '0')}',
                  style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: provider.corriendo ? provider.pausar : provider.iniciar,
                      child: Text(provider.corriendo ? 'Pausar' : 'Iniciar'),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: provider.reiniciar,
                      child: Text('Reiniciar'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
```

---

**Nota**: Cada proyecto incluye código funcional y listo para usar. Ejecuta `flutter pub get` antes de correr cada proyecto.
