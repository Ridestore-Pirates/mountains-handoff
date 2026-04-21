# Mountains — Project Context for Claude Code

## What this project is
A design system and screen documentation project for the **Mountains** app — a mobile mountain companion that tracks speed, distance, routes, and vertical drops in real time. This is a **design-only** repository. There is no application code here.

## Your job in this project
- Read and maintain `docs/design.md` as the single source of truth for all design decisions
- Update `docs/figma-4px-todo.md` when new issues are found
- Regenerate `docs/design-system.html` when `design.md` changes
- Create new screen mockups in `screens/` as HTML files when asked
- Keep all values on the **4px grid** (all sizes and spacings must be multiples of 4)

## Folder structure
```
mountains-design/
├── CLAUDE.md                  ← you are here
├── docs/
│   ├── design.md              ← source of truth for all design tokens and components
│   ├── figma-4px-todo.md      ← outstanding Figma fixes (with node IDs)
│   └── design-system.html     ← visual reference, generated from design.md
├── screens/                   ← HTML mockups of individual screens
└── assets/                    ← exported Figma images and icons
```

## Key design decisions (quick reference)
- **Font:** Archivo Expanded (all weights)
- **Primary color:** #E04700 (orange)
- **Surface color:** #D5F4FC (light blue)
- **Surface muted:** #BBE2EC
- **Icon bg:** #4E93AD
- **Text:** #080808
- **Border radius:** 8px (components), 28–32px (pills), 48px (markers)
- **Blur effect:** backdrop-filter: blur(7.5px) on all frosted panels
- **Screen size:** 393×852px (iPhone)
- **Button sizes:** Small 32px · Medium 40px · Large 48px

## Always read design.md first
Before making any changes or creating any new files, read `docs/design.md` in full. It contains all tokens, components, and screen documentation.

## Git
Git is not set up yet. Do not run any git commands unless explicitly asked.

## Moving to Git later
When ready, the user will ask to set up Git. At that point, initialize a repo in this folder and set up a .gitignore.
