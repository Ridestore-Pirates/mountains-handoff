# Contributing to Mountains

Welcome. This guide explains how to generate new screens and contribute to the Mountains design system using Claude Code. You don't need deep technical experience — just follow the steps and the system will guide you.

---

## Getting started

1. Clone the repo and move into the project folder:
   ```
   git clone https://github.com/Ridestore-Pirates/mountains-handoff.git
   cd mountains-handoff
   ```

2. Run it locally:
   ```
   npx serve . -p 4321
   ```

3. Open your browser at `http://localhost:4321` — you'll land on the handoff index. From there you can access the design system, all screens, and the source of truth.

---

## Understanding the system

Before generating anything, get familiar with three things:

**`docs/design.md`** is the single source of truth. Every color, font size, spacing value, and design rule lives here. Claude reads this file when generating screens. If something isn't in design.md, it shouldn't be in the output.

**The deployed URL** (`https://ridestore-pirates.github.io/mountains-handoff/`) is the visual reference. Open it alongside Figma when reviewing generated screens — the goal is pixel accuracy.

**`assets/tokens/`** contains the importable token files. If you're building in React, React Native, or SwiftUI, start here — not by copying values manually from Figma.

---

## Generating a new screen with Claude Code

This is the core workflow. Open Claude Code in the project folder and use the following prompt as your starting point:

```
Read docs/design.md and review the existing screens in docs/ to understand
the design system. Then generate a new screen for [screen name] following
the same tokens, grid, components and visual style. Output as a single
HTML/CSS file in docs/.
```

Replace `[screen name]` with what you're building — for example: "Lifetime Riding Card", "Stat Details", "Friends List".

After Claude generates the file, open it in the browser and compare it against the Figma design. If anything looks off, describe the issue in plain English and ask Claude to fix it. You don't need to edit the code yourself.

**Tips:**
- If the screen has a specific Figma node ID, include it: "the Figma node is 125:2082"
- If it uses a background photo, mention which asset to use from `assets/images/`
- If Claude invents a color or spacing value not in the system, ask it to correct to the nearest token

---

## Branching rules

Always work on a dedicated branch. Never commit directly to `main`.

```
git checkout -b feature/screen-{name}
```

Examples:
- `feature/screen-lifetime-card`
- `feature/screen-stat-details`
- `fix/profile-avatar-radius`

`main` is always what's deployed at the public URL. It should always be in a working state.

---

## Before you merge — checklist

Go through this before opening a pull request:

- [ ] Every spacing and sizing value is a multiple of 4px (no 6px padding, no 22px heights)
- [ ] All colors use tokens from `assets/css/tokens.css` — no invented hex values or rgba on dark backgrounds
- [ ] The screen renders correctly at 393×852px (iPhone 14 Pro viewport)
- [ ] Text on dark photo backgrounds uses `#D5F4FC` or `#BBE2EC`, never white
- [ ] No bottom tab bar (the app has no tab navigation)
- [ ] The file is saved in `docs/` and follows the `screen-{name}.html` naming pattern
- [ ] The screen is listed in the Screens table in `docs/design-system.html` and `index.html`

---

## Flagging for review

Once your screen is ready, open a pull request on GitHub and tag **Winner** for review. Don't merge until it's been signed off.

A good PR description includes:
- Which Figma node or screen this corresponds to
- A screenshot or browser preview of the output
- Any known issues or decisions you made during generation

If something doesn't match Figma exactly, note it — that's useful signal for improving the prompt or the design.md source.
