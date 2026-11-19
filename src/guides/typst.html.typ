Con Typst podés escribir los capítulos en archivos de texto plano y generar un PDF a medida que avanzás. Usá la #link("https://typst.app/")[aplicación web de Typst] o seguí las #link("https://github.com/typst/typst#installation")[instrucciones oficiales de instalación] para trabajar en tu equipo. En el #link("https://typst.app/docs/tutorial/")[tutorial oficial] vas a encontrar la sintaxis básica y ejemplos de formato.

= Organizá los capítulos

Usá un archivo principal para aplicar el formato de la tesis e incluir los capítulos en el orden de lectura. Para probar el ejemplo, creá los archivos que aparecen abajo y poné el encabezado del capítulo correspondiente en cada uno.

```typ
#outline()
#include "capitulos/introduccion.typ"
#include "capitulos/metodologia.typ"
#include "capitulos/resultados.typ"
#include "capitulos/conclusiones.typ"
```

= Gestioná las referencias y las figuras

Guardá las referencias en un archivo BibLaTeX o Hayagriva y cargalo con #link("https://typst.app/docs/reference/model/bibliography/")[`bibliography`]. Usá las claves de cita a medida que escribís. Poneles etiquetas a las figuras y usá #link("https://typst.app/docs/reference/model/ref/")[referencias cruzadas] para que la numeración se actualice si cambia el orden.

= Exportá un borrador

Descargá el PDF desde la aplicación web. Si trabajás en tu equipo, ejecutá este comando desde la carpeta del proyecto. Reemplazá `tesis.typ` por el nombre de tu archivo principal.

```sh
typst compile tesis.typ
```

Para revisar el borrador final, seguí los pasos de la sección «Revisá el PDF antes de entregar» de esta guía.
