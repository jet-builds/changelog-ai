#!/usr/bin/env bash
set -euo pipefail
PREV=$(git describe --tags --abbrev=0 HEAD^ 2>/dev/null || true)
RANGE="${PREV:+$PREV..}HEAD"
{
echo "## Nuevas funciones"
git log $RANGE --pretty="- %s" --grep="^feat" || true
echo
echo "## Correcciones"
git log $RANGE --pretty="- %s" --grep="^fix" || true
} > NOTES.md
if [ -n "${AI_API_KEY:-}" ]; then
NOTES=$(cat NOTES.md)
PROMPT="Redacta unas notas de version claras en el idioma ${NOTES_LANG:-es}. Usa Markdown, se breve y no inventes cambios."
BODY=$(jq -n --arg m "${AI_MODEL:-claude-3-5-haiku-latest}" --arg p "$PROMPT" --arg n "$NOTES" '{model:$m,max_tokens:1024,messages:[{role:"user",content:($p+"\n\n"+$n)}]}')
RESP=$(curl -sS https://api.anthropic.com/v1/messages -H "x-api-key: $AI_API_KEY" -H "anthropic-version: 2023-06-01" -H "content-type: application/json" -d "$BODY" || true)
TEXT=$(echo "$RESP" | jq -r '.content[0].text // empty' || true)
if [ -n "$TEXT" ]; then echo "$TEXT" > NOTES.md; fi
fi
gh release create "$GITHUB_REF_NAME" --notes-file NOTES.md || gh release edit "$GITHUB_REF_NAME" --notes-file NOTES.md
