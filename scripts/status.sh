#!/usr/bin/env bash
set -euo pipefail

ROUTE_PATH="${COMMAND_CENTER_PATH:-/commandcenter}"

echo "Tailscale route status (looking for ${ROUTE_PATH}):"
tailscale serve status | sed -n '1,160p'
