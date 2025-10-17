#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
echo "Building and starting stack with mkcert-init auto..."
docker compose up -d --build
docker wait reuni_mkcert_init || true
sleep 2
docker compose restart traefik || true
echo "Stack started. Access https://reuni.local/admin"
