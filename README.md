# ChangelogAI

Genera notas de version automaticamente a partir de tus commits y las publica en GitHub Releases.

## Uso

Anade este paso a tu workflow, que se ejecute al crear un tag, con fetch-depth 0 en el checkout. Usa la accion jaimesteveztunas-arch/changelog-ai@main y pasa github-token con secrets.GITHUB_TOKEN.

Los commits que empiezan por feat y fix se agrupan en secciones de Nuevas funciones y Correcciones.

## Modelo de negocio

Plan Gratis: repositorios publicos, notas basicas.

Plan Pro (5 a 9 USD al mes): repositorios privados, traducciones con IA y plantillas personalizadas.

Plan Equipo: integraciones con Slack y Notion, y soporte prioritario.

Ingresos extra: GitHub Sponsors y publicacion en GitHub Marketplace.

## Hoja de ruta

Fase 1: version base como GitHub Action (hecha).

Fase 2: traduccion y resumen con IA.

Fase 3: app web con panel y cobro por suscripcion.

Fase 4: publicacion en GitHub Marketplace.

## Licencia

MIT
