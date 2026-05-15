# Command Center Template

Simple static "Command Center" dashboard template for Tailnet hosting.

## Standard structure

```text
command-center-template/
├── index.html
├── README.md
├── CLIENT_SETUP_PROMPT.md
└── scripts/
    ├── prereq-check.sh
    ├── setup.sh
    └── status.sh
```

## What this repo is

- Single-file HTML template (`index.html`)
- Safe starter with placeholder data (no personal info)
- Designed for self-hosting on your own Tailnet URL

## Default URL

```text
https://<this-device>.ts.net/commandcenter
```

## Quick setup

From the repo root:

```bash
./scripts/prereq-check.sh
./scripts/setup.sh
./scripts/status.sh
```

## Optional custom route path

You can override `/commandcenter` by setting `COMMAND_CENTER_PATH`:

```bash
COMMAND_CENTER_PATH=/myhub ./scripts/setup.sh
```

Then open:

```text
https://<this-device>.ts.net/myhub
```

## Manual setup (if needed)

From the repo folder:

```bash
tailscale serve --bg --https=443 --set-path=/commandcenter "$PWD"
```

## One-prompt client onboarding

Use `CLIENT_SETUP_PROMPT.md` as the copy/paste prompt you can give a client (or their assistant) to set up their own instance from this template.

## Customize

Edit `index.html` and replace the placeholder `data` object values with your own metrics, priorities, campaigns, and events.

## Notes

- This is a static template only (no backend, no database).
- Keep sensitive data out of the file if the URL is shared with others on your Tailnet.
