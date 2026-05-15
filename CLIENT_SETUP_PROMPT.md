# Client Setup Prompt (Copy/Paste)

Use this exact prompt with your assistant:

---

Set up my Command Center from this repo:
`https://github.com/humanitylabs-org/command-center-template`

Requirements:
1. Clone it into `Code/command-center-template` (or pull latest if it already exists).
2. Run:
   - `./scripts/prereq-check.sh`
   - `./scripts/setup.sh`
   - `./scripts/status.sh`
3. Confirm the route is live and give me the exact URL.
4. Keep this as a single-file static dashboard (`index.html`) and update only placeholder data values for my business.
5. Do not add backend services, databases, or extra frameworks.
6. Do one tasteful visual polish pass (spacing, typography, card styling, readability) while keeping it lightweight and mobile-friendly.

Optional:
- If I ask for a custom path, set it with:
  `COMMAND_CENTER_PATH=/my-path ./scripts/setup.sh`

Output format:
- URL
- What you changed in `index.html`
- Any blockers

---
