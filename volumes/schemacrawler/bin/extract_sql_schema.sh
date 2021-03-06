#!/usr/bin/env bash
set -euo pipefail

DATABASE=$2
/schemacrawler/schemacrawler.sh \
-server=postgresql \
-host=${POSTGRES_HOST} -port=${POSTGRES_PORT} \
-user=${POSTGRES_ADMIN_USER} -password=${POSTGRES_ADMIN_PASSWORD} \
-database=${DATABASE} \
-command=schema \
-infolevel=standard \
-portablenames \
-outputformat=pdf \
-outputfile=/schemacrawler/data/sql_schema_${DATABASE}.pdf
echo "... done."
