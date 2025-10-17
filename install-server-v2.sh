#!/bin/bash
set -euo pipefail
if [ "$(whoami)" != "root" ]; then echo "Run as root"; exit 1; fi
apt update -y && apt install -y curl unzip git docker.io docker-compose-plugin libnss3-tools
mkdir -p /var/lib/reuni-data/mysql /var/lib/reuni-data/uploads /var/lib/reuni-data/redis /var/lib/reuni-data/logs /opt/reuni-certs
systemctl enable --now docker || true
echo "Host directories prepared and Docker enabled."
