#!/bin/bash

set -eu

export NODE_ENV=production
export ATTACHMENT_DIR=/app/data/storage
export CLOUDRON_USERS_FILEPATH=/app/data/.users.json

mkdir -p "$ATTACHMENT_DIR"

chown -R cloudron:cloudron /app/data

echo "=> Start meemo"
exec /usr/local/bin/gosu cloudron:cloudron node /app/code/app.js
