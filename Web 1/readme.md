# 🚀 Guía Completa: De Cero a Experto en HTML, CSS y JavaScript

> **Material de Enseñanza para Equipos de Desarrollo**  
> Guía estructurada paso a paso con ejemplos prácticos y proyectos reales

## 📋 Tabla de Contenidos

### 🎯 **Fundamentos**
1. [Introducción y Metodología](#introducción-y-metodología)
2. [Configuración del Entorno](#configuración-del-entorno)

### 🏗️ **Tecnologías Core**
3. [HTML - Estructura Web](#html---estructura-web)
4. [CSS - Diseño y Presentación](#css---diseño-y-presentación)
5. [JavaScript - Interactividad](#javascript---interactividad)

### 🛠️ **Herramientas Profesionales**
6. [Bootstrap - Framework CSS](#bootstrap---framework-css)
7. [Mejores Prácticas](#mejores-prácticas)

### 💼 **Proyectos Aplicados**
8. [Proyectos Básicos](#proyectos-básicos)
9. [Proyectos de Uso Diario](#proyectos-de-uso-diario)
10. [Evaluación y Siguiente Nivel](#evaluación-y-siguiente-nivel)

---

## 🎯 Introducción y Metodología

### Objetivo de Esta Guía
Capacitar a equipos de desarrollo en las tecnologías fundamentales del frontend web, desde conceptos básicos hasta implementaciones profesionales.

### 📚 Metodología de Enseñanza
- **Teoría + Práctica**: Cada concepto incluye ejemplos inmediatos
- **Progresión Gradual**: De básico a avanzado con pasos claros
- **Proyectos Reales**: Aplicaciones que se usan en el día a día
- **Mejores Prácticas**: Estándares de la industria desde el inicio

### 🎯 Objetivos de Aprendizaje
Al completar esta guía, el equipo será capaz de:
- ✅ Crear estructuras HTML semánticas y accesibles
- ✅ Diseñar interfaces responsive con CSS y Bootstrap
- ✅ Implementar interactividad con JavaScript moderno
- ✅ Desarrollar aplicaciones web funcionales
- ✅ Aplicar mejores prácticas de desarrollo frontend

### ⏱️ Tiempo Estimado
- **Nivel Básico**: 2-3 semanas (2h/día)
- **Nivel Intermedio**: 3-4 semanas (2h/día)
- **Nivel Avanzado**: 2-3 semanas (2h/día)
- **Proyectos**: 2-3 semanas (práctica)

---

## ⚙️ Configuración del Entorno

### Herramientas Esenciales

#### Editor de Código
```bash
# Opción 1: Visual Studio Code (Recomendado)
# Descargar desde: https://code.visualstudio.com/

# Extensiones esenciales:
- Live Server
- Prettier - Code formatter
- Auto Rename Tag
- Bracket Pair Colorizer
- ES7+ React/Redux/React-Native snippets
```

#### Navegadores para Desarrollo
- **Chrome DevTools** (Principal)
- **Firefox Developer Tools** (Alternativo)
- **Edge DevTools** (Testing)

#### Estructura de Proyecto Recomendada
```
proyecto-web/
├── index.html
├── css/
│   ├── styles.css
│   └── bootstrap.min.css
├── js/
│   ├── main.js
│   └── utils.js
├── img/
├── assets/
└── README.md
```

### 🔧 Configuración Inicial

#### Plantilla Base HTML5
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Descripción de la página">
    <title>Título de la Página</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <!-- Contenido aquí -->
    <script src="js/main.js"></script>
</body>
</html>
```

#### CSS Reset Básico
```css
/* Reset básico */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    line-height: 1.6;
    color: #333;
}

img {
    max-width: 100%;
    height: auto;
}
```

## 🏗️ HTML - Estructura Web

> **Tiempo estimado**: 1 semana | **Nivel**: Básico a Intermedio

### 🎯 Objetivos de Aprendizaje
- Comprender la estructura semántica de HTML5
- Crear formularios accesibles y funcionales
- Implementar elementos multimedia
- Aplicar mejores prácticas de SEO

### 📚 Conceptos Fundamentales

#### ¿Qué es HTML?
HTML (HyperText Markup Language) es el lenguaje de marcado estándar para crear páginas web. Define la **estructura** y el **contenido** mediante elementos y etiquetas.

#### Anatomía de un Elemento HTML
```html
<!-- Elemento completo -->
<etiqueta atributo="valor">Contenido</etiqueta>

<!-- Elemento vacío -->
<etiqueta atributo="valor" />
```

### 🔍 Nivel 1: Fundamentos

#### Estructura Básica del Documento
```html
<!DOCTYPE html> <!-- Declaración de tipo de documento -->
<html lang="es"> <!-- Elemento raíz con idioma -->
<head>
    <!-- Metadatos (no visibles al usuario) -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Descripción para SEO">
    <title>Título que aparece en la pestaña</title>
</head>
<body>
    <!-- Contenido visible -->
    <h1>Encabezado Principal</h1>
    <p>Párrafo de contenido.</p>
</body>
</html>
```

#### Jerarquía de Encabezados
```html
<!-- CORRECTO: Jerarquía lógica -->
<h1>Título Principal</h1>
    <h2>Sección</h2>
        <h3>Subsección</h3>
        <h3>Otra Subsección</h3>
    <h2>Segunda Sección</h2>

<!-- INCORRECTO: Saltar niveles -->
<h1>Título</h1>
<h4>Esto está mal</h4> <!-- Salta h2 y h3 -->
```

#### Elementos de Texto
```html
<!-- Párrafos y texto -->
<p>Párrafo normal con <strong>texto importante</strong> y <em>énfasis</em>.</p>
<p>Texto con <mark>resaltado</mark> y <small>texto pequeño</small>.</p>

<!-- Citas -->
<blockquote cite="https://ejemplo.com">
    <p>"Esta es una cita larga que merece destacarse."</p>
    <footer>— <cite>Autor de la Cita</cite></footer>
</blockquote>

<p>Como dijo Einstein: <q>La imaginación es más importante que el conocimiento.</q></p>
```

#### Listas Estructuradas
```html
<!-- Lista no ordenada -->
<ul>
    <li>Primer elemento</li>
    <li>Segundo elemento
        <ul>
            <li>Sub-elemento</li>
            <li>Otro sub-elemento</li>
        </ul>
    </li>
    <li>Tercer elemento</li>
</ul>

<!-- Lista ordenada -->
<ol>
    <li>Paso uno</li>
    <li>Paso dos</li>
    <li>Paso tres</li>
</ol>

<!-- Lista de definiciones -->
<dl>
    <dt>HTML</dt>
    <dd>Lenguaje de marcado para estructurar contenido web</dd>
    <dt>CSS</dt>
    <dd>Lenguaje para describir la presentación de documentos HTML</dd>
</dl>
```

#### Enlaces y Navegación
```html
<!-- Enlaces externos -->
<a href="https://www.ejemplo.com" target="_blank" rel="noopener noreferrer">
    Enlace externo seguro
</a>

<!-- Enlaces internos -->
<a href="#seccion1">Ir a Sección 1</a>
<a href="otra-pagina.html">Otra página del sitio</a>

<!-- Enlaces de email y teléfono -->
<a href="mailto:contacto@ejemplo.com">Enviar email</a>
<a href="tel:+1234567890">Llamar</a>

<!-- Enlace de descarga -->
<a href="documento.pdf" download="mi-documento.pdf">Descargar PDF</a>
```

### 🔍 Nivel 2: Elementos Semánticos HTML5

#### Estructura Semántica
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sitio Web Semántico</title>
</head>
<body>
    <!-- Encabezado del sitio -->
    <header>
        <h1>Mi Sitio Web</h1>
        <nav>
            <ul>
                <li><a href="#inicio">Inicio</a></li>
                <li><a href="#servicios">Servicios</a></li>
                <li><a href="#contacto">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <!-- Contenido principal -->
    <main>
        <section id="inicio">
            <h2>Bienvenido</h2>
            <article>
                <h3>Artículo Principal</h3>
                <p>Contenido del artículo...</p>
                <footer>
                    <p>Publicado el <time datetime="2024-01-15">15 de enero, 2024</time></p>
                </footer>
            </article>
        </section>
        
        <aside>
            <h3>Información Adicional</h3>
            <p>Contenido relacionado...</p>
        </aside>
    </main>

    <!-- Pie de página -->
    <footer>
        <p>&copy; 2024 Mi Sitio Web. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
```

#### 📝 **Ejercicio Práctico 1**
```html
<!-- Crear una página de perfil personal -->
<!-- Incluir: header, nav, main, section, article, aside, footer -->
<!-- Usar encabezados jerárquicos y elementos semánticos -->
```

### 🔍 Nivel 3: Formularios Profesionales

#### Formulario Completo con Validación
```html
<form action="/procesar" method="POST" novalidate>
    <fieldset>
        <legend>Información Personal</legend>
        
        <!-- Campo de texto requerido -->
        <div class="campo">
            <label for="nombre">Nombre Completo *</label>
            <input type="text" id="nombre" name="nombre" 
                   required minlength="2" maxlength="50"
                   placeholder="Ingresa tu nombre completo"
                   aria-describedby="nombre-ayuda">
            <small id="nombre-ayuda">Mínimo 2 caracteres</small>
        </div>
        
        <!-- Email con validación -->
        <div class="campo">
            <label for="email">Correo Electrónico *</label>
            <input type="email" id="email" name="email" required
                   placeholder="usuario@ejemplo.com"
                   aria-describedby="email-error">
            <div id="email-error" class="error" aria-live="polite"></div>
        </div>
        
        <!-- Teléfono con patrón -->
        <div class="campo">
            <label for="telefono">Teléfono</label>
            <input type="tel" id="telefono" name="telefono"
                   pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
                   placeholder="123-456-7890">
        </div>
        
        <!-- Fecha -->
        <div class="campo">
            <label for="nacimiento">Fecha de Nacimiento</label>
            <input type="date" id="nacimiento" name="nacimiento"
                   min="1900-01-01" max="2024-12-31">
        </div>
    </fieldset>
    
    <fieldset>
        <legend>Preferencias</legend>
        
        <!-- Select con opciones -->
        <div class="campo">
            <label for="pais">País</label>
            <select id="pais" name="pais" required>
                <option value="">Selecciona un país</option>
                <optgroup label="América">
                    <option value="mx">México</option>
                    <option value="us">Estados Unidos</option>
                    <option value="ca">Canadá</option>
                </optgroup>
                <optgroup label="Europa">
                    <option value="es">España</option>
                    <option value="fr">Francia</option>
                </optgroup>
            </select>
        </div>
        
        <!-- Radio buttons -->
        <fieldset>
            <legend>Género</legend>
            <div class="radio-group">
                <input type="radio" id="masculino" name="genero" value="masculino">
                <label for="masculino">Masculino</label>
                
                <input type="radio" id="femenino" name="genero" value="femenino">
                <label for="femenino">Femenino</label>
                
                <input type="radio" id="otro" name="genero" value="otro">
                <label for="otro">Otro</label>
            </div>
        </fieldset>
        
        <!-- Checkboxes -->
        <fieldset>
            <legend>Intereses</legend>
            <div class="checkbox-group">
                <input type="checkbox" id="tecnologia" name="intereses[]" value="tecnologia">
                <label for="tecnologia">Tecnología</label>
                
                <input type="checkbox" id="deportes" name="intereses[]" value="deportes">
                <label for="deportes">Deportes</label>
                
                <input type="checkbox" id="musica" name="intereses[]" value="musica">
                <label for="musica">Música</label>
            </div>
        </fieldset>
        
        <!-- Textarea -->
        <div class="campo">
            <label for="comentarios">Comentarios</label>
            <textarea id="comentarios" name="comentarios" 
                      rows="4" cols="50" maxlength="500"
                      placeholder="Comparte tus comentarios..."></textarea>
        </div>
    </fieldset>
    
    <!-- Términos y condiciones -->
    <div class="campo">
        <input type="checkbox" id="terminos" name="terminos" required>
        <label for="terminos">
            Acepto los <a href="/terminos" target="_blank">términos y condiciones</a> *
        </label>
    </div>
    
    <!-- Botones -->
    <div class="botones">
        <button type="reset">Limpiar</button>
        <button type="submit">Enviar Formulario</button>
    </div>
</form>
```

### 🔍 Nivel 4: Elementos Multimedia y Avanzados

#### Imágenes Responsivas
```html
<!-- Imagen básica optimizada -->
<img src="imagen-pequena.jpg" 
     srcset="imagen-pequena.jpg 300w, 
             imagen-mediana.jpg 600w, 
             imagen-grande.jpg 1200w"
     sizes="(max-width: 600px) 300px, 
            (max-width: 1200px) 600px, 
            1200px"
     alt="Descripción detallada de la imagen"
     loading="lazy"
     width="300" height="200">

<!-- Picture para diferentes formatos -->
<picture>
    <source srcset="imagen.webp" type="image/webp">
    <source srcset="imagen.avif" type="image/avif">
    <img src="imagen.jpg" alt="Imagen con formatos modernos">
</picture>
```

#### Video y Audio
```html
<!-- Video con controles y subtitulos -->
<video controls width="640" height="360" poster="miniatura.jpg">
    <source src="video.mp4" type="video/mp4">
    <source src="video.webm" type="video/webm">
    <track kind="subtitles" src="subtitulos-es.vtt" srclang="es" label="Español">
    <track kind="subtitles" src="subtitulos-en.vtt" srclang="en" label="English">
    <p>Tu navegador no soporta video HTML5. 
       <a href="video.mp4">Descargar video</a>.</p>
</video>

<!-- Audio con controles -->
<audio controls>
    <source src="audio.mp3" type="audio/mpeg">
    <source src="audio.ogg" type="audio/ogg">
    <p>Tu navegador no soporta audio HTML5.</p>
</audio>
```

#### Tablas de Datos
```html
<table>
    <caption>Ventas Trimestrales 2024</caption>
    <thead>
        <tr>
            <th scope="col">Producto</th>
            <th scope="col">Q1</th>
            <th scope="col">Q2</th>
            <th scope="col">Q3</th>
            <th scope="col">Total</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th scope="row">Producto A</th>
            <td>$10,000</td>
            <td>$12,000</td>
            <td>$15,000</td>
            <td>$37,000</td>
        </tr>
        <tr>
            <th scope="row">Producto B</th>
            <td>$8,000</td>
            <td>$9,500</td>
            <td>$11,000</td>
            <td>$28,500</td>
        </tr>
    </tbody>
    <tfoot>
        <tr>
            <th scope="row">Total</th>
            <td>$18,000</td>
            <td>$21,500</td>
            <td>$26,000</td>
            <td>$65,500</td>
        </tr>
    </tfoot>
</table>
```

### 📝 **Ejercicios Prácticos HTML**

#### Ejercicio 1: Página de Contacto
```html
<!-- Crear una página de contacto que incluya: -->
<!-- 1. Estructura semántica completa -->
<!-- 2. Formulario de contacto con validación -->
<!-- 3. Información de contacto en una tabla -->
<!-- 4. Mapa embebido (iframe) -->
```

#### Ejercicio 2: Blog Personal
```html
<!-- Crear un blog con: -->
<!-- 1. Header con navegación -->
<!-- 2. Main con articles -->
<!-- 3. Aside con información del autor -->
<!-- 4. Footer con enlaces sociales -->
<!-- 5. Imágenes responsivas -->
```

### ✅ **Checklist HTML**
- [ ] Estructura semántica correcta
- [ ] Jerarquía de encabezados lógica
- [ ] Formularios accesibles
- [ ] Imágenes con alt descriptivo
- [ ] Enlaces con texto significativo
- [ ] Validación HTML sin errores
- [ ] Meta tags para SEO
- [ ] Atributos de accesibilidad

## 🎨 CSS - Diseño y Presentación

> **Tiempo estimado**: 2 semanas | **Nivel**: Básico a Avanzado

### 🎯 Objetivos de Aprendizaje
- Dominar selectores y especificidad CSS
- Crear layouts responsive con Flexbox y Grid
- Implementar animaciones y transiciones
- Aplicar metodologías CSS (BEM, OOCSS)

### 📚 Conceptos Fundamentales

#### ¿Qué es CSS?
CSS (Cascading Style Sheets) controla la **presentación visual** de documentos HTML. Separa el contenido (HTML) del diseño (CSS).

#### Anatomía de una Regla CSS
```css
/* Selector { Propiedad: Valor; } */
h1 {
    color: #333;           /* Color del texto */
    font-size: 2rem;       /* Tamaño de fuente */
    margin-bottom: 1rem;   /* Margen inferior */
}
```

### 🔍 Nivel 1: Fundamentos y Selectores

#### Formas de Incluir CSS

**1. CSS Externo (Recomendado)**
```html
<!-- En el HTML -->
<link rel="stylesheet" href="css/styles.css">
```

**2. CSS Interno**
```html
<head>
    <style>
        body { font-family: Arial, sans-serif; }
    </style>
</head>
```

**3. CSS Inline (Evitar)**
```html
<p style="color: red; font-size: 18px;">Texto rojo</p>
```

#### Selectores Fundamentales
```css
/* Selector universal */
* {
    box-sizing: border-box;
}

/* Selector de elemento */
p {
    line-height: 1.6;
}

/* Selector de clase */
.destacado {
    background-color: yellow;
}

/* Selector de ID */
#encabezado-principal {
    font-size: 2.5rem;
}

/* Selector de atributo */
input[type="email"] {
    border-color: blue;
}

/* Selectores combinados */
.contenedor p {           /* Descendiente */
    margin-bottom: 1rem;
}

.sidebar > ul {           /* Hijo directo */
    list-style: none;
}

h2 + p {                  /* Hermano adyacente */
    font-weight: bold;
}

h2 ~ p {                  /* Hermanos generales */
    color: #666;
}
```

#### Especificidad CSS
```css
/* Especificidad: 0,0,0,1 */
p { color: black; }

/* Especificidad: 0,0,1,0 */
.texto { color: blue; }

/* Especificidad: 0,1,0,0 */
#principal { color: red; }

/* Especificidad: 1,0,0,0 */
p { color: green !important; }

/* El color final será green por !important */
```

#### Propiedades de Texto y Fuente
```css
.tipografia {
    /* Familia de fuentes con fallbacks */
    font-family: 'Roboto', 'Helvetica Neue', Arial, sans-serif;
    
    /* Tamaño y peso */
    font-size: 1.125rem;    /* 18px si base es 16px */
    font-weight: 400;       /* normal */
    line-height: 1.5;       /* 150% del font-size */
    
    /* Espaciado */
    letter-spacing: 0.02em; /* Espaciado entre letras */
    word-spacing: 0.1em;    /* Espaciado entre palabras */
    
    /* Alineación y decoración */
    text-align: justify;
    text-decoration: none;
    text-transform: capitalize;
    
    /* Color */
    color: #333;
}
```

### 🔍 Nivel 2: Box Model y Layout

#### El Box Model
```css
.caja {
    /* Contenido */
    width: 300px;
    height: 200px;
    
    /* Relleno interno */
    padding: 20px;          /* Todos los lados */
    padding: 10px 20px;     /* Vertical | Horizontal */
    padding: 10px 15px 20px 25px; /* Top | Right | Bottom | Left */
    
    /* Borde */
    border: 2px solid #ccc;
    border-radius: 8px;
    
    /* Margen externo */
    margin: 15px auto;      /* 15px arriba/abajo, centrado horizontal */
    
    /* Control del box model */
    box-sizing: border-box; /* Incluye padding y border en width/height */
}
```

#### Posicionamiento
```css
/* Estático (por defecto) */
.estatico {
    position: static;
}

/* Relativo - se mueve desde su posición original */
.relativo {
    position: relative;
    top: 10px;
    left: 20px;
    z-index: 1;
}

/* Absoluto - se posiciona respecto al contenedor posicionado más cercano */
.absoluto {
    position: absolute;
    top: 0;
    right: 0;
    z-index: 10;
}

/* Fijo - se posiciona respecto al viewport */
.fijo {
    position: fixed;
    bottom: 20px;
    right: 20px;
    z-index: 1000;
}

/* Pegajoso - combina relative y fixed */
.pegajoso {
    position: sticky;
    top: 0;
    z-index: 100;
}
```

#### Flexbox - Layout Unidimensional
```css
/* Contenedor flex */
.contenedor-flex {
    display: flex;
    
    /* Dirección */
    flex-direction: row;        /* row | row-reverse | column | column-reverse */
    
    /* Ajuste de línea */
    flex-wrap: wrap;            /* nowrap | wrap | wrap-reverse */
    
    /* Atajo para direction y wrap */
    flex-flow: row wrap;
    
    /* Alineación horizontal (eje principal) */
    justify-content: space-between; /* flex-start | flex-end | center | space-around | space-evenly */
    
    /* Alineación vertical (eje cruzado) */
    align-items: center;        /* stretch | flex-start | flex-end | center | baseline */
    
    /* Alineación de líneas múltiples */
    align-content: flex-start;
    
    /* Espaciado */
    gap: 1rem;                  /* Espacio entre elementos */
}

/* Elementos flex */
.item-flex {
    /* Crecimiento, encogimiento, base */
    flex: 1 1 200px;           /* flex-grow | flex-shrink | flex-basis */
    
    /* Alineación individual */
    align-self: flex-end;
    
    /* Orden */
    order: 2;
}

/* Ejemplos prácticos */
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1rem;
}

.card-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 1rem;
}

.card {
    flex: 1 1 300px;
    min-width: 0; /* Permite que el contenido se encoja */
}
```

### 🔍 Nivel 3: CSS Grid - Layout Bidimensional

#### Grid Básico
```css
.contenedor-grid {
    display: grid;
    
    /* Definir columnas */
    grid-template-columns: 200px 1fr 100px;        /* Fijo | Flexible | Fijo */
    grid-template-columns: repeat(3, 1fr);          /* 3 columnas iguales */
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); /* Responsive */
    
    /* Definir filas */
    grid-template-rows: auto 1fr auto;              /* Header | Main | Footer */
    
    /* Espaciado */
    gap: 1rem;                    /* row-gap y column-gap */
    grid-gap: 1rem 2rem;         /* Fila | Columna (sintaxis antigua) */
}

/* Posicionamiento de elementos */
.item-grid {
    /* Por líneas */
    grid-column: 1 / 3;          /* De línea 1 a 3 */
    grid-row: 2 / 4;
    
    /* Por span */
    grid-column: span 2;         /* Ocupa 2 columnas */
    grid-row: span 1;
    
    /* Atajo */
    grid-area: 2 / 1 / 4 / 3;    /* row-start / col-start / row-end / col-end */
}
```

#### Grid con Áreas Nombradas
```css
.layout-grid {
    display: grid;
    grid-template-columns: 250px 1fr;
    grid-template-rows: auto 1fr auto;
    grid-template-areas: 
        "header  header"
        "sidebar main"
        "footer  footer";
    min-height: 100vh;
    gap: 1rem;
}

.header  { grid-area: header; }
.sidebar { grid-area: sidebar; }
.main    { grid-area: main; }
.footer  { grid-area: footer; }
```

### 🔍 Nivel 4: Responsive Design

#### Media Queries
```css
/* Mobile First Approach */
.contenedor {
    width: 100%;
    padding: 1rem;
}

/* Tablet */
@media (min-width: 768px) {
    .contenedor {
        max-width: 750px;
        margin: 0 auto;
        padding: 2rem;
    }
}

/* Desktop */
@media (min-width: 1024px) {
    .contenedor {
        max-width: 1200px;
        padding: 3rem;
    }
}

/* Desktop grande */
@media (min-width: 1440px) {
    .contenedor {
        max-width: 1400px;
    }
}

/* Orientación */
@media (orientation: landscape) {
    .hero {
        height: 60vh;
    }
}

/* Preferencias del usuario */
@media (prefers-reduced-motion: reduce) {
    * {
        animation-duration: 0.01ms !important;
        animation-iteration-count: 1 !important;
        transition-duration: 0.01ms !important;
    }
}

@media (prefers-color-scheme: dark) {
    body {
        background-color: #1a1a1a;
        color: #ffffff;
    }
}
```

#### Unidades Responsivas
```css
.responsive-text {
    /* Unidades relativas */
    font-size: 1.2rem;          /* Relativo al root font-size */
    padding: 2em;               /* Relativo al font-size del elemento */
    
    /* Unidades del viewport */
    width: 90vw;                /* 90% del ancho del viewport */
    height: 100vh;              /* 100% de la altura del viewport */
    font-size: 4vw;             /* 4% del ancho del viewport */
    
    /* Unidades mínimas y máximas */
    font-size: clamp(1rem, 4vw, 2.5rem); /* Mín | Preferido | Máx */
    width: min(90vw, 1200px);   /* El menor de los dos valores */
    height: max(300px, 50vh);   /* El mayor de los dos valores */
}
```

### 🔍 Nivel 5: Animaciones y Transiciones

#### Transiciones
```css
.boton {
    background-color: #007bff;
    color: white;
    padding: 0.75rem 1.5rem;
    border: none;
    border-radius: 0.375rem;
    cursor: pointer;
    
    /* Transición suave */
    transition: all 0.3s ease-in-out;
    
    /* Transiciones específicas */
    transition-property: background-color, transform, box-shadow;
    transition-duration: 0.3s, 0.2s, 0.3s;
    transition-timing-function: ease, ease-out, ease-in-out;
    transition-delay: 0s, 0.1s, 0s;
}

.boton:hover {
    background-color: #0056b3;
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(0, 123, 255, 0.3);
}

.boton:active {
    transform: translateY(0);
}
```

#### Animaciones con Keyframes
```css
/* Definir la animación */
@keyframes fadeInUp {
    0% {
        opacity: 0;
        transform: translateY(30px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

@keyframes pulse {
    0%, 100% {
        transform: scale(1);
    }
    50% {
        transform: scale(1.05);
    }
}

/* Aplicar la animación */
.animado {
    animation: fadeInUp 0.6s ease-out;
}

.pulso {
    animation: pulse 2s infinite;
}

/* Animación compleja */
.compleja {
    animation-name: fadeInUp;
    animation-duration: 0.8s;
    animation-timing-function: cubic-bezier(0.25, 0.46, 0.45, 0.94);
    animation-delay: 0.2s;
    animation-iteration-count: 1;
    animation-direction: normal;
    animation-fill-mode: both;
    animation-play-state: running;
}
```

### 🔍 Nivel 6: Variables CSS y Funciones

#### Custom Properties (Variables CSS)
```css
:root {
    /* Colores */
    --color-primario: #007bff;
    --color-secundario: #6c757d;
    --color-exito: #28a745;
    --color-peligro: #dc3545;
    --color-advertencia: #ffc107;
    
    /* Tipografía */
    --fuente-principal: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
    --fuente-monospace: 'Fira Code', 'Consolas', monospace;
    
    /* Espaciado */
    --espaciado-xs: 0.25rem;
    --espaciado-sm: 0.5rem;
    --espaciado-md: 1rem;
    --espaciado-lg: 1.5rem;
    --espaciado-xl: 3rem;
    
    /* Sombras */
    --sombra-sm: 0 1px 3px rgba(0, 0, 0, 0.12);
    --sombra-md: 0 4px 6px rgba(0, 0, 0, 0.1);
    --sombra-lg: 0 10px 25px rgba(0, 0, 0, 0.15);
    
    /* Bordes */
    --radio-sm: 0.25rem;
    --radio-md: 0.375rem;
    --radio-lg: 0.5rem;
}

/* Uso de variables */
.tarjeta {
    background-color: white;
    border-radius: var(--radio-md);
    box-shadow: var(--sombra-md);
    padding: var(--espaciado-lg);
    font-family: var(--fuente-principal);
}

.boton-primario {
    background-color: var(--color-primario);
    color: white;
    border: none;
    padding: var(--espaciado-sm) var(--espaciado-md);
    border-radius: var(--radio-sm);
}

/* Variables con fallback */
.elemento {
    color: var(--color-personalizado, var(--color-primario));
}
```

#### Funciones CSS
```css
.funciones {
    /* Calc - Cálculos */
    width: calc(100% - 2rem);
    height: calc(100vh - 60px);
    font-size: calc(1rem + 0.5vw);
    
    /* Min/Max */
    width: min(90vw, 1200px);
    height: max(300px, 50vh);
    
    /* Clamp - Valor entre mínimo y máximo */
    font-size: clamp(1rem, 2.5vw, 2rem);
    padding: clamp(1rem, 5vw, 3rem);
    
    /* Colores */
    background-color: hsl(210, 100%, 50%);
    border-color: rgb(255, 0, 0);
    color: rgba(0, 0, 0, 0.8);
    
    /* Gradientes */
    background: linear-gradient(45deg, #ff6b6b, #4ecdc4);
    background: radial-gradient(circle, #ff6b6b 0%, #4ecdc4 100%);
}
```

### 📝 **Ejercicios Prácticos CSS**

#### Ejercicio 1: Layout Responsive
```css
/* Crear un layout que incluya: */
/* 1. Header fijo en la parte superior */
/* 2. Sidebar colapsable en móvil */
/* 3. Contenido principal con grid de tarjetas */
/* 4. Footer pegajoso */
/* 5. Transiciones suaves */
```

#### Ejercicio 2: Componente de Tarjeta
```css
/* Crear una tarjeta que incluya: */
/* 1. Imagen responsive */
/* 2. Contenido con tipografía jerárquica */
/* 3. Botones con estados hover/active */
/* 4. Animación de entrada */
/* 5. Variantes de color usando variables */
```

### ✅ **Checklist CSS**
- [ ] Selectores eficientes y específicos
- [ ] Box model bien entendido
- [ ] Layout responsive con Flexbox/Grid
- [ ] Media queries mobile-first
- [ ] Animaciones y transiciones suaves
- [ ] Variables CSS para consistencia
- [ ] Código CSS organizado y comentado
- [ ] Compatibilidad entre navegadores

## 🛠️ Bootstrap - Framework CSS

> **Tiempo estimado**: 1 semana | **Nivel**: Intermedio

### 🎯 Objetivos de Aprendizaje
- Implementar Bootstrap para desarrollo rápido
- Dominar el sistema de grid responsive
- Utilizar componentes prediseñados
- Personalizar Bootstrap con variables

### 📚 ¿Por qué Bootstrap?

Bootstrap es el framework CSS más popular del mundo. **Aumenta la productividad** significativamente:

#### Ventajas Clave
- ✅ **Desarrollo rápido**: Componentes listos para usar
- ✅ **Responsive por defecto**: Grid system adaptable
- ✅ **Consistencia**: Diseño uniforme en todo el proyecto
- ✅ **Comunidad**: Amplia documentación y soporte
- ✅ **Personalización**: Variables Sass para customizar

### 🔧 Instalación y Configuración

#### Opción 1: CDN (Rápido para prototipos)
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Proyecto Bootstrap</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- CSS personalizado -->
    <link href="css/custom.css" rel="stylesheet">
</head>
<body>
    <!-- Contenido aquí -->
    
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
```

#### Opción 2: Descarga Local (Producción)
```bash
# Descargar desde https://getbootstrap.com/
# Estructura recomendada:
proyecto/
├── css/
│   ├── bootstrap.min.css
│   └── custom.css
├── js/
│   └── bootstrap.bundle.min.js
└── index.html
```

### 🔍 Nivel 1: Sistema de Grid

#### Conceptos del Grid
```html
<!-- Contenedor -->
<div class="container">        <!-- Ancho fijo con breakpoints -->
<div class="container-fluid">  <!-- Ancho completo -->

<!-- Fila -->
<div class="row">
    <!-- Columnas (máximo 12 por fila) -->
    <div class="col-6">Mitad</div>
    <div class="col-6">Mitad</div>
</div>
```

#### Grid Responsive
```html
<div class="container">
    <div class="row">
        <!-- Responsive: diferentes tamaños según dispositivo -->
        <div class="col-12 col-md-6 col-lg-4">
            <!-- Móvil: 12 columnas (100%) -->
            <!-- Tablet: 6 columnas (50%) -->
            <!-- Desktop: 4 columnas (33.33%) -->
            Contenido 1
        </div>
        <div class="col-12 col-md-6 col-lg-4">
            Contenido 2
        </div>
        <div class="col-12 col-md-12 col-lg-4">
            Contenido 3
        </div>
    </div>
</div>
```

#### Breakpoints de Bootstrap
```css
/* Extra small (xs): <576px */
/* Small (sm): ≥576px */
/* Medium (md): ≥768px */
/* Large (lg): ≥992px */
/* Extra large (xl): ≥1200px */
/* Extra extra large (xxl): ≥1400px */
```

#### Ejemplos Prácticos de Grid
```html
<!-- Layout típico de blog -->
<div class="container">
    <div class="row">
        <div class="col-lg-8">
            <main>
                <h1>Artículo Principal</h1>
                <p>Contenido del artículo...</p>
            </main>
        </div>
        <div class="col-lg-4">
            <aside>
                <h3>Sidebar</h3>
                <p>Contenido lateral...</p>
            </aside>
        </div>
    </div>
</div>

<!-- Grid de productos -->
<div class="container">
    <div class="row g-4"> <!-- g-4 = gap de 1.5rem -->
        <div class="col-6 col-md-4 col-lg-3">
            <div class="card">Producto 1</div>
        </div>
        <div class="col-6 col-md-4 col-lg-3">
            <div class="card">Producto 2</div>
        </div>
        <div class="col-6 col-md-4 col-lg-3">
            <div class="card">Producto 3</div>
        </div>
        <div class="col-6 col-md-4 col-lg-3">
            <div class="card">Producto 4</div>
        </div>
    </div>
</div>
```

### 🔍 Nivel 2: Componentes Esenciales

#### Navegación Responsive
```html
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <!-- Logo/Marca -->
        <a class="navbar-brand" href="#">
            <img src="logo.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
            Mi Empresa
        </a>
        
        <!-- Botón hamburguesa para móvil -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <!-- Menú colapsable -->
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Servicios</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
                        Productos
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Producto A</a></li>
                        <li><a class="dropdown-item" href="#">Producto B</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Todos los productos</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contacto</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
```

#### Tarjetas (Cards)
```html
<div class="row g-4">
    <!-- Tarjeta básica -->
    <div class="col-md-4">
        <div class="card h-100"> <!-- h-100 = altura completa -->
            <img src="imagen1.jpg" class="card-img-top" alt="...">
            <div class="card-body d-flex flex-column">
                <h5 class="card-title">Título de la Tarjeta</h5>
                <p class="card-text flex-grow-1">Descripción del contenido de la tarjeta.</p>
                <a href="#" class="btn btn-primary mt-auto">Ver más</a>
            </div>
        </div>
    </div>
    
    <!-- Tarjeta con header y footer -->
    <div class="col-md-4">
        <div class="card h-100">
            <div class="card-header">
                <h6 class="mb-0">Categoría</h6>
            </div>
            <div class="card-body">
                <h5 class="card-title">Tarjeta Especial</h5>
                <p class="card-text">Contenido con header y footer.</p>
            </div>
            <div class="card-footer text-muted">
                <small>Actualizado hace 3 minutos</small>
            </div>
        </div>
    </div>
    
    <!-- Tarjeta horizontal -->
    <div class="col-md-4">
        <div class="card h-100">
            <div class="row g-0">
                <div class="col-4">
                    <img src="imagen3.jpg" class="img-fluid rounded-start h-100 object-fit-cover" alt="...">
                </div>
                <div class="col-8">
                    <div class="card-body">
                        <h5 class="card-title">Tarjeta Horizontal</h5>
                        <p class="card-text">Layout horizontal.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
```

#### Formularios Estilizados
```html
<form class="needs-validation" novalidate>
    <div class="row g-3">
        <!-- Campo de texto -->
        <div class="col-md-6">
            <label for="firstName" class="form-label">Nombre *</label>
            <input type="text" class="form-control" id="firstName" required>
            <div class="invalid-feedback">
                El nombre es requerido.
            </div>
        </div>
        
        <!-- Campo de email -->
        <div class="col-md-6">
            <label for="email" class="form-label">Email *</label>
            <div class="input-group">
                <span class="input-group-text">@</span>
                <input type="email" class="form-control" id="email" required>
                <div class="invalid-feedback">
                    Ingresa un email válido.
                </div>
            </div>
        </div>
        
        <!-- Select -->
        <div class="col-md-4">
            <label for="country" class="form-label">País</label>
            <select class="form-select" id="country">
                <option selected disabled value="">Seleccionar...</option>
                <option value="mx">México</option>
                <option value="us">Estados Unidos</option>
                <option value="ca">Canadá</option>
            </select>
        </div>
        
        <!-- Checkbox -->
        <div class="col-12">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="terms" required>
                <label class="form-check-label" for="terms">
                    Acepto los términos y condiciones *
                </label>
                <div class="invalid-feedback">
                    Debes aceptar los términos.
                </div>
            </div>
        </div>
        
        <!-- Botones -->
        <div class="col-12">
            <button class="btn btn-primary" type="submit">Enviar</button>
            <button class="btn btn-outline-secondary ms-2" type="reset">Limpiar</button>
        </div>
    </div>
</form>
```

#### Modal Interactivo
```html
<!-- Botón trigger -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Abrir Modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5">Título del Modal</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <p>Contenido del modal con formulario o información.</p>
                <form>
                    <div class="mb-3">
                        <label for="modalInput" class="form-label">Campo de ejemplo</label>
                        <input type="text" class="form-control" id="modalInput">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary">Guardar cambios</button>
            </div>
        </div>
    </div>
</div>
```

### 🔍 Nivel 3: Utilidades de Bootstrap

#### Sistema de Espaciado
```html
<!-- Margin: m-{sides}-{size} -->
<div class="m-3">Margen en todos los lados (1rem)</div>
<div class="mt-2 mb-4">Margen top 0.5rem, bottom 1.5rem</div>
<div class="mx-auto">Centrado horizontalmente</div>

<!-- Padding: p-{sides}-{size} -->
<div class="p-4">Padding en todos los lados (1.5rem)</div>
<div class="px-3 py-2">Padding horizontal 1rem, vertical 0.5rem</div>

<!-- Responsive spacing -->
<div class="p-2 p-md-4 p-lg-5">Padding responsive</div>

<!-- Tamaños: 0, 1, 2, 3, 4, 5, auto -->
<!-- 0 = 0, 1 = 0.25rem, 2 = 0.5rem, 3 = 1rem, 4 = 1.5rem, 5 = 3rem -->
```

#### Colores y Fondos
```html
<!-- Colores de texto -->
<p class="text-primary">Texto primario</p>
<p class="text-success">Texto de éxito</p>
<p class="text-danger">Texto de peligro</p>
<p class="text-warning">Texto de advertencia</p>
<p class="text-info">Texto informativo</p>
<p class="text-muted">Texto silenciado</p>

<!-- Fondos -->
<div class="bg-primary text-white p-3">Fondo primario</div>
<div class="bg-light text-dark p-3">Fondo claro</div>
<div class="bg-gradient bg-primary text-white p-3">Fondo con gradiente</div>

<!-- Opacidad -->
<div class="bg-success text-white bg-opacity-75 p-3">Fondo con 75% opacidad</div>
```

#### Flexbox y Alineación
```html
<!-- Contenedor flex -->
<div class="d-flex justify-content-between align-items-center">
    <div>Izquierda</div>
    <div>Centro</div>
    <div>Derecha</div>
</div>

<!-- Dirección flex -->
<div class="d-flex flex-column flex-md-row">
    <div class="flex-fill">Elemento 1</div>
    <div class="flex-fill">Elemento 2</div>
</div>

<!-- Alineación de texto -->
<div class="text-center text-md-start">
    Centrado en móvil, izquierda en desktop
</div>
```

### 📊 Comparación: Antes vs Después de Bootstrap

#### Sin Bootstrap (CSS Personalizado)
```css
/* Necesitas escribir todo esto */
.navbar {
    background-color: #007bff;
    padding: 1rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.navbar-brand {
    color: white;
    text-decoration: none;
    font-weight: bold;
}

.navbar-nav {
    display: flex;
    list-style: none;
    margin: 0;
    padding: 0;
}

.nav-item {
    margin-left: 1rem;
}

.nav-link {
    color: white;
    text-decoration: none;
}

.nav-link:hover {
    color: #ccc;
}

@media (max-width: 768px) {
    .navbar {
        flex-direction: column;
    }
    .navbar-nav {
        margin-top: 1rem;
    }
}

/* Y mucho más código... */
```

#### Con Bootstrap (Solo HTML)
```html
<!-- Solo necesitas esto -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand" href="#">Mi Sitio</a>
        <div class="navbar-nav ms-auto">
            <a class="nav-link" href="#">Inicio</a>
            <a class="nav-link" href="#">Servicios</a>
        </div>
    </div>
</nav>
```

**Resultado**: 🚀 **90% menos código**, responsive automático, accesibilidad incluida.

### 📝 **Ejercicio Práctico Bootstrap**

#### Proyecto: Landing Page Completa
```html
<!-- Crear una landing page que incluya: -->
<!-- 1. Navbar responsive con dropdown -->
<!-- 2. Hero section con jumbotron -->
<!-- 3. Sección de servicios con cards -->
<!-- 4. Formulario de contacto estilizado -->
<!-- 5. Footer con enlaces sociales -->
<!-- 6. Modal para más información -->
```

### ✅ **Checklist Bootstrap**
- [ ] Grid system responsive implementado
- [ ] Componentes de navegación funcionales
- [ ] Formularios con validación visual
- [ ] Cards con diseño consistente
- [ ] Utilidades de espaciado aplicadas
- [ ] Colores temáticos utilizados
- [ ] Responsive en todos los dispositivos
- [ ] JavaScript de Bootstrap funcionando

---

## JavaScript - Lenguaje de Programación

### Nivel Básico

#### ¿Qué es JavaScript?
JavaScript es un lenguaje de programación que permite crear páginas web interactivas. Se ejecuta en el navegador y puede manipular el contenido HTML y CSS dinámicamente.

#### Sintaxis Básica

**Variables**
```javascript
// Declaración de variables
let nombre = "Juan";
const edad = 25;
var ciudad = "Madrid"; // Evitar usar var

// Tipos de datos
let numero = 42;
let texto = "Hola mundo";
let booleano = true;
let nulo = null;
let indefinido = undefined;
let objeto = { nombre: "Ana", edad: 30 };
let array = [1, 2, 3, 4, 5];
```

**Operadores**
```javascript
// Aritméticos
let suma = 5 + 3;        // 8
let resta = 10 - 4;      // 6
let multiplicacion = 3 * 7; // 21
let division = 15 / 3;   // 5
let modulo = 17 % 5;     // 2

// Comparación
let igual = 5 == "5";    // true (comparación débil)
let estrictamenteIgual = 5 === "5"; // false (comparación estricta)
let mayor = 10 > 5;      // true
let menor = 3 < 8;       // true

// Lógicos
let y = true && false;   // false
let o = true || false;   // true
let no = !true;          // false
```

**Estructuras de Control**
```javascript
// Condicionales
let edad = 18;

if (edad >= 18) {
    console.log("Eres mayor de edad");
} else if (edad >= 13) {
    console.log("Eres adolescente");
} else {
    console.log("Eres menor de edad");
}

// Switch
let dia = "lunes";

switch (dia) {
    case "lunes":
        console.log("Inicio de semana");
        break;
    case "viernes":
        console.log("Fin de semana laboral");
        break;
    default:
        console.log("Día normal");
}

// Operador ternario
let mensaje = edad >= 18 ? "Adulto" : "Menor";
```

**Bucles**
```javascript
// For tradicional
for (let i = 0; i < 5; i++) {
    console.log("Número: " + i);
}

// For...of (para arrays)
let frutas = ["manzana", "banana", "naranja"];
for (let fruta of frutas) {
    console.log(fruta);
}

// For...in (para objetos)
let persona = { nombre: "Ana", edad: 25, ciudad: "Barcelona" };
for (let propiedad in persona) {
    console.log(propiedad + ": " + persona[propiedad]);
}

// While
let contador = 0;
while (contador < 3) {
    console.log("Contador: " + contador);
    contador++;
}
```

**Funciones**
```javascript
// Declaración de función
function saludar(nombre) {
    return "Hola, " + nombre + "!";
}

// Expresión de función
const despedir = function(nombre) {
    return "Adiós, " + nombre + "!";
};

// Función flecha
const multiplicar = (a, b) => a * b;

// Función con parámetros por defecto
function presentar(nombre, edad = 18) {
    return `Me llamo ${nombre} y tengo ${edad} años`;
}

// Llamadas a funciones
console.log(saludar("María"));
console.log(despedir("Carlos"));
console.log(multiplicar(4, 5));
console.log(presentar("Luis"));
```

### Nivel Intermedio

#### Manipulación del DOM

**Selección de Elementos**
```javascript
// Seleccionar por ID
const titulo = document.getElementById("titulo");

// Seleccionar por clase
const botones = document.getElementsByClassName("btn");

// Seleccionar por etiqueta
const parrafos = document.getElementsByTagName("p");

// Selectores CSS (más modernos)
const primerBoton = document.querySelector(".btn");
const todosBotones = document.querySelectorAll(".btn");
```

**Modificación de Contenido**
```javascript
// Cambiar texto
titulo.textContent = "Nuevo título";
titulo.innerHTML = "<strong>Título en negrita</strong>";

// Cambiar atributos
const imagen = document.querySelector("img");
imagen.src = "nueva-imagen.jpg";
imagen.alt = "Nueva descripción";

// Cambiar estilos
titulo.style.color = "blue";
titulo.style.fontSize = "24px";

// Agregar/quitar clases
titulo.classList.add("destacado");
titulo.classList.remove("oculto");
titulo.classList.toggle("activo");
```

**Eventos**
```javascript
// Event listener básico
const boton = document.querySelector("#miBoton");

boton.addEventListener("click", function() {
    alert("¡Botón clickeado!");
});

// Con función flecha
boton.addEventListener("click", () => {
    console.log("Click en el botón");
});

// Evento con parámetros
function manejarClick(evento) {
    console.log("Elemento clickeado:", evento.target);
    evento.preventDefault(); // Prevenir comportamiento por defecto
}

boton.addEventListener("click", manejarClick);

// Múltiples eventos
const input = document.querySelector("#miInput");

input.addEventListener("focus", () => console.log("Input enfocado"));
input.addEventListener("blur", () => console.log("Input desenfocado"));
input.addEventListener("input", (e) => console.log("Valor:", e.target.value));
```

**Creación y Manipulación de Elementos**
```javascript
// Crear elementos
const nuevoDiv = document.createElement("div");
nuevoDiv.textContent = "Nuevo contenido";
nuevoDiv.className = "mi-clase";

// Agregar al DOM
document.body.appendChild(nuevoDiv);

// Insertar en posición específica
const contenedor = document.querySelector("#contenedor");
const primerHijo = contenedor.firstElementChild;
contenedor.insertBefore(nuevoDiv, primerHijo);

// Eliminar elementos
const elementoAEliminar = document.querySelector(".eliminar");
elementoAEliminar.remove();
```

#### Arrays y Objetos Avanzados

**Métodos de Arrays**
```javascript
const numeros = [1, 2, 3, 4, 5];

// Map - transformar elementos
const duplicados = numeros.map(num => num * 2);
console.log(duplicados); // [2, 4, 6, 8, 10]

// Filter - filtrar elementos
const pares = numeros.filter(num => num % 2 === 0);
console.log(pares); // [2, 4]

// Reduce - reducir a un valor
const suma = numeros.reduce((acc, num) => acc + num, 0);
console.log(suma); // 15

// Find - encontrar elemento
const encontrado = numeros.find(num => num > 3);
console.log(encontrado); // 4

// Some y Every
const hayPares = numeros.some(num => num % 2 === 0);
const todosPares = numeros.every(num => num % 2 === 0);

// ForEach - iterar
numeros.forEach((num, index) => {
    console.log(`Posición ${index}: ${num}`);
});
```

**Destructuring**
```javascript
// Array destructuring
const colores = ["rojo", "verde", "azul"];
const [primero, segundo, tercero] = colores;

// Object destructuring
const persona = { nombre: "Ana", edad: 25, ciudad: "Madrid" };
const { nombre, edad } = persona;

// Con nombres diferentes
const { nombre: nombrePersona, edad: edadPersona } = persona;

// Parámetros de función
function presentarPersona({ nombre, edad, ciudad = "No especificada" }) {
    return `${nombre}, ${edad} años, de ${ciudad}`;
}
```

**Spread Operator**
```javascript
// Arrays
const arr1 = [1, 2, 3];
const arr2 = [4, 5, 6];
const combinado = [...arr1, ...arr2]; // [1, 2, 3, 4, 5, 6]

// Objetos
const obj1 = { a: 1, b: 2 };
const obj2 = { c: 3, d: 4 };
const combinadoObj = { ...obj1, ...obj2 }; // { a: 1, b: 2, c: 3, d: 4 }

// Copiar arrays/objetos
const copiaArray = [...arr1];
const copiaObjeto = { ...obj1 };
```

### Nivel Avanzado

#### Programación Asíncrona

**Callbacks**
```javascript
function obtenerDatos(callback) {
    setTimeout(() => {
        const datos = { id: 1, nombre: "Usuario" };
        callback(datos);
    }, 1000);
}

obtenerDatos((datos) => {
    console.log("Datos recibidos:", datos);
});
```

**Promises**
```javascript
function obtenerDatosPromise() {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            const exito = Math.random() > 0.5;
            if (exito) {
                resolve({ id: 1, nombre: "Usuario" });
            } else {
                reject(new Error("Error al obtener datos"));
            }
        }, 1000);
    });
}

// Usar Promise
obtenerDatosPromise()
    .then(datos => {
        console.log("Datos:", datos);
        return datos.id;
    })
    .then(id => {
        console.log("ID:", id);
    })
    .catch(error => {
        console.error("Error:", error.message);
    })
    .finally(() => {
        console.log("Operación completada");
    });
```

**Async/Await**
```javascript
async function procesarDatos() {
    try {
        const datos = await obtenerDatosPromise();
        console.log("Datos recibidos:", datos);
        
        const procesamientoAdicional = await procesarMas(datos);
        console.log("Procesamiento completo:", procesamientoAdicional);
        
        return procesamientoAdicional;
    } catch (error) {
        console.error("Error en el procesamiento:", error);
        throw error;
    }
}

// Llamar función async
procesarDatos()
    .then(resultado => console.log("Resultado final:", resultado))
    .catch(error => console.error("Error final:", error));
```

**Fetch API**
```javascript
// GET request
async function obtenerUsuarios() {
    try {
        const response = await fetch('https://jsonplaceholder.typicode.com/users');
        
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        
        const usuarios = await response.json();
        return usuarios;
    } catch (error) {
        console.error('Error al obtener usuarios:', error);
        throw error;
    }
}

// POST request
async function crearUsuario(datosUsuario) {
    try {
        const response = await fetch('https://jsonplaceholder.typicode.com/users', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(datosUsuario)
        });
        
        const nuevoUsuario = await response.json();
        return nuevoUsuario;
    } catch (error) {
        console.error('Error al crear usuario:', error);
        throw error;
    }
}
```

#### Clases y Programación Orientada a Objetos

```javascript
class Persona {
    constructor(nombre, edad) {
        this.nombre = nombre;
        this.edad = edad;
    }
    
    saludar() {
        return `Hola, soy ${this.nombre} y tengo ${this.edad} años`;
    }
    
    cumplirAnios() {
        this.edad++;
        return this.edad;
    }
    
    // Método estático
    static compararEdades(persona1, persona2) {
        return persona1.edad - persona2.edad;
    }
    
    // Getter
    get informacion() {
        return `${this.nombre} (${this.edad} años)`;
    }
    
    // Setter
    set nuevaEdad(edad) {
        if (edad >= 0) {
            this.edad = edad;
        }
    }
}

// Herencia
class Estudiante extends Persona {
    constructor(nombre, edad, carrera) {
        super(nombre, edad);
        this.carrera = carrera;
    }
    
    estudiar() {
        return `${this.nombre} está estudiando ${this.carrera}`;
    }
    
    // Sobrescribir método
    saludar() {
        return `${super.saludar()} y estudio ${this.carrera}`;
    }
}

// Uso
const persona1 = new Persona("Ana", 25);
const estudiante1 = new Estudiante("Carlos", 20, "Ingeniería");

console.log(persona1.saludar());
console.log(estudiante1.saludar());
console.log(estudiante1.estudiar());
```

#### Módulos ES6

**Exportar (archivo: utils.js)**
```javascript
// Exportación nombrada
export function sumar(a, b) {
    return a + b;
}

export const PI = 3.14159;

export class Calculadora {
    static multiplicar(a, b) {
        return a * b;
    }
}

// Exportación por defecto
export default function restar(a, b) {
    return a - b;
}
```

**Importar (archivo: main.js)**
```javascript
// Importar exportación por defecto
import restar from './utils.js';

// Importar exportaciones nombradas
import { sumar, PI, Calculadora } from './utils.js';

// Importar todo
import * as Utils from './utils.js';

// Usar las importaciones
console.log(sumar(5, 3));
console.log(restar(10, 4));
console.log(PI);
console.log(Calculadora.multiplicar(6, 7));
```

#### Local Storage y Session Storage

```javascript
// Local Storage (persiste después de cerrar el navegador)
localStorage.setItem('usuario', JSON.stringify({ nombre: 'Ana', edad: 25 }));
const usuario = JSON.parse(localStorage.getItem('usuario'));
localStorage.removeItem('usuario');
localStorage.clear();

// Session Storage (se borra al cerrar la pestaña)
sessionStorage.setItem('sesion', 'activa');
const sesion = sessionStorage.getItem('sesion');

// Ejemplo práctico: Guardar preferencias del usuario
class PreferenciasUsuario {
    static guardar(preferencias) {
        localStorage.setItem('preferencias', JSON.stringify(preferencias));
    }
    
    static cargar() {
        const preferencias = localStorage.getItem('preferencias');
        return preferencias ? JSON.parse(preferencias) : {};
    }
    
    static aplicarTema(tema) {
        document.body.className = tema;
        this.guardar({ ...this.cargar(), tema });
    }
}
```

---

## Proyectos Prácticos

### Proyecto 1: Landing Page Responsive

**HTML (index.html)**
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Landing Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Navegación -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">MiEmpresa</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#inicio">Inicio</a></li>
                    <li class="nav-item"><a class="nav-link" href="#servicios">Servicios</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contacto">Contacto</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="inicio" class="hero-section">
        <div class="container">
            <div class="row align-items-center min-vh-100">
                <div class="col-lg-6">
                    <h1 class="display-4 fw-bold mb-4">Soluciones Innovadoras</h1>
                    <p class="lead mb-4">Transformamos tu negocio con tecnología de vanguardia</p>
                    <button class="btn btn-success btn-lg" onclick="scrollToSection('contacto')">
                        Comenzar Ahora
                    </button>
                </div>
                <div class="col-lg-6">
                    <img src="https://via.placeholder.com/500x400" class="img-fluid rounded" alt="Hero Image">
                </div>
            </div>
        </div>
    </section>

    <!-- Servicios -->
    <section id="servicios" class="py-5 bg-light">
        <div class="container">
            <h2 class="text-center mb-5">Nuestros Servicios</h2>
            <div class="row" id="servicios-container">
                <!-- Los servicios se cargarán dinámicamente -->
            </div>
        </div>
    </section>

    <!-- Contacto -->
    <section id="contacto" class="py-5">
        <div class="container">
            <h2 class="text-center mb-5">Contáctanos</h2>
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <form id="contactForm">
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombre" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" required>
                        </div>
                        <div class="mb-3">
                            <label for="mensaje" class="form-label">Mensaje</label>
                            <textarea class="form-control" id="mensaje" rows="4" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Enviar Mensaje</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="script.js"></script>
</body>
</html>
```

**CSS (styles.css)**
```css
:root {
    --color-primario: #007bff;
    --color-secundario: #28a745;
    --color-texto: #333;
    --fuente-principal: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    font-family: var(--fuente-principal);
    color: var(--color-texto);
    padding-top: 76px;
}

.hero-section {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
}

.service-card {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    cursor: pointer;
}

.service-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
}

.fade-in {
    opacity: 0;
    transform: translateY(30px);
    transition: opacity 0.6s ease, transform 0.6s ease;
}

.fade-in.visible {
    opacity: 1;
    transform: translateY(0);
}

@media (max-width: 768px) {
    .hero-section h1 {
        font-size: 2rem;
    }
    
    .hero-section .lead {
        font-size: 1rem;
    }
}
```

**JavaScript (script.js)**
```javascript
// Datos de servicios
const servicios = [
    {
        titulo: "Desarrollo Web",
        descripcion: "Sitios web modernos y responsivos",
        icono: "🌐"
    },
    {
        titulo: "Aplicaciones Móviles",
        descripcion: "Apps nativas e híbridas",
        icono: "📱"
    },
    {
        titulo: "Consultoría IT",
        descripcion: "Asesoramiento tecnológico especializado",
        icono: "💼"
    }
];

// Cargar servicios dinámicamente
function cargarServicios() {
    const container = document.getElementById('servicios-container');
    
    servicios.forEach((servicio, index) => {
        const servicioHTML = `
            <div class="col-md-4 mb-4">
                <div class="card service-card h-100 fade-in" style="animation-delay: ${index * 0.2}s">
                    <div class="card-body text-center">
                        <div class="display-4 mb-3">${servicio.icono}</div>
                        <h5 class="card-title">${servicio.titulo}</h5>
                        <p class="card-text">${servicio.descripcion}</p>
                    </div>
                </div>
            </div>
        `;
        container.innerHTML += servicioHTML;
    });
}

// Scroll suave a secciones
function scrollToSection(sectionId) {
    const element = document.getElementById(sectionId);
    element.scrollIntoView({ behavior: 'smooth' });
}

// Animación de aparición
function observarElementos() {
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
            }
        });
    });

    document.querySelectorAll('.fade-in').forEach(el => {
        observer.observe(el);
    });
}

// Manejar formulario de contacto
function manejarFormulario() {
    const form = document.getElementById('contactForm');
    
    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        
        const formData = {
            nombre: document.getElementById('nombre').value,
            email: document.getElementById('email').value,
            mensaje: document.getElementById('mensaje').value
        };
        
        // Simular envío
        const boton = form.querySelector('button[type="submit"]');
        const textoOriginal = boton.textContent;
        
        boton.textContent = 'Enviando...';
        boton.disabled = true;
        
        setTimeout(() => {
            alert('¡Mensaje enviado correctamente!');
            form.reset();
            boton.textContent = textoOriginal;
            boton.disabled = false;
        }, 2000);
    });
}

// Inicializar cuando el DOM esté listo
document.addEventListener('DOMContentLoaded', () => {
    cargarServicios();
    observarElementos();
    manejarFormulario();
});
```

### Proyecto 2: Aplicación de Lista de Tareas

**HTML (todo.html)**
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Tareas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="todo.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white">
                        <h2 class="mb-0 text-center">📝 Lista de Tareas</h2>
                    </div>
                    <div class="card-body">
                        <!-- Formulario para agregar tareas -->
                        <form id="todoForm" class="mb-4">
                            <div class="input-group">
                                <input type="text" id="todoInput" class="form-control" 
                                       placeholder="Escribe una nueva tarea..." required>
                                <button type="submit" class="btn btn-success">Agregar</button>
                            </div>
                        </form>
                        
                        <!-- Filtros -->
                        <div class="btn-group w-100 mb-3" role="group">
                            <button type="button" class="btn btn-outline-secondary active" 
                                    onclick="filtrarTareas('todas')">Todas</button>
                            <button type="button" class="btn btn-outline-secondary" 
                                    onclick="filtrarTareas('pendientes')">Pendientes</button>
                            <button type="button" class="btn btn-outline-secondary" 
                                    onclick="filtrarTareas('completadas')">Completadas</button>
                        </div>
                        
                        <!-- Lista de tareas -->
                        <ul id="todoList" class="list-group">
                            <!-- Las tareas se cargarán aquí -->
                        </ul>
                        
                        <!-- Estadísticas -->
                        <div class="mt-3 text-center">
                            <small class="text-muted">
                                <span id="stats">0 tareas pendientes</span>
                            </small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="todo.js"></script>
</body>
</html>
```

**JavaScript (todo.js)**
```javascript
class TodoApp {
    constructor() {
        this.tareas = this.cargarTareas();
        this.filtroActual = 'todas';
        this.inicializar();
    }
    
    inicializar() {
        this.renderizarTareas();
        this.configurarEventos();
        this.actualizarEstadisticas();
    }
    
    configurarEventos() {
        const form = document.getElementById('todoForm');
        const input = document.getElementById('todoInput');
        
        form.addEventListener('submit', (e) => {
            e.preventDefault();
            this.agregarTarea(input.value.trim());
            input.value = '';
        });
    }
    
    agregarTarea(texto) {
        if (!texto) return;
        
        const nuevaTarea = {
            id: Date.now(),
            texto: texto,
            completada: false,
            fechaCreacion: new Date().toISOString()
        };
        
        this.tareas.unshift(nuevaTarea);
        this.guardarTareas();
        this.renderizarTareas();
        this.actualizarEstadisticas();
    }
    
    toggleTarea(id) {
        const tarea = this.tareas.find(t => t.id === id);
        if (tarea) {
            tarea.completada = !tarea.completada;
            this.guardarTareas();
            this.renderizarTareas();
            this.actualizarEstadisticas();
        }
    }
    
    eliminarTarea(id) {
        this.tareas = this.tareas.filter(t => t.id !== id);
        this.guardarTareas();
        this.renderizarTareas();
        this.actualizarEstadisticas();
    }
    
    editarTarea(id, nuevoTexto) {
        const tarea = this.tareas.find(t => t.id === id);
        if (tarea && nuevoTexto.trim()) {
            tarea.texto = nuevoTexto.trim();
            this.guardarTareas();
            this.renderizarTareas();
        }
    }
    
    filtrarTareas(filtro) {
        this.filtroActual = filtro;
        
        // Actualizar botones activos
        document.querySelectorAll('.btn-group button').forEach(btn => {
            btn.classList.remove('active');
        });
        event.target.classList.add('active');
        
        this.renderizarTareas();
    }
    
    obtenerTareasFiltradas() {
        switch (this.filtroActual) {
            case 'pendientes':
                return this.tareas.filter(t => !t.completada);
            case 'completadas':
                return this.tareas.filter(t => t.completada);
            default:
                return this.tareas;
        }
    }
    
    renderizarTareas() {
        const lista = document.getElementById('todoList');
        const tareasFiltradas = this.obtenerTareasFiltradas();
        
        if (tareasFiltradas.length === 0) {
            lista.innerHTML = `
                <li class="list-group-item text-center text-muted">
                    <em>No hay tareas ${this.filtroActual === 'todas' ? '' : this.filtroActual}</em>
                </li>
            `;
            return;
        }
        
        lista.innerHTML = tareasFiltradas.map(tarea => `
            <li class="list-group-item d-flex justify-content-between align-items-center ${tarea.completada ? 'completed' : ''}">
                <div class="d-flex align-items-center flex-grow-1">
                    <input type="checkbox" class="form-check-input me-3" 
                           ${tarea.completada ? 'checked' : ''} 
                           onchange="todoApp.toggleTarea(${tarea.id})">
                    <span class="task-text ${tarea.completada ? 'text-decoration-line-through text-muted' : ''}" 
                          ondblclick="todoApp.iniciarEdicion(${tarea.id}, this)">
                        ${tarea.texto}
                    </span>
                </div>
                <button class="btn btn-outline-danger btn-sm" 
                        onclick="todoApp.eliminarTarea(${tarea.id})" 
                        title="Eliminar tarea">
                    🗑️
                </button>
            </li>
        `).join('');
    }
    
    iniciarEdicion(id, elemento) {
        const tarea = this.tareas.find(t => t.id === id);
        if (!tarea || tarea.completada) return;
        
        const input = document.createElement('input');
        input.type = 'text';
        input.className = 'form-control form-control-sm';
        input.value = tarea.texto;
        
        input.addEventListener('blur', () => {
            this.editarTarea(id, input.value);
        });
        
        input.addEventListener('keypress', (e) => {
            if (e.key === 'Enter') {
                input.blur();
            }
        });
        
        elemento.replaceWith(input);
        input.focus();
        input.select();
    }
    
    actualizarEstadisticas() {
        const pendientes = this.tareas.filter(t => !t.completada).length;
        const completadas = this.tareas.filter(t => t.completada).length;
        const total = this.tareas.length;
        
        const stats = document.getElementById('stats');
        stats.textContent = `${pendientes} pendientes, ${completadas} completadas (${total} total)`;
    }
    
    guardarTareas() {
        localStorage.setItem('todoApp_tareas', JSON.stringify(this.tareas));
    }
    
    cargarTareas() {
        const tareas = localStorage.getItem('todoApp_tareas');
        return tareas ? JSON.parse(tareas) : [];
    }
}

// Función global para filtrar (llamada desde HTML)
function filtrarTareas(filtro) {
    todoApp.filtrarTareas(filtro);
}

// Inicializar la aplicación
const todoApp = new TodoApp();
```

**CSS (todo.css)**
```css
.completed {
    background-color: #f8f9fa;
}

.task-text {
    cursor: pointer;
    user-select: none;
}

.task-text:hover {
    background-color: #f8f9fa;
    border-radius: 4px;
    padding: 2px 4px;
}

.list-group-item {
    transition: all 0.2s ease;
}

.list-group-item:hover {
    background-color: #f8f9fa;
}

.btn-group .btn {
    transition: all 0.2s ease;
}

@keyframes slideIn {
    from {
        opacity: 0;
        transform: translateX(-20px);
    }
    to {
        opacity: 1;
        transform: translateX(0);
    }
}

.list-group-item {
    animation: slideIn 0.3s ease;
}
```

### Proyecto 3: Calculadora de Gastos Personales

**Paso 1: Estructura HTML**
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>💰 Calculadora de Gastos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-4">
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <div class="card shadow">
                    <div class="card-header bg-success text-white">
                        <h2 class="mb-0">💰 Control de Gastos Personales</h2>
                    </div>
                    <div class="card-body">
                        <!-- Formulario de gastos -->
                        <form id="gastoForm" class="mb-4">
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="descripcion" class="form-label">Descripción</label>
                                    <input type="text" id="descripcion" class="form-control" placeholder="Ej: Almuerzo" required>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="monto" class="form-label">Monto ($)</label>
                                    <input type="number" id="monto" class="form-control" step="0.01" min="0" required>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="categoria" class="form-label">Categoría</label>
                                    <select id="categoria" class="form-select" required>
                                        <option value="">Seleccionar...</option>
                                        <option value="comida">🍔 Comida</option>
                                        <option value="transporte">🚗 Transporte</option>
                                        <option value="entretenimiento">🎬 Entretenimiento</option>
                                        <option value="salud">🏥 Salud</option>
                                        <option value="otros">📦 Otros</option>
                                    </select>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-success">Agregar Gasto</button>
                        </form>
                        
                        <!-- Resumen -->
                        <div class="row mb-4">
                            <div class="col-md-4">
                                <div class="card bg-primary text-white">
                                    <div class="card-body text-center">
                                        <h5>Total Gastado</h5>
                                        <h3 id="totalGastado">$0.00</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card bg-info text-white">
                                    <div class="card-body text-center">
                                        <h5>Gastos Hoy</h5>
                                        <h3 id="gastosHoy">$0.00</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card bg-warning text-white">
                                    <div class="card-body text-center">
                                        <h5>Promedio Diario</h5>
                                        <h3 id="promedioDiario">$0.00</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Lista de gastos -->
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h4>Historial de Gastos</h4>
                            <button class="btn btn-outline-danger btn-sm" onclick="limpiarGastos()">Limpiar Todo</button>
                        </div>
                        <div id="listaGastos"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="gastos.js"></script>
</body>
</html>
```

**Paso 2: JavaScript Funcional (gastos.js)**
```javascript
class CalculadoraGastos {
    constructor() {
        this.gastos = this.cargarGastos();
        this.inicializar();
    }
    
    inicializar() {
        this.configurarFormulario();
        this.actualizarUI();
    }
    
    configurarFormulario() {
        const form = document.getElementById('gastoForm');
        form.addEventListener('submit', (e) => {
            e.preventDefault();
            this.agregarGasto();
        });
    }
    
    agregarGasto() {
        const descripcion = document.getElementById('descripcion').value;
        const monto = parseFloat(document.getElementById('monto').value);
        const categoria = document.getElementById('categoria').value;
        
        const nuevoGasto = {
            id: Date.now(),
            descripcion,
            monto,
            categoria,
            fecha: new Date().toISOString().split('T')[0],
            timestamp: new Date().toLocaleString()
        };
        
        this.gastos.unshift(nuevoGasto);
        this.guardarGastos();
        this.actualizarUI();
        this.limpiarFormulario();
    }
    
    eliminarGasto(id) {
        this.gastos = this.gastos.filter(g => g.id !== id);
        this.guardarGastos();
        this.actualizarUI();
    }
    
    actualizarUI() {
        this.actualizarResumen();
        this.renderizarGastos();
    }
    
    actualizarResumen() {
        const total = this.gastos.reduce((sum, gasto) => sum + gasto.monto, 0);
        const hoy = new Date().toISOString().split('T')[0];
        const gastosHoy = this.gastos
            .filter(g => g.fecha === hoy)
            .reduce((sum, gasto) => sum + gasto.monto, 0);
        
        const diasConGastos = [...new Set(this.gastos.map(g => g.fecha))].length;
        const promedio = diasConGastos > 0 ? total / diasConGastos : 0;
        
        document.getElementById('totalGastado').textContent = `$${total.toFixed(2)}`;
        document.getElementById('gastosHoy').textContent = `$${gastosHoy.toFixed(2)}`;
        document.getElementById('promedioDiario').textContent = `$${promedio.toFixed(2)}`;
    }
    
    renderizarGastos() {
        const container = document.getElementById('listaGastos');
        
        if (this.gastos.length === 0) {
            container.innerHTML = '<p class="text-muted text-center">No hay gastos registrados</p>';
            return;
        }
        
        const gastosHTML = this.gastos.map(gasto => `
            <div class="card mb-2">
                <div class="card-body py-2">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <strong>${gasto.descripcion}</strong>
                            <span class="badge bg-secondary ms-2">${this.obtenerEmojiCategoria(gasto.categoria)}</span>
                            <br>
                            <small class="text-muted">${gasto.timestamp}</small>
                        </div>
                        <div class="text-end">
                            <h5 class="mb-0 text-danger">-$${gasto.monto.toFixed(2)}</h5>
                            <button class="btn btn-outline-danger btn-sm" onclick="calculadora.eliminarGasto(${gasto.id})">
                                🗑️
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        `).join('');
        
        container.innerHTML = gastosHTML;
    }
    
    obtenerEmojiCategoria(categoria) {
        const emojis = {
            comida: '🍔',
            transporte: '🚗',
            entretenimiento: '🎬',
            salud: '🏥',
            otros: '📦'
        };
        return emojis[categoria] || '📦';
    }
    
    limpiarFormulario() {
        document.getElementById('gastoForm').reset();
    }
    
    limpiarTodo() {
        if (confirm('¿Estás seguro de eliminar todos los gastos?')) {
            this.gastos = [];
            this.guardarGastos();
            this.actualizarUI();
        }
    }
    
    guardarGastos() {
        localStorage.setItem('calculadoraGastos', JSON.stringify(this.gastos));
    }
    
    cargarGastos() {
        const gastos = localStorage.getItem('calculadoraGastos');
        return gastos ? JSON.parse(gastos) : [];
    }
}

// Funciones globales
function limpiarGastos() {
    calculadora.limpiarTodo();
}

// Inicializar
const calculadora = new CalculadoraGastos();
```

### Proyecto 4: Generador de Contraseñas Seguras

**Paso 1: HTML Completo**
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🔐 Generador de Contraseñas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-light">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card bg-secondary">
                    <div class="card-header bg-primary">
                        <h2 class="mb-0 text-center">🔐 Generador de Contraseñas</h2>
                    </div>
                    <div class="card-body">
                        <!-- Configuración -->
                        <div class="mb-4">
                            <label for="longitud" class="form-label">Longitud: <span id="longitudValor">12</span></label>
                            <input type="range" id="longitud" class="form-range" min="4" max="50" value="12">
                        </div>
                        
                        <div class="row mb-4">
                            <div class="col-6">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="mayusculas" checked>
                                    <label class="form-check-label" for="mayusculas">Mayúsculas (A-Z)</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="minusculas" checked>
                                    <label class="form-check-label" for="minusculas">Minúsculas (a-z)</label>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="numeros" checked>
                                    <label class="form-check-label" for="numeros">Números (0-9)</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="simbolos">
                                    <label class="form-check-label" for="simbolos">Símbolos (!@#$)</label>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Contraseña generada -->
                        <div class="mb-3">
                            <label for="contrasenaGenerada" class="form-label">Contraseña Generada:</label>
                            <div class="input-group">
                                <input type="text" id="contrasenaGenerada" class="form-control bg-dark text-light" readonly>
                                <button class="btn btn-outline-light" onclick="copiarContrasena()" title="Copiar">
                                    📋
                                </button>
                            </div>
                        </div>
                        
                        <!-- Indicador de seguridad -->
                        <div class="mb-3">
                            <div class="d-flex justify-content-between">
                                <span>Seguridad:</span>
                                <span id="nivelSeguridad">-</span>
                            </div>
                            <div class="progress">
                                <div id="barraSeguridad" class="progress-bar" style="width: 0%"></div>
                            </div>
                        </div>
                        
                        <!-- Botones -->
                        <div class="d-grid gap-2">
                            <button class="btn btn-success" onclick="generarContrasena()">🔄 Generar Nueva</button>
                            <button class="btn btn-info" onclick="guardarContrasena()">💾 Guardar Contraseña</button>
                        </div>
                        
                        <!-- Historial -->
                        <div class="mt-4">
                            <h5>Contraseñas Guardadas:</h5>
                            <div id="historialContrasenas"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="password-generator.js"></script>
</body>
</html>
```

**Paso 2: JavaScript del Generador**
```javascript
class GeneradorContrasenas {
    constructor() {
        this.caracteres = {
            mayusculas: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
            minusculas: 'abcdefghijklmnopqrstuvwxyz',
            numeros: '0123456789',
            simbolos: '!@#$%^&*()_+-=[]{}|;:,.<>?'
        };
        this.historial = this.cargarHistorial();
        this.inicializar();
    }
    
    inicializar() {
        this.configurarEventos();
        this.generarContrasena();
        this.mostrarHistorial();
    }
    
    configurarEventos() {
        const longitud = document.getElementById('longitud');
        longitud.addEventListener('input', () => {
            document.getElementById('longitudValor').textContent = longitud.value;
            this.generarContrasena();
        });
        
        ['mayusculas', 'minusculas', 'numeros', 'simbolos'].forEach(id => {
            document.getElementById(id).addEventListener('change', () => {
                this.generarContrasena();
            });
        });
    }
    
    generarContrasena() {
        const longitud = parseInt(document.getElementById('longitud').value);
        let caracteresDisponibles = '';
        
        if (document.getElementById('mayusculas').checked) {
            caracteresDisponibles += this.caracteres.mayusculas;
        }
        if (document.getElementById('minusculas').checked) {
            caracteresDisponibles += this.caracteres.minusculas;
        }
        if (document.getElementById('numeros').checked) {
            caracteresDisponibles += this.caracteres.numeros;
        }
        if (document.getElementById('simbolos').checked) {
            caracteresDisponibles += this.caracteres.simbolos;
        }
        
        if (caracteresDisponibles === '') {
            alert('Selecciona al menos un tipo de carácter');
            return;
        }
        
        let contrasena = '';
        for (let i = 0; i < longitud; i++) {
            const indiceAleatorio = Math.floor(Math.random() * caracteresDisponibles.length);
            contrasena += caracteresDisponibles[indiceAleatorio];
        }
        
        document.getElementById('contrasenaGenerada').value = contrasena;
        this.evaluarSeguridad(contrasena);
    }
    
    evaluarSeguridad(contrasena) {
        let puntuacion = 0;
        let nivel = '';
        let color = '';
        
        // Longitud
        if (contrasena.length >= 8) puntuacion += 25;
        if (contrasena.length >= 12) puntuacion += 25;
        
        // Tipos de caracteres
        if (/[a-z]/.test(contrasena)) puntuacion += 10;
        if (/[A-Z]/.test(contrasena)) puntuacion += 10;
        if (/[0-9]/.test(contrasena)) puntuacion += 10;
        if (/[^A-Za-z0-9]/.test(contrasena)) puntuacion += 20;
        
        if (puntuacion < 30) {
            nivel = 'Débil';
            color = 'bg-danger';
        } else if (puntuacion < 60) {
            nivel = 'Media';
            color = 'bg-warning';
        } else if (puntuacion < 90) {
            nivel = 'Fuerte';
            color = 'bg-info';
        } else {
            nivel = 'Muy Fuerte';
            color = 'bg-success';
        }
        
        document.getElementById('nivelSeguridad').textContent = nivel;
        const barra = document.getElementById('barraSeguridad');
        barra.className = `progress-bar ${color}`;
        barra.style.width = `${puntuacion}%`;
    }
    
    guardarContrasena() {
        const contrasena = document.getElementById('contrasenaGenerada').value;
        if (!contrasena) {
            alert('Genera una contraseña primero');
            return;
        }
        
        const descripcion = prompt('Descripción para esta contraseña (ej: Gmail, Facebook):');
        if (!descripcion) return;
        
        const nuevaContrasena = {
            id: Date.now(),
            descripcion,
            contrasena,
            fecha: new Date().toLocaleDateString(),
            seguridad: document.getElementById('nivelSeguridad').textContent
        };
        
        this.historial.unshift(nuevaContrasena);
        this.guardarHistorial();
        this.mostrarHistorial();
    }
    
    mostrarHistorial() {
        const container = document.getElementById('historialContrasenas');
        
        if (this.historial.length === 0) {
            container.innerHTML = '<p class="text-muted">No hay contraseñas guardadas</p>';
            return;
        }
        
        const historialHTML = this.historial.map(item => `
            <div class="card bg-dark border-secondary mb-2">
                <div class="card-body py-2">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <strong>${item.descripcion}</strong>
                            <br>
                            <small class="text-muted">${item.fecha} - ${item.seguridad}</small>
                        </div>
                        <div>
                            <button class="btn btn-outline-light btn-sm me-1" 
                                    onclick="mostrarContrasena(${item.id})" title="Ver">
                                👁️
                            </button>
                            <button class="btn btn-outline-danger btn-sm" 
                                    onclick="eliminarContrasena(${item.id})" title="Eliminar">
                                🗑️
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        `).join('');
        
        container.innerHTML = historialHTML;
    }
    
    mostrarContrasenaGuardada(id) {
        const item = this.historial.find(h => h.id === id);
        if (item) {
            alert(`Contraseña para ${item.descripcion}:\n${item.contrasena}`);
        }
    }
    
    eliminarContrasenaGuardada(id) {
        if (confirm('¿Eliminar esta contraseña?')) {
            this.historial = this.historial.filter(h => h.id !== id);
            this.guardarHistorial();
            this.mostrarHistorial();
        }
    }
    
    copiar(texto) {
        navigator.clipboard.writeText(texto).then(() => {
            // Mostrar feedback visual
            const btn = event.target;
            const textoOriginal = btn.textContent;
            btn.textContent = '✅';
            setTimeout(() => {
                btn.textContent = textoOriginal;
            }, 1000);
        });
    }
    
    guardarHistorial() {
        localStorage.setItem('generadorContrasenas', JSON.stringify(this.historial));
    }
    
    cargarHistorial() {
        const historial = localStorage.getItem('generadorContrasenas');
        return historial ? JSON.parse(historial) : [];
    }
}

// Funciones globales
function generarContrasena() {
    generador.generarContrasena();
}

function copiarContrasena() {
    const contrasena = document.getElementById('contrasenaGenerada').value;
    generador.copiar(contrasena);
}

function guardarContrasena() {
    generador.guardarContrasena();
}

function mostrarContrasena(id) {
    generador.mostrarContrasenaGuardada(id);
}

function eliminarContrasena(id) {
    generador.eliminarContrasenaGuardada(id);
}

// Inicializar
const generador = new GeneradorContrasenas();
```

### Proyecto 5: Conversor de Unidades Universal

**Paso 1: HTML del Conversor**
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🔄 Conversor Universal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card shadow">
                    <div class="card-header bg-info text-white">
                        <h2 class="mb-0 text-center">🔄 Conversor Universal</h2>
                    </div>
                    <div class="card-body">
                        <!-- Selector de tipo de conversión -->
                        <div class="mb-4">
                            <label for="tipoConversion" class="form-label">Tipo de Conversión:</label>
                            <select id="tipoConversion" class="form-select">
                                <option value="longitud">📏 Longitud</option>
                                <option value="peso">⚖️ Peso</option>
                                <option value="temperatura">🌡️ Temperatura</option>
                                <option value="volumen">🥤 Volumen</option>
                                <option value="area">📐 Área</option>
                                <option value="tiempo">⏰ Tiempo</option>
                            </select>
                        </div>
                        
                        <!-- Conversión -->
                        <div class="row">
                            <div class="col-md-5">
                                <label class="form-label">De:</label>
                                <div class="input-group mb-3">
                                    <input type="number" id="valorEntrada" class="form-control" placeholder="0" step="any">
                                    <select id="unidadEntrada" class="form-select"></select>
                                </div>
                            </div>
                            <div class="col-md-2 text-center">
                                <div class="mt-4">
                                    <button class="btn btn-outline-secondary" onclick="intercambiarUnidades()">🔄</button>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label class="form-label">A:</label>
                                <div class="input-group mb-3">
                                    <input type="number" id="valorSalida" class="form-control" readonly>
                                    <select id="unidadSalida" class="form-select"></select>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Historial de conversiones -->
                        <div class="mt-4">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h5>Historial de Conversiones</h5>
                                <button class="btn btn-outline-danger btn-sm" onclick="limpiarHistorial()">Limpiar</button>
                            </div>
                            <div id="historialConversiones"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="conversor.js"></script>
</body>
</html>
```

**Paso 2: JavaScript del Conversor**
```javascript
class ConversorUniversal {
    constructor() {
        this.unidades = {
            longitud: {
                metro: 1,
                kilometro: 0.001,
                centimetro: 100,
                milimetro: 1000,
                pulgada: 39.3701,
                pie: 3.28084,
                yarda: 1.09361,
                milla: 0.000621371
            },
            peso: {
                kilogramo: 1,
                gramo: 1000,
                libra: 2.20462,
                onza: 35.274,
                tonelada: 0.001
            },
            temperatura: {
                celsius: { base: true },
                fahrenheit: { formula: (c) => (c * 9/5) + 32, inversa: (f) => (f - 32) * 5/9 },
                kelvin: { formula: (c) => c + 273.15, inversa: (k) => k - 273.15 }
            },
            volumen: {
                litro: 1,
                mililitro: 1000,
                galon: 0.264172,
                cuarto: 1.05669,
                pinta: 2.11338,
                onza_fluida: 33.814
            },
            area: {
                metro_cuadrado: 1,
                kilometro_cuadrado: 0.000001,
                centimetro_cuadrado: 10000,
                hectarea: 0.0001,
                acre: 0.000247105,
                pie_cuadrado: 10.7639
            },
            tiempo: {
                segundo: 1,
                minuto: 1/60,
                hora: 1/3600,
                dia: 1/86400,
                semana: 1/604800,
                mes: 1/2629746,
                año: 1/31556952
            }
        };
        
        this.historial = this.cargarHistorial();
        this.inicializar();
    }
    
    inicializar() {
        this.configurarEventos();
        this.actualizarUnidades();
        this.mostrarHistorial();
    }
    
    configurarEventos() {
        document.getElementById('tipoConversion').addEventListener('change', () => {
            this.actualizarUnidades();
            this.convertir();
        });
        
        document.getElementById('valorEntrada').addEventListener('input', () => {
            this.convertir();
        });
        
        ['unidadEntrada', 'unidadSalida'].forEach(id => {
            document.getElementById(id).addEventListener('change', () => {
                this.convertir();
            });
        });
    }
    
    actualizarUnidades() {
        const tipo = document.getElementById('tipoConversion').value;
        const unidades = Object.keys(this.unidades[tipo]);
        
        const selectEntrada = document.getElementById('unidadEntrada');
        const selectSalida = document.getElementById('unidadSalida');
        
        selectEntrada.innerHTML = '';
        selectSalida.innerHTML = '';
        
        unidades.forEach(unidad => {
            const option1 = new Option(this.formatearNombreUnidad(unidad), unidad);
            const option2 = new Option(this.formatearNombreUnidad(unidad), unidad);
            selectEntrada.add(option1);
            selectSalida.add(option2);
        });
        
        // Seleccionar diferentes unidades por defecto
        if (unidades.length > 1) {
            selectSalida.selectedIndex = 1;
        }
    }
    
    formatearNombreUnidad(unidad) {
        return unidad.replace(/_/g, ' ').replace(/\b\w/g, l => l.toUpperCase());
    }
    
    convertir() {
        const valor = parseFloat(document.getElementById('valorEntrada').value);
        if (isNaN(valor)) {
            document.getElementById('valorSalida').value = '';
            return;
        }
        
        const tipo = document.getElementById('tipoConversion').value;
        const unidadEntrada = document.getElementById('unidadEntrada').value;
        const unidadSalida = document.getElementById('unidadSalida').value;
        
        let resultado;
        
        if (tipo === 'temperatura') {
            resultado = this.convertirTemperatura(valor, unidadEntrada, unidadSalida);
        } else {
            const factorEntrada = this.unidades[tipo][unidadEntrada];
            const factorSalida = this.unidades[tipo][unidadSalida];
            resultado = (valor / factorEntrada) * factorSalida;
        }
        
        document.getElementById('valorSalida').value = resultado.toFixed(6).replace(/\.?0+$/, '');
        
        // Agregar al historial
        if (valor !== 0) {
            this.agregarAlHistorial(valor, unidadEntrada, resultado, unidadSalida, tipo);
        }
    }
    
    convertirTemperatura(valor, desde, hacia) {
        let celsius = valor;
        
        // Convertir a Celsius primero
        if (desde === 'fahrenheit') {
            celsius = this.unidades.temperatura.fahrenheit.inversa(valor);
        } else if (desde === 'kelvin') {
            celsius = this.unidades.temperatura.kelvin.inversa(valor);
        }
        
        // Convertir desde Celsius a la unidad destino
        if (hacia === 'celsius') {
            return celsius;
        } else if (hacia === 'fahrenheit') {
            return this.unidades.temperatura.fahrenheit.formula(celsius);
        } else if (hacia === 'kelvin') {
            return this.unidades.temperatura.kelvin.formula(celsius);
        }
    }
    
    intercambiar() {
        const unidadEntrada = document.getElementById('unidadEntrada');
        const unidadSalida = document.getElementById('unidadSalida');
        const valorEntrada = document.getElementById('valorEntrada');
        const valorSalida = document.getElementById('valorSalida');
        
        // Intercambiar unidades
        const tempUnidad = unidadEntrada.value;
        unidadEntrada.value = unidadSalida.value;
        unidadSalida.value = tempUnidad;
        
        // Intercambiar valores
        valorEntrada.value = valorSalida.value;
        
        this.convertir();
    }
    
    agregarAlHistorial(valorEntrada, unidadEntrada, valorSalida, unidadSalida, tipo) {
        const conversion = {
            id: Date.now(),
            valorEntrada,
            unidadEntrada: this.formatearNombreUnidad(unidadEntrada),
            valorSalida,
            unidadSalida: this.formatearNombreUnidad(unidadSalida),
            tipo,
            timestamp: new Date().toLocaleString()
        };
        
        // Evitar duplicados recientes
        const existe = this.historial.some(h => 
            h.valorEntrada === valorEntrada && 
            h.unidadEntrada === conversion.unidadEntrada &&
            h.unidadSalida === conversion.unidadSalida
        );
        
        if (!existe) {
            this.historial.unshift(conversion);
            // Mantener solo las últimas 10 conversiones
            this.historial = this.historial.slice(0, 10);
            this.guardarHistorial();
            this.mostrarHistorial();
        }
    }
    
    mostrarHistorial() {
        const container = document.getElementById('historialConversiones');
        
        if (this.historial.length === 0) {
            container.innerHTML = '<p class="text-muted">No hay conversiones recientes</p>';
            return;
        }
        
        const historialHTML = this.historial.map(item => `
            <div class="card mb-2">
                <div class="card-body py-2">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <strong>${item.valorEntrada} ${item.unidadEntrada}</strong> = 
                            <strong class="text-primary">${item.valorSalida} ${item.unidadSalida}</strong>
                            <br>
                            <small class="text-muted">${item.timestamp}</small>
                        </div>
                        <button class="btn btn-outline-primary btn-sm" 
                                onclick="reutilizarConversion(${item.id})" title="Reutilizar">
                            🔄
                        </button>
                    </div>
                </div>
            </div>
        `).join('');
        
        container.innerHTML = historialHTML;
    }
    
    reutilizar(id) {
        const conversion = this.historial.find(h => h.id === id);
        if (conversion) {
            // Cambiar tipo si es necesario
            document.getElementById('tipoConversion').value = conversion.tipo;
            this.actualizarUnidades();
            
            // Establecer valores
            setTimeout(() => {
                document.getElementById('valorEntrada').value = conversion.valorEntrada;
                document.getElementById('unidadEntrada').value = conversion.unidadEntrada.toLowerCase().replace(/ /g, '_');
                document.getElementById('unidadSalida').value = conversion.unidadSalida.toLowerCase().replace(/ /g, '_');
                this.convertir();
            }, 100);
        }
    }
    
    limpiar() {
        if (confirm('¿Limpiar el historial de conversiones?')) {
            this.historial = [];
            this.guardarHistorial();
            this.mostrarHistorial();
        }
    }
    
    guardarHistorial() {
        localStorage.setItem('conversorUniversal', JSON.stringify(this.historial));
    }
    
    cargarHistorial() {
        const historial = localStorage.getItem('conversorUniversal');
        return historial ? JSON.parse(historial) : [];
    }
}

// Funciones globales
function intercambiarUnidades() {
    conversor.intercambiar();
}

function reutilizarConversion(id) {
    conversor.reutilizar(id);
}

function limpiarHistorial() {
    conversor.limpiar();
}

// Inicializar
const conversor = new ConversorUniversal();
```

### Proyecto 6: Calculadora de Propinas y División de Cuentas

**Paso 1: HTML Completo**
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>💰 Calculadora de Propinas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card shadow">
                    <div class="card-header bg-success text-white">
                        <h2 class="mb-0 text-center">💰 Calculadora de Propinas</h2>
                    </div>
                    <div class="card-body">
                        <!-- Monto de la cuenta -->
                        <div class="mb-3">
                            <label for="montoCuenta" class="form-label">Monto de la Cuenta ($):</label>
                            <input type="number" id="montoCuenta" class="form-control" step="0.01" min="0" placeholder="0.00">
                        </div>
                        
                        <!-- Porcentaje de propina -->
                        <div class="mb-3">
                            <label class="form-label">Porcentaje de Propina: <span id="porcentajeValor">15</span>%</label>
                            <input type="range" id="porcentajePropina" class="form-range" min="0" max="30" value="15">
                            <div class="d-flex justify-content-between mt-2">
                                <button class="btn btn-outline-secondary btn-sm" onclick="setPorcentaje(10)">10%</button>
                                <button class="btn btn-outline-secondary btn-sm" onclick="setPorcentaje(15)">15%</button>
                                <button class="btn btn-outline-secondary btn-sm" onclick="setPorcentaje(18)">18%</button>
                                <button class="btn btn-outline-secondary btn-sm" onclick="setPorcentaje(20)">20%</button>
                            </div>
                        </div>
                        
                        <!-- Número de personas -->
                        <div class="mb-4">
                            <label for="numeroPersonas" class="form-label">Número de Personas:</label>
                            <div class="input-group">
                                <button class="btn btn-outline-secondary" onclick="cambiarPersonas(-1)">-</button>
                                <input type="number" id="numeroPersonas" class="form-control text-center" min="1" value="1" readonly>
                                <button class="btn btn-outline-secondary" onclick="cambiarPersonas(1)">+</button>
                            </div>
                        </div>
                        
                        <!-- Resultados -->
                        <div class="row mb-4">
                            <div class="col-6">
                                <div class="card bg-info text-white">
                                    <div class="card-body text-center">
                                        <h6>Propina Total</h6>
                                        <h4 id="propinaTotal">$0.00</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="card bg-primary text-white">
                                    <div class="card-body text-center">
                                        <h6>Total a Pagar</h6>
                                        <h4 id="totalPagar">$0.00</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- División por persona -->
                        <div class="card bg-light mb-3">
                            <div class="card-body">
                                <h5 class="card-title">Por Persona:</h5>
                                <div class="row">
                                    <div class="col-4">
                                        <small class="text-muted">Cuenta</small>
                                        <div class="h5" id="cuentaPorPersona">$0.00</div>
                                    </div>
                                    <div class="col-4">
                                        <small class="text-muted">Propina</small>
                                        <div class="h5" id="propinaPorPersona">$0.00</div>
                                    </div>
                                    <div class="col-4">
                                        <small class="text-muted">Total</small>
                                        <div class="h5 text-success" id="totalPorPersona">$0.00</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Botones de acción -->
                        <div class="d-grid gap-2">
                            <button class="btn btn-success" onclick="guardarCalculo()">💾 Guardar Cálculo</button>
                            <button class="btn btn-outline-primary" onclick="compartir()">📤 Compartir</button>
                        </div>
                        
                        <!-- Historial -->
                        <div class="mt-4">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h5>Cálculos Recientes</h5>
                                <button class="btn btn-outline-danger btn-sm" onclick="limpiarHistorial()">Limpiar</button>
                            </div>
                            <div id="historialCalculos"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="propinas.js"></script>
</body>
</html>
```

**Paso 2: JavaScript de la Calculadora**
```javascript
class CalculadoraPropinas {
    constructor() {
        this.historial = this.cargarHistorial();
        this.inicializar();
    }
    
    inicializar() {
        this.configurarEventos();
        this.calcular();
        this.mostrarHistorial();
    }
    
    configurarEventos() {
        document.getElementById('montoCuenta').addEventListener('input', () => this.calcular());
        
        const slider = document.getElementById('porcentajePropina');
        slider.addEventListener('input', () => {
            document.getElementById('porcentajeValor').textContent = slider.value;
            this.calcular();
        });
    }
    
    calcular() {
        const monto = parseFloat(document.getElementById('montoCuenta').value) || 0;
        const porcentaje = parseInt(document.getElementById('porcentajePropina').value);
        const personas = parseInt(document.getElementById('numeroPersonas').value);
        
        const propina = monto * (porcentaje / 100);
        const total = monto + propina;
        
        const cuentaPorPersona = monto / personas;
        const propinaPorPersona = propina / personas;
        const totalPorPersona = total / personas;
        
        // Actualizar UI
        document.getElementById('propinaTotal').textContent = `$${propina.toFixed(2)}`;
        document.getElementById('totalPagar').textContent = `$${total.toFixed(2)}`;
        document.getElementById('cuentaPorPersona').textContent = `$${cuentaPorPersona.toFixed(2)}`;
        document.getElementById('propinaPorPersona').textContent = `$${propinaPorPersona.toFixed(2)}`;
        document.getElementById('totalPorPersona').textContent = `$${totalPorPersona.toFixed(2)}`;
    }
    
    setPorcentaje(porcentaje) {
        document.getElementById('porcentajePropina').value = porcentaje;
        document.getElementById('porcentajeValor').textContent = porcentaje;
        this.calcular();
    }
    
    cambiarPersonas(cambio) {
        const input = document.getElementById('numeroPersonas');
        const valor = Math.max(1, parseInt(input.value) + cambio);
        input.value = valor;
        this.calcular();
    }
    
    guardar() {
        const monto = parseFloat(document.getElementById('montoCuenta').value);
        if (!monto || monto <= 0) {
            alert('Ingresa un monto válido');
            return;
        }
        
        const descripcion = prompt('Descripción (opcional):') || 'Sin descripción';
        
        const calculo = {
            id: Date.now(),
            descripcion,
            monto,
            porcentaje: parseInt(document.getElementById('porcentajePropina').value),
            personas: parseInt(document.getElementById('numeroPersonas').value),
            propina: parseFloat(document.getElementById('propinaTotal').textContent.replace('$', '')),
            total: parseFloat(document.getElementById('totalPagar').textContent.replace('$', '')),
            fecha: new Date().toLocaleDateString()
        };
        
        this.historial.unshift(calculo);
        this.historial = this.historial.slice(0, 10); // Mantener solo 10
        this.guardarHistorial();
        this.mostrarHistorial();
    }
    
    compartir() {
        const monto = document.getElementById('montoCuenta').value;
        const porcentaje = document.getElementById('porcentajeValor').textContent;
        const personas = document.getElementById('numeroPersonas').value;
        const total = document.getElementById('totalPagar').textContent;
        const totalPorPersona = document.getElementById('totalPorPersona').textContent;
        
        const texto = `🧾 Cuenta: $${monto}\n🎯 Propina: ${porcentaje}%\n👥 Personas: ${personas}\n💰 Total: ${total}\n👤 Por persona: ${totalPorPersona}`;
        
        if (navigator.share) {
            navigator.share({
                title: 'Cálculo de Propina',
                text: texto
            });
        } else {
            navigator.clipboard.writeText(texto).then(() => {
                alert('Cálculo copiado al portapapeles');
            });
        }
    }
    
    mostrarHistorial() {
        const container = document.getElementById('historialCalculos');
        
        if (this.historial.length === 0) {
            container.innerHTML = '<p class="text-muted">No hay cálculos guardados</p>';
            return;
        }
        
        const historialHTML = this.historial.map(item => `
            <div class="card mb-2">
                <div class="card-body py-2">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <strong>${item.descripcion}</strong>
                            <br>
                            <small class="text-muted">
                                $${item.monto} + ${item.porcentaje}% (${item.personas} personas) = ${item.total}
                                <br>${item.fecha}
                            </small>
                        </div>
                        <button class="btn btn-outline-primary btn-sm" 
                                onclick="reutilizarCalculo(${item.id})" title="Reutilizar">
                            🔄
                        </button>
                    </div>
                </div>
            </div>
        `).join('');
        
        container.innerHTML = historialHTML;
    }
    
    reutilizar(id) {
        const calculo = this.historial.find(h => h.id === id);
        if (calculo) {
            document.getElementById('montoCuenta').value = calculo.monto;
            document.getElementById('porcentajePropina').value = calculo.porcentaje;
            document.getElementById('porcentajeValor').textContent = calculo.porcentaje;
            document.getElementById('numeroPersonas').value = calculo.personas;
            this.calcular();
        }
    }
    
    limpiar() {
        if (confirm('¿Limpiar el historial?')) {
            this.historial = [];
            this.guardarHistorial();
            this.mostrarHistorial();
        }
    }
    
    guardarHistorial() {
        localStorage.setItem('calculadoraPropinas', JSON.stringify(this.historial));
    }
    
    cargarHistorial() {
        const historial = localStorage.getItem('calculadoraPropinas');
        return historial ? JSON.parse(historial) : [];
    }
}

// Funciones globales
function setPorcentaje(porcentaje) {
    calculadora.setPorcentaje(porcentaje);
}

function cambiarPersonas(cambio) {
    calculadora.cambiarPersonas(cambio);
}

function guardarCalculo() {
    calculadora.guardar();
}

function compartir() {
    calculadora.compartir();
}

function reutilizarCalculo(id) {
    calculadora.reutilizar(id);
}

function limpiarHistorial() {
    calculadora.limpiar();
}

// Inicializar
const calculadora = new CalculadoraPropinas();
```

---

## Recursos Adicionales

### Herramientas de Desarrollo

**Editores de Código**
- Visual Studio Code (recomendado)
- Sublime Text
- Atom
- WebStorm

**Extensiones Útiles para VS Code**
- Live Server
- Prettier
- ESLint
- Auto Rename Tag
- Bracket Pair Colorizer

**Navegadores para Desarrollo**
- Chrome DevTools
- Firefox Developer Tools
- Safari Web Inspector

### Documentación Oficial

**HTML**
- [MDN HTML Reference](https://developer.mozilla.org/es/docs/Web/HTML)
- [W3C HTML Specification](https://www.w3.org/TR/html52/)

**CSS**
- [MDN CSS Reference](https://developer.mozilla.org/es/docs/Web/CSS)
- [CSS Tricks](https://css-tricks.com/)

**JavaScript**
- [MDN JavaScript Guide](https://developer.mozilla.org/es/docs/Web/JavaScript/Guide)
- [JavaScript.info](https://javascript.info/)

**Bootstrap**
- [Bootstrap Documentation](https://getbootstrap.com/docs/)
- [Bootstrap Examples](https://getbootstrap.com/docs/5.3/examples/)

### Práctica y Ejercicios

**Plataformas de Práctica**
- FreeCodeCamp
- Codecademy
- The Odin Project
- JavaScript30

**Desafíos de Código**
- Frontend Mentor
- Codepen Challenges
- CSS Battle
- HackerRank

### Próximos Pasos

**Frameworks y Librerías**
- React.js
- Vue.js
- Angular
- Node.js

**Herramientas de Build**
- Webpack
- Vite
- Parcel

**Control de Versiones**
- Git y GitHub
- GitLab
- Bitbucket

### Consejos para el Aprendizaje

1. **Practica constantemente**: Construye proyectos reales
2. **Lee código de otros**: Estudia proyectos open source
3. **Mantente actualizado**: Sigue blogs y newsletters de desarrollo
4. **Únete a comunidades**: Stack Overflow, Discord, Reddit
5. **Construye un portafolio**: Muestra tus proyectos
6. **No tengas miedo de experimentar**: Prueba nuevas tecnologías

---

## Conclusión

Esta guía te ha llevado desde los conceptos más básicos hasta técnicas avanzadas en HTML, CSS y JavaScript. El desarrollo web es un campo en constante evolución, por lo que es importante mantenerse actualizado y seguir practicando.

Recuerda que la mejor manera de aprender es construyendo proyectos reales. Comienza con proyectos pequeños y ve aumentando la complejidad gradualmente.

¡Feliz programación! 🚀

---

*Última actualización: Enero 2024*