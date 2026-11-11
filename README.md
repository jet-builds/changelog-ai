# ChangelogAI

Convierte tus commits en notas de version claras y las publica en GitHub Releases, con traduccion y resumen opcional con IA.

## Que es

ChangelogAI es una GitHub Action para equipos y desarrolladores que no quieren perder tiempo redactando changelogs. Lee los commits desde la ultima version, los agrupa en Nuevas funciones y Correcciones, y publica el resultado en tu Release. Si el usuario lo activa, la IA reescribe las notas en el idioma que elija.

## Uso

Anade un paso a tu workflow que se ejecute al crear un tag, con fetch-depth 0 en el checkout. Usa la accion jet-builds/changelog-ai@main y pasa github-token con secrets.GITHUB_TOKEN. Para activar la IA, pasa ai-api-key con tu propia clave guardada como secret. Opcionalmente puedes indicar language y model.

## Coste cero para el autor

La IA funciona con la clave de API del propio usuario, que paga directamente a su proveedor lo que consuma. Sin clave, la Action funciona igualmente y es gratuita. Asi el proyecto no tiene costes de IA ni de servidores.

## Modelo de negocio

Plan Gratis: repositorios publicos y notas basicas.

Plan Pro (5 a 9 USD al mes): plantillas personalizadas, soporte y funciones avanzadas. El usuario sigue aportando su propia clave de IA.

Plan Equipo: integraciones con Slack y Notion y soporte prioritario.

Ingresos extra: GitHub Sponsors y GitHub Marketplace.

## Hoja de ruta

Fase 1: version base como GitHub Action (hecha).

Fase 2: traduccion y resumen con IA usando la clave del usuario (hecha).

Fase 3: app web con panel de control.

Fase 4: publicacion en GitHub Marketplace.

Fase 5 (ultima): cobro de suscripciones con Stripe.

## Licencia

MIT
