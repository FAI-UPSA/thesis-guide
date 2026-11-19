Yo la llamaría **Guía para preparar tu trabajo de grado o posgrado** y organizaría el sitio por lo que la persona necesita hacer: empezar, estructurar el documento o revisar la entrega. Mantendría `thesis-guide` como nombre del repositorio. En el sitio, **tesis** sería una de las modalidades, junto con **proyecto de grado** y **trabajo dirigido**.

Para el inicio, tomaría de Sydney la idea de hablarle tanto a quien recién empieza como a quien está por entregar. De MIT tomaría la estructura breve de su página de la plantilla: acceso directo al paquete, documentación, especificaciones y contexto del proyecto. [Guía de Sydney](https://www.sydney.edu.au/research/graduate-research/current-students/thesis-and-examination/preparing-your-thesis.html), [plantilla del MIT](https://web.mit.edu/thesis/tex/)

> ¿Estás empezando tu trabajo final o ya estás por entregarlo? Acá encontrás pautas para organizar, escribir y revisar tu tesis, proyecto de grado o trabajo dirigido. Consultá los requisitos que correspondan a tu carrera, programa y modalidad.

### Sitio web

| Ruta | Pregunta que responde | Qué pondría ahí |
|---|---|---|
| `/` | ¿Por dónde empiezo? | Una introducción breve y tres accesos visibles: **Estoy empezando**, **Estoy escribiendo** y **Estoy por entregar**. También un enlace directo a **Descargar la guía en PDF**. |
| `/planificar/` | ¿Qué tengo que definir con mi tutor? | Modalidad, alcance, pregunta o problema, entregables y calendario de revisión. Desde acá se consulta el reglamento aplicable. |
| `/estructura/` | ¿Qué debería contener mi documento? | Para qué sirven la portada, el resumen, la introducción, el desarrollo, las conclusiones, las referencias y los anexos. Un esquema común y ejemplos breves por modalidad. |
| `/accesibilidad/` | ¿Cómo hago que mi documento se pueda leer y navegar? | Pautas para Word, Typst y otras herramientas: encabezados semánticos, texto alternativo, tablas, contraste y orden de lectura. Incluí cómo revisar el PDF con comprobaciones automáticas y manuales. |
| `/entrega/` | ¿Qué reviso antes de entregar? | Una lista breve para revisar el archivo final y confirmar el formato, el canal y los plazos con la fuente oficial. Acá explicaría cuándo importa el estándar de exportación y enlazaría a las pautas de accesibilidad. |
| `/typst/` | ¿Cómo empiezo con la plantilla de la UPSA? | Un enlace principal a `upsa-thesis` en Typst Universe cuando esté publicado, un ejemplo compilado, la documentación de la plantilla y un enlace al reglamento. Al final, un enlace discreto a tu propuesta de modernización. |

En **Estructura del documento**, usaría el mismo criterio para todas las modalidades: **qué hiciste, por qué lo hiciste así y qué evidencia sostiene tus conclusiones**. Después mostraría cómo cambia ese hilo en cada caso:

- **Tesis.** Pregunta de investigación, método, resultados e interpretación.
- **Proyecto de grado.** Problema, criterios de diseño, solución y cómo evaluaste su desempeño.
- **Trabajo dirigido.** Contexto de la organización, diagnóstico, intervención y evidencia de los resultados o de sus limitaciones.

Presentaría esos esquemas como ejemplos adaptables. La página de reglamentos, cuando la publiques, sería la fuente para los requisitos obligatorios, como modalidades admitidas, campos de portada, plazos o firmas. La guía puede explicar **para qué sirve** una portada y mostrar un ejemplo. El reglamento dice **qué datos exige** cada programa. Esa distinción te permite conservar lo más útil del enfoque de Sydney sin tener que mantener una segunda versión de la normativa.

### Accesibilidad y entrega

El [`ACCESSIBILITY.md` de la plantilla](C:/Users/Jassiel/Dev/github/FAI-UPSA/thesis-template/ACCESSIBILITY.md) ya contiene material que le sirve a cualquiera: jerarquía de encabezados, descripciones alternativas, contraste y revisión manual. Lo llevaría a `/accesibilidad/`. En el repositorio dejaría un archivo corto con el enlace a esa página, las particularidades o limitaciones de `upsa-thesis` que estén comprobadas y el canal para reportar problemas. Para instrucciones propias del compilador, enlazaría la documentación oficial. [Guía de accesibilidad de Typst](https://typst.app/docs/guides/accessibility/)

En **Entrega**, explicaría en dos frases que **PDF/A se orienta a la preservación** y **PDF/UA a la accesibilidad**, y pediría confirmar con la carrera o el programa qué formato corresponde. Aalto es un buen modelo para explicar una exigencia de archivo y cómo verificarla. MIT es un buen modelo para enlazar las capacidades de la plantilla con la especificación institucional: la página presenta los estándares que admite la herramienta, mientras que la biblioteca publica las instrucciones de entrega. [Guía PDF/A de Aalto](https://www.aalto.fi/en/services/creating-a-pdfa-compliant-file-of-your-thesis), [especificaciones del MIT](https://libraries.mit.edu/distinctive-collections/thesis-specs/)

### PDF y fuente compartida

Haría **un solo PDF** con un título, un índice y esta secuencia: **Planificá tu trabajo → Estructurá el documento → Prepará un documento accesible → Revisá antes de entregar**. Incluiría **Typst y la plantilla UPSA** como apéndice breve. La introducción del PDF puede reutilizar la bienvenida del sitio. Los accesos rápidos de la portada web se convierten en el índice del PDF.

Cada capítulo tendría **un único cuerpo en Typst**. Astro lo mostraría con su propio título de pestaña y `<h1>`. El PDF incorporaría ese mismo cuerpo bajo un encabezado de capítulo y ajustaría la jerarquía de los subtítulos. Cuando una sección remita a otra, usá el nombre de la sección como texto del enlace para que la referencia también se entienda en papel. Los recursos externos indispensables, como el reglamento y la descarga de la plantilla, deberían poder localizarse desde la versión impresa.

**Empezaría por escribir `/estructura/` y `/entrega/`.** Son las dos páginas que más trabajo concreto le ahorran a una persona, sin importar su modalidad o herramienta. En cada página usaría un índice corto con anclas cuando haga falta y enlaces con verbos que indiquen qué va a pasar, como **Revisá el PDF antes de entregar**. Así alguien que llega desde un buscador, desde el repositorio o desde el enlace que le pasó un docente puede resolver su tarea sin tener que empezar por la portada.
