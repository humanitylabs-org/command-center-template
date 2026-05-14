#!/usr/bin/env bash
set -euo pipefail

echo "Tailscale route status (looking for /commandcenter):"
tailscale serve status | sed -n '1,160p'
