# CLAUDE.md — vipsystems.site

Landing de VipSystems (desarrollo de software, CRM e integraciones, Guayaquil, Ecuador).
Se reconstruye desde cero en Astro sobre la rama `rediseno`; la plantilla Bootstrap anterior se elimina.

## Stack y comandos
- **Astro** (salida estática) · CSS propio con variables · sin frameworks de UI ni Tailwind.
- Node 20+. `npm install` · `npm run dev` (http://localhost:4321) · `npm run build` (genera `dist/`) · `npm run preview`.
- Hosting: **Cloudflare Pages**. Build command `npm run build`, output `dist`. No modificar configuración de Cloudflare ni DNS desde el código.
- Cero JavaScript en el cliente salvo que sea indispensable (y se justifica en el resumen).

## Estructura
```
src/
  layouts/Base.astro        <head>, SEO, fuentes, favicons, Header + Footer
  components/               un componente por sección y piezas reutilizables
    Header.astro  Footer.astro  Button.astro  Section.astro
    Hero.astro  ChatDemo.astro  Servicios.astro  Productos.astro
    AgenteVip.astro  AlkilaVip.astro  Experiencia.astro  Tecnologias.astro  Contacto.astro
  data/site.ts              teléfonos, enlaces de WhatsApp, correo, redes, lista de clientes, tecnologías
  styles/tokens.css         variables de diseño (colores, tipografía, espacios, radios)
  styles/global.css         reset mínimo y estilos base
  pages/index.astro         la landing
public/
  brand/                    kit del logo (svg/, png/) — NO modificar los archivos
  favicon.svg, favicon.ico, apple-touch-icon.png, icon-192.png, icon-512.png
docs/
  diseno-referencia-B.html  referencia visual aprobada (no es código de producción)
  contenido-landing.md      textos aprobados (v3)
```
Teléfonos, URLs de `wa.me` y correo **solo** en `src/data/site.ts`; los componentes los importan.

## Fuentes de verdad
- **Textos:** `docs/contenido-landing.md`. Copiar literal; no reescribir ni inventar textos, cifras, testimonios ni clientes.
- **Diseño:** `docs/diseno-referencia-B.html` (dirección B, fondo oscuro, producto al frente). Reproducir jerarquía, espaciados, colores y radios; el código se reescribe limpio en componentes, no se copian estilos inline.
- **Logo:** archivos de `public/brand/`. Nunca recrear el logo con texto o CSS en el header/footer; usar el SVG horizontal para fondo oscuro.

## Tokens de diseño
| Token | Valor | Uso |
|---|---|---|
| `--bg` | `#1f2331` | fondo principal |
| `--surface` | `#272c3d` | secciones alternas, tarjetas, panel del chat |
| `--line` | `#343a4f` | bordes de sección, burbuja del bot |
| `--line-strong` | `#3a4057` | bordes de tarjetas |
| `--line-soft` | `#5a6178` | bordes de botones secundarios |
| `--text` | `#ffffff` | texto principal |
| `--text-muted` | `#b4b9c8` | texto secundario |
| `--green` | `#25ae88` | acento, botones primarios, bloque AgenteVip |
| `--green-ink` | `#1a7d62` | texto verde sobre fondo blanco |
| `--blue` | `#313559` | azul de marca |
- Tipografía: **Space Grotesk** 500/700 (títulos) e **Inter** 400/500/600 (texto), autoalojadas con `@fontsource` (no Google Fonts CDN).
- Escala con `clamp()`: h1 ≈ 40→66 px, h2 ≈ 32→46 px, títulos de producto ≈ 36→52 px, texto 17 px.
- Radios: botones y etiquetas `999px`; tarjetas `16px`; bloques de producto y panel del chat `24px`.
- Contenedor `max-width: 1240px`, padding lateral 32 px (20 px en móvil). Secciones con ~96 px de padding vertical.

## Reglas de diseño
- **Sobre verde `#25ae88` el texto es oscuro (`--bg`), nunca blanco** (blanco no cumple contraste).
- Contraste mínimo 4.5:1 en texto normal.
- Prohibido: degradados decorativos, glassmorphism, sombras difusas grandes, emoji, iconos de librerías pesadas, tarjetas con borde izquierdo de color, animaciones de entrada al hacer scroll.
- Iconos: SVG inline de trazo simple (`stroke`, 2px), `aria-hidden="true"` si son decorativos.
- Responsive desde 360 px: el header colapsa sin JS (o con el mínimo indispensable), las grillas pasan a una columna, los botones tienen al menos 44 px de alto.

## Reglas de contenido (obligatorias)
- **No nombrar a Uanataca** en ningún archivo, comentario, alt ni metadato.
- No mencionar empleadores ni proyectos hechos bajo relación de dependencia.
- **Logos de clientes:** solo CELCO. El resto de clientes va únicamente en texto. No descargar logos de internet.
- Implementaciones con GreenfieldCRM en pasado. Entidades públicas con el nombre que tenían cuando se hizo el trabajo.
- Facturación electrónica siempre como "by Ebos".
- Anclas fijas: `#servicios`, `#productos`, `#agentevip`, `#alkilavip`, `#experiencia`, `#contacto` (las usa la publicidad; no cambiarlas).
- Assets pendientes (logo de CELCO, captura de AlkilaVip, captura real del demo de AgenteVip): dejar un placeholder marcado con `TODO(asset)` y no inventar el contenido.

## SEO y accesibilidad
- Title y meta description del documento de contenido; `lang="es"`, Open Graph básico, canonical `https://vipsystems.site/`.
- Un solo `h1`; jerarquía de encabezados correcta; enlaces con texto descriptivo; `alt` en imágenes con contenido.
- Enlaces externos de WhatsApp con `rel="noopener"`.

## Forma de trabajo
- Trabajar solo en la rama `rediseno`. **Nunca** hacer push ni merge a `main` sin que Víctor lo pida.
- Commits pequeños y descriptivos en español (`feat: hero y chat de AgenteVip`).
- Antes de terminar cada tarea: `npm run build` sin errores ni warnings nuevos.
- No agregar dependencias fuera de `astro` y `@fontsource/*` sin preguntar.
- Si algo del diseño o del contenido es ambiguo, preguntar antes de inventar.
- **Al terminar cada tarea, entregar este resumen:**
```
## Resumen de implementación — <fase/tarea>
- Archivos creados / modificados / eliminados
- Qué se hizo y por qué
- Decisiones tomadas o supuestos
- Pendientes / problemas encontrados
- Cómo probarlo
```
