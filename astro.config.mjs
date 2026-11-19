// @ts-check
import { defineConfig } from 'astro/config';
import { typst } from 'astro-typst';

// https://astro.build/config
export default defineConfig({
  site: process.env.PAGES_ORIGIN || undefined,
  base: process.env.PAGES_BASE_PATH || '/',
  integrations: [typst()],
  vite: {
    ssr: {
      external: ['@myriaddreamin/typst-ts-node-compiler'],
    },
  },
});
