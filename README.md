# Thesis authoring guide

The FAI · UPSA guide is an Astro site with a downloadable handbook. The overview covers planning and reviewing a thesis. The Typst page covers writing and exporting it and links to the official setup and syntax documentation.

## Run locally

Install the project dependencies with Bun using the Node version specified in `package.json`.

```sh
bun install
bun run astro dev --background
bun run astro dev status
```

Open the server URL at its root. Use `bun run astro dev stop` to stop the development server.

## Edit the guide

Edit `src/guides/overview.html.typ` for the introduction or `src/guides/typst.html.typ` for the Typst workflow. Astro imports each file into its corresponding page and renders it as semantic HTML. The handbook entry point, `src/guides/handbook.typ`, includes both files and applies the PDF page settings.

To add a guide, create another `.html.typ` file, import it from an Astro route using the shared layout, and include it in the handbook. Update the site navigation so readers can find the new route. Keep print-specific sizing and page breaks in the handbook entry point. Typst's HTML export supports a subset of its print layout features, so check both formats when introducing new elements.

## Build

```sh
bun run build
```

The static output in `dist/` contains both HTML pages and `thesis-guide.pdf`. The build uses the Node Typst compiler dependency, so contributors and CI can build without installing the Typst CLI separately.

For deployments, GitHub Actions reads the Pages origin and base path before building the site. Local and pull request builds default to `/`.
