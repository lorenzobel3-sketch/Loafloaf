#!/usr/bin/env bash
# Fetch the six generated assets into assets/ so the site is complete.
#
# Run this once from inside the-sourdough-house/ on any machine with
# ordinary internet access:
#
#     bash fetch-assets.sh
#
# The files are already processed and web ready. Nothing here re-encodes
# anything, so it needs only curl.

set -euo pipefail
cd "$(dirname "$0")"
mkdir -p assets

BASE="https://d2ol7oe51mr4n9.cloudfront.net/user_3J2dDycbIIzKPwTgbtXWRDYi82n"

fetch () {
  local name="$1" id="$2" want="$3"
  printf '%-18s ' "$name"
  curl -fsS -o "assets/$name" "$BASE/$id"
  local got
  got=$(wc -c < "assets/$name" | tr -d ' ')
  if [ "$got" = "$want" ]; then
    echo "ok  ($got bytes)"
  else
    echo "SIZE MISMATCH  got $got, expected $want"
    exit 1
  fi
}

fetch hero-scrub.mp4  9d053a14-fe9a-466f-9940-c9a56846ef3b.mp4  4737233
fetch hero-poster.jpg 010af5d2-5c1f-41e2-85da-d2061305b1ee.jpg  140519
fetch hero-ending.jpg 26a14da8-3360-4f88-a6b4-53e5d4e0a9e7.jpg  161222
fetch step-1.jpg      f6bab429-3233-4355-a71a-321a88ed95a8.jpg  437713
fetch step-2.jpg      58bc7b4f-5553-4a86-8373-816c6d87aef4.jpg  538232
fetch step-3.jpg      03a7b9db-22bc-4bf8-9d3f-3574ef0de87e.jpg  470547

echo
echo "All six assets are in assets/. The site is now complete."
echo "Preview it with:  npx http-server -p 8080   then open http://localhost:8080"
