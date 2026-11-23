# Cómo colaborar con la guía

## Ejecutá el sitio en tu equipo

Instalá Bun y usá la versión de Node.js indicada en [`package.json`](package.json). Desde la raíz del repositorio, ejecutá:

```sh
bun install
bun run astro dev --background
bun run astro dev status
```

Abrí la URL que muestra Astro. Para detener el servidor, ejecutá `bun run astro dev stop`.

## Editá y revisá el contenido

- Editá [`overview.html.typ`](src/guides/overview.html.typ) para la orientación general o [`typst.html.typ`](src/guides/typst.html.typ) para el flujo con la plantilla. Astro publica cada texto como HTML y [`handbook.typ`](src/guides/handbook.typ) los reúne en el manual.
- Para agregar una página, creá un archivo `.html.typ`, importalo desde una ruta de Astro con el diseño compartido, agregalo a la navegación e incluilo en el manual. Conservá los ajustes propios de impresión en `handbook.typ`.
- Escribí las instrucciones en español y enlazá la documentación oficial para los pasos de instalación, uso o exportación propios de cada herramienta.

Ejecutá `bun run build` y revisá las páginas HTML y `thesis-guide.pdf` en `dist/`. La compilación usa el compilador incluido entre las dependencias de Node.js. En GitHub Pages, el flujo de publicación obtiene el origen y la ruta base antes de compilar.
