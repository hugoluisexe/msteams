#!/bin/sh

# dev apenas adicionar a url gerada do webhook aqui
WEBHOOK_URL=''

TITULO="$1"
TEXTO="$2"

# ajustando json.
MSG_AJUST=$(echo ${TEXTO} \
   | sed 's/"/\"/g' \
   | sed "s/'/\'/g")

JSON="{\"title\": \"${TITULO}\", \"text\": \"${MSG_AJUST}\" }"

# postando no teams.
curl -H "Content-Type: application/json" -d "${JSON}" "${WEBHOOK_URL}"
