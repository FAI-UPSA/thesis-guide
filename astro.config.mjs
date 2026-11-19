// @ts-check
import { defineConfig } from 'astro/config';
import { typst } from 'astro-typst';

// https://astro.build/config
export default defineConfig({
  site: "https://fai-upsa.github.io",
  base: "thesis-guide",
  integrations: [typst()],
  vite: {
    ssr: {
      external: ['@myriaddreamin/typst-ts-node-compiler'],
    },
  },
});
