# Command Center Template

Simple static "Command Center" dashboard template for Tailnet hosting.

## What this repo is

- Single-file HTML template (`index.html`)
- Safe starter with placeholder data (no personal info)
- Designed for self-hosting on your own Tailnet URL

## Default URL

```text
https://<this-device>.ts.net/commandcenter
```

## Quick setup

```bash
./scripts/prereq-check.sh
./scripts/setup.sh
./scripts/status.sh
```

## Manual setup (if you prefer)

From the repo folder:

```bash
tailscale serve --bg --https=443 --set-path=/commandcenter "$PWD"
```

That serves this directory under `/commandcenter/` and gives a redirect from `/commandcenter`.

## Customize

Edit `index.html` and replace the placeholder `data` object values with your own metrics, priorities, campaigns, and events.

## Notes

- This is a static template only (no backend, no database).
- Keep sensitive data out of the file if the URL is shared with others on your Tailnet.
