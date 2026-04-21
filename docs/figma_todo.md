# Figma 4px Grid & Polish — Fix Checklist

> Set Figma nudge to **4px** first: Preferences → Nudge Amount → Big nudge: `4`.

---

## 🔴 Priority: Button Size System

The new screens introduced inconsistent button sizes. **Define and apply these 3 variants across all screens before polishing anything else.**

### Proposed Button Scale

| Variant | Height | Width | Usage |
|---|---|---|---|
| **Small** | 32px | 88px | Inline action in tight spaces (future use) |
| **Medium** | 40px | 90px or fluid | Inline "View" in stat rows |
| **Large** | 48px | 194px or full-width (312px) | "Close", "Sign Up", "Log In" |

### What needs fixing across all new screens

- [ ] **"View" button** (Group 226 in stat screens — e.g. `125:2122`, `125:2165`, etc.)
  - Currently: `194×46px` — make it **medium**: `90×40px`
  - Background: `#080808`, text: `#D5F4FC`
  - This button lives **inside** a 313×64px stat row — it should be 90×40, right-aligned with 12px padding

- [ ] **"Close" button** (Group 92 — e.g. `125:2119`, `125:2157`, etc.)
  - Currently: `194×46px` — height off-grid, make it **large**: `194×48px`
  - Background: `#D5F4FC`, text: `#080808`
  - Appears on every stat detail screen, should be consistent

- [ ] **"View" button in Lifetime Riding Card / Scoring System** (Group 226 — e.g. `125:2419`, `125:2445`, `125:2455`)
  - Currently: `90×40px` ✓ — already correct, keep as-is

- [ ] **Text size on all buttons** — standardise to **16px bold** across all button variants
  - Current "View" and "Close" labels are 17px — change to 16px

---

## Previously Identified Fixes (from 4px audit)

### Map View Screen (`node: 124:1563`)

- [ ] Map control icon buttons (Group 25 `124:1614`, Group 27 `124:1618`) — `30×30` → `32×32px`
- [ ] User marker outer ring (Group 48 `124:1643`) — `30×30` → `32×32px`
- [ ] Location pill (Rectangle 14 `124:1668`) — height `22` → `24px`
- [ ] App logo — small (mountains-logo-orange-blue `124:1626`) — height `25` → `24px`
- [ ] Header nav icon buttons top offset (Group 253 `124:1581`, Group 251 `124:1584`, Group 252 `124:1588`) — Y `55` → `56px`

### Sign Up Screen (`node: 124:1791`)

- [ ] Input fields (Group 13 `124:1816`, Group 14 `124:1819`, Group 15 `124:1822`) — width `313` → `312px`
- [ ] Primary CTA button (Rectangle 6 `124:1814`) — width `313` → `312px`
- [ ] Social button Rectangle 7 (`124:1802`) — `149` → `148px`
- [ ] Sign Up card top offset (Group 255 `124:1800`) — Y `365` → `364px`
- [ ] App logo large (mountains-logo-orange-blue 2 `124:1839`) — width `275` → `276px`

### Both / Shared

- [ ] Snap fractional positions on peak label groups (`124:1592`, `124:1601`, `124:1610`) to nearest 4px
- [ ] Add 4px layout grid to every frame: select frame → Add Layout Grid → Grid → Size: `4`

---

## New Screen Fixes

### All Stat Detail Screens (`125:2082`, `125:2125`, `125:2168`, `125:2220`, `125:2262`, `125:2303`, `125:2344`)

- [ ] **"View" button** on each screen (Group 226 inside frame) — resize to `194×48px` → correct to `90×40px` (see button system above)
- [ ] **"Close" button** on each screen (Group 92) — resize `194×46` → `194×48px`
- [ ] **Pagination dots** (Ellipse 8–14 on each screen) — currently `10×10px` ✓, but positions use fractional X values — snap all to nearest 4px X position
- [ ] **Stat Hero Card** (Group 69 / Rectangle 14 on each screen) — current size `194×84px` ✓, position Y `332px` ✓ — no change needed

### Lifetime Riding Card (`node: 125:2388`)

- [ ] **Card background** (Rectangle 15 `125:2416`) — current `353×627px` ✓, Y `119px` — nudge to `120px`
- [ ] **All stat rows** — height `64px` ✓ — verify 8px gap between every row is consistent
- [ ] **Stat row icon buttons** (Group 234 instances) — `40×40px` ✓ but some have fractional X (`52.04px`) — snap to `52px`
- [ ] **"Close" button** (Group 92 `125:2473`) — `194×46` → `194×48px`
- [ ] **Card title** "Days on Mountains at Verbier" — font size `18px` ✓
- [ ] **Subtitle** "First Recording…" — font size `10px`, consider bumping to `12px` for readability

### Scoring System (`node: 125:2500`)

- [ ] Same stat row and button fixes as Lifetime Riding Card (above)
- [ ] **Progress bar** (Rectangle 21 `125:2605`) — `4×160px` ✓ — check it's snapped to 4px grid position
- [ ] **Season score image** (image 37 `125:2606`) — `33×33px` → `32×32px`

### Crowns Hub (`node: 125:2607`)

- [ ] **Crown tier cards** (Rectangle 25 `125:2687`, Rectangle 19 `125:2676`, Rectangle 20 `125:2677`) — `112×112` and `110×112` → unify to `112×112px`
- [ ] **Crown medal images** (`125:2688`, `125:2689`, `125:2690`) — `58×58px` ✓
- [ ] **Points progress bar** (Rectangle 23 `125:2639`, Rectangle 24 `125:2661`) — height `8px` ✓, check X positions snap to 4px
- [ ] **"Close" button** (Group 92 `125:2665`) — `194×46` → `194×48px`
- [ ] **Season score card** (Rectangle 9 `125:2638`) — `64×64px` ✓

---

## Naming Cleanup (do after sizing is fixed)

Unnamed groups make future edits painful. Rename these layers:

- [ ] All `Rectangle 9` instances → name by purpose: `btn-view`, `btn-close`, `input-field`, `stat-row-bg`
- [ ] All `Group 92` instances → `btn-close`
- [ ] All `Group 226` instances → `btn-view`
- [ ] All `Group 234` instances → `icon-stat`
- [ ] `Group 255` on Sign Up → `card-signup`
- [ ] `Rectangle 15` on card screens → `card-stats-bg`

---

## Recommended Plugins

- **Grid Snapper** — batch snap layers to 4px grid: figma.com/community/plugin/733741256020684015
- **Find & Replace** — rename layers in bulk: figma.com/community/plugin/735072959479319257
