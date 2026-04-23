# AI-First Design Workflow

A modern approach to product design where Figma, AI, and code work together — so your design system ships itself.

---

## What it is

Most design handoffs break down between Figma and the first line of code. Developers interpret designs differently. Tokens get transcribed wrong. Components drift. Reviews take time. Updates create more drift.

The AI-First Design Workflow removes the gap. Instead of handing off a Figma file and hoping for the best, you maintain a single written source of truth and let AI generate everything downstream — screens, token files, documentation, and a live shareable URL — automatically and consistently.

---

## How it works

**Design in Figma**
Your product is designed as usual in Figma. This is where creative decisions happen.

**Extract to design.md**
The key decisions — colors, type scale, spacing, components, rules — are written down in a structured Markdown file. This becomes the machine-readable specification that everything else is generated from.

**Generate screens with Claude Code**
A developer (or designer) points Claude Code at the spec file and asks it to build a screen. Claude reads the rules, applies the tokens, and outputs a pixel-accurate HTML/CSS file. No interpretation, no guesswork.

**Export tokens to all stacks**
The same spec file generates token files for every platform: CSS custom properties, a JavaScript module for React and React Native, and Swift extensions for iOS. One source, every target.

**Deploy to GitHub Pages**
The output is a static site — no server, no framework, no build step. Push to GitHub and it's live in under a minute.

**Share the URL**
Developers get a public link with the full design system, every screen, and ready-to-import token files. No Figma access required. No license needed.

---

## What the developer gets

- A live URL with the complete design system — colors, typography, spacing, components, all with code examples
- Every screen built as a working HTML/CSS prototype they can inspect and run locally
- Token files ready to import directly into CSS, JavaScript, React Native, or SwiftUI
- A written source of truth they can read, search, and reference without opening Figma

---

## What changes

**No more manual handoff.** The design system documents itself. Token files generate themselves. Screens are built to spec on the first pass.

**No Figma seats for developers.** They work from the deployed URL and the token files — no design tool access needed.

**No transcription errors.** Values come from the spec file, not from a developer reading a number off a Figma panel and typing it in.

**Always up to date.** When the design changes, update design.md, regenerate, and push. The URL reflects the current state within minutes.

---

## Who it's for

**Product teams** who want design and engineering to move at the same pace without constant back-and-forth.

**Agencies** who deliver design systems to clients and want handoff to be a URL, not a folder of screenshots and a Notion page.

**Startups** who need to move fast without sacrificing consistency — and can't afford to rebuild the design system every time a decision changes.

---

## Built with

Figma · Claude Code · GitHub Pages

No frameworks. No build step. No proprietary tools. The output is plain HTML, CSS, and standard token formats that work anywhere.

---

*This workflow was developed for the Mountains ski app. The full design system is live at https://ridestore-pirates.github.io/mountains-handoff/*
