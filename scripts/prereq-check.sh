#!/usr/bin/env bash
set -euo pipefail

ok(){ printf '✅ %s\n' "$1"; }
fail(){ printf '❌ %s\n' "$1"; exit 1; }

command -v tailscale >/dev/null 2>&1 || fail "tailscale CLI not found"

tailscale status >/dev/null 2>&1 || fail "tailscale is not connected on this device"
ok "tailscale connected"

tailscale serve status >/dev/null 2>&1 || fail "tailscale serve is not ready (run tailscale serve once and complete consent flow)"
ok "tailscale serve available"

[ -f "index.html" ] || fail "index.html not found in repo root"
ok "index.html present"

printf '\nAll required checks passed.\n'
