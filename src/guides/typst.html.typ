- #link(<empeza>)[Empezá con la plantilla]
- #link(<escribi>)[Escribí y revisá un borrador]
- #link(<entrega>)[Prepará la entrega]

= Empezá con la plantilla <empeza>

Abrí la #link("https://typst.app/universe/package/upsa-thesis")[plantilla de la UPSA en Typst Universe] y elegí *Create project in app*. La aplicación web ya tiene las fuentes predeterminadas. El proyecto abre el documento de grado en la vista previa.

1. Cambiá el título de ejemplo en el primer bloque y comprobá que la portada se actualice.
2. Reemplazá el resumen de ejemplo en `front-matter` y escribí un párrafo en la introducción.
3. Completá los demás datos y comprobá los nombres y roles en la portada. Los comentarios junto a cada opción muestran cómo editarla.

Si es tu primera vez con Typst, consultá el #link("https://typst.app/docs/tutorial/")[tutorial oficial de Typst]. Si preferís trabajar en tu equipo, consultá las #link("https://github.com/FAI-UPSA/thesis-template")[instrucciones del repositorio].

= Escribí y revisá un borrador <escribi>

== Organizá los capítulos

Podés empezar a escribir en el documento principal. Si querés separar un capítulo, creá `metodologia.typ` al lado del archivo principal y escribí `= Metodología` como primer encabezado. En el documento principal, después de la introducción, agregá:

```typ
#include "metodologia.typ"
```

Comprobá que «Metodología» aparezca en el índice de la plantilla. Adaptá los capítulos a lo que acordaste con tu carrera o programa.

== Gestioná las referencias y figuras

Agregá una fuente a la bibliografía de ejemplo y citala con `@clave`, usando la clave de esa entrada. Comprobá que la cita se resuelva en la vista previa. Poneles etiquetas a las figuras para que la numeración de las #link("https://typst.app/docs/reference/model/ref/")[referencias cruzadas] se actualice cuando cambie el orden. Describí las figuras que aporten información con #link("https://typst.app/docs/guides/accessibility/")[texto alternativo].

== Exportá el PDF para revisión

Descargá el PDF desde la aplicación web y abrilo para verificar que se vean tu título, el párrafo nuevo y la cita. Si trabajás en tu equipo, ejecutá el siguiente comando desde la carpeta del proyecto y reemplazá `tesis.typ` por el nombre de tu archivo principal.

```sh
typst compile tesis.typ
```

Si Typst avisa que falta una fuente al compilar en tu equipo, instalá #link("https://ctan.org/pkg/tex-gyre-termes")[TeX Gyre Termes], #link("https://ctan.org/pkg/tex-gyre-heros")[TeX Gyre Heros] y #link("https://www.gust.org.pl/projects/e-foundry/tg-math")[TeX Gyre Termes Math], o pasá su carpeta con `--font-path`. Las tareas del repositorio ya buscan en `assets/fonts`. Usá `typst fonts` para comprobar qué familias reconoce el compilador.

= Prepará la entrega <entrega>

Confirmá los plazos y archivos con tu carrera o programa. Por lo general, se preparan los ejemplares empastados después de la revisión final de la segunda asignatura de grado. El abstracto de la BIME (Biblioteca del Ministerio de Educación) se prepara después de la defensa oral final.

Cuando necesites esos archivos, abrí `book.typ`. Ahí podés escribir el texto específico de la BIME y completar el nombre para las referencias en formato «Apellidos, Nombres». Revisá que el año de presentación sea el correcto.

Para generar juntos el informe, las cubiertas, el abstracto y las referencias, consultá la #link("https://typst.app/docs/reference/bundle/")[documentación de Bundle de Typst] para conocer su disponibilidad y cómo exportar. Si trabajás desde el repositorio, `task build` deja el paquete en `documents/book/`. Abrí los archivos que correspondan a tu etapa y comprobá que tengan el título, la autoría y el año correctos.
