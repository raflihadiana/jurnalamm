#!/usr/bin/env bash
# Start the jurnalamm Hugo dev server so it works behind the code-server
# port proxy (https://code.jurnalamm.dev/proxy/<port>/).
#
# Why these flags:
#   - code-server's /proxy/<port>/ route strips the prefix and connects to
#     0.0.0.0:<port>, so Hugo MUST bind to 0.0.0.0 (not 127.0.0.1).
#   - HUGO_RELATIVEURLS + --baseURL=/ make Hugo serve at "/" while emitting
#     relative links, so they resolve correctly under the /proxy/<port>/ prefix.
#
# Note: Hugo's live-reload script uses an absolute path and won't load through
# the proxy; refresh the browser manually.

set -euo pipefail

PORT="${PORT:-1313}"
cd "$(dirname "$0")"

# Prefer the newer Hugo binary (>= 0.141.0); the distro one (0.131.0) is too
# old for the Blowfish theme.
if [ -x "$HOME/.local/bin/hugo" ]; then
  HUGO="$HOME/.local/bin/hugo"
elif command -v hugo >/dev/null 2>&1; then
  HUGO="$(command -v hugo)"
else
  echo "error: hugo not found" >&2
  exit 1
fi

echo "Hugo: $HUGO"
echo "Starting dev server on 0.0.0.0:$PORT"
echo "Proxy URL: https://code.jurnalamm.dev/proxy/$PORT/"

exec env HUGO_RELATIVEURLS=true "$HUGO" server \
  --baseURL=/ \
  --appendPort=false \
  --bind=0.0.0.0 \
  --port="$PORT"
