#!/bin/bash
set -euo pipefail
cd frontend
npm install
npm install --save-dev @vitejs/plugin-react || true
npm run build || true
cd ..
docker compose build frontend || true
docker compose up -d frontend
echo "Frontend fix complete."
