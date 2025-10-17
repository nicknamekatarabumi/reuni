#!/bin/bash
set -euo pipefail
cd frontend
if [ ! -f Dockerfile ]; then
  echo "ERROR: Dockerfile missing"
  exit 1
fi
npm install --no-fund --no-audit
npm install --save-dev @vitejs/plugin-react || true
npm run build || { echo "Frontend build failed"; exit 1; }
cd ..
echo "Frontend build verified successfully."
