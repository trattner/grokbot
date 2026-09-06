#!/bin/bash
set -euo pipefail
ENVFILE="${1:-$HOME/g/grokbot/.env}"
set -a
source "$ENVFILE"
set +a
cd "$SITE_PATH"
exec npx wrangler deploy
