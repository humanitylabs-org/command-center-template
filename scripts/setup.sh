#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
ROUTE_PATH="${COMMAND_CENTER_PATH:-/commandcenter}"

if ! command -v tailscale >/dev/null 2>&1; then
  echo "tailscale CLI not found"
  exit 1
fi

tailscale status >/dev/null 2>&1 || {
  echo "tailscale is not connected on this device"
  exit 1
}

tailscale serve --bg --https=443 --set-path="$ROUTE_PATH" "$ROOT_DIR"

echo
echo "✅ Command Center route configured"
echo "Path: $ROUTE_PATH"
echo "Open: https://<this-device>.ts.net${ROUTE_PATH}"
