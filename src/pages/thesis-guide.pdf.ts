import type { APIRoute } from 'astro';
import { NodeCompiler } from '@myriaddreamin/typst-ts-node-compiler';
import { resolve } from 'node:path';

export const GET: APIRoute = () => {
  const compiler = NodeCompiler.create({ workspace: process.cwd() });
  const bytes = compiler.pdf({ mainFilePath: resolve('src/guides/handbook.typ') });

  return new Response(Uint8Array.from(bytes), {
    headers: { 'Content-Type': 'application/pdf' },
  });
};
