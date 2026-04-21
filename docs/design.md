# Mountains — Design System

> Mountain companion app for tracking speed, distance, routes, and vertical drops in real time.
> **4px grid rule applied.** All spacing, sizing, and positioning values are multiples of 4.

---

## Brand

- **App name:** Mountains
- **Logo:** `mountains-logo-orange-blue` — horizontal lockup with an orange asterisk mark + wordmark
- **Tagline:** "Your mountain companion — track your speed, distance, routes, and vertical drops in real time."

---

## Spacing Scale

Base unit: **4px**

| Token | Value |
|---|---|
| `space-1` | 4px |
| `space-2` | 8px |
| `space-3` | 12px |
| `space-4` | 16px |
| `space-5` | 20px |
| `space-6` | 24px |
| `space-7` | 28px |
| `space-8` | 32px |
| `space-9` | 36px |
| `space-10` | 40px |
| `space-11` | 44px |
| `space-12` | 48px |
| `space-14` | 56px |

---

## Color Palette

| Token | Value | Usage |
|---|---|---|
| `color-primary` | `#E04700` | CTA buttons, active states, stat cards, accent markers |
| `color-surface` | `#D5F4FC` | Card backgrounds, nav bar, frosted panels, Close button |
| `color-surface-muted` | `#BBE2EC` | Input fields, secondary buttons, stat row backgrounds |
| `color-icon-bg` | `#4E93AD` | Stat row icon button backgrounds |
| `color-text-primary` | `#080808` | Headings, body text, View button text on dark |
| `color-text-secondary` | `rgba(8,8,8,0.5)` | Placeholder text, subtitles (e.g. "First Recording…") |
| `color-text-on-dark` | `#D5F4FC` | Text on `#080808` buttons |
| `color-link` | `#E04700` | Inline links (Log In, Forgot password) |
| `color-error-link` | `#EA4335` | Legal inline links (Terms, Privacy Policy) |
| `color-overlay-dark` | `rgba(0,0,0,0.7) → transparent` | Top gradient overlay on map screen |

---

## Typography

All text uses **Archivo Expanded**.

| Style | Font | Weight | Size | Line Height | Usage |
|---|---|---|---|---|---|
| `display-xl` | Archivo Expanded | Bold | 38px | 1.25 | Stat hero value (e.g. "74.0") |
| `display-lg` | Archivo Expanded | Bold | 18px | 1.25 | Stat unit label (e.g. "km/h"), stat row value |
| `heading-lg` | Archivo Expanded | Bold | 20px | 1.25 | Screen section titles |
| `heading-md` | Archivo Expanded | Bold | 18px | 1.25 | Card/screen titles (e.g. "Days on Mountains") |
| `body-md` | Archivo Expanded | Regular | 16px | 1.25 | Body copy, tagline, input placeholders |
| `body-sm` | Archivo Expanded | Regular | 12px | 1.25 | Supporting text, social login label |
| `label-sm` | Archivo Expanded | Bold | 12px | 1.0 | Peak names, location labels, pill labels |
| `label-xs` | Archivo Expanded | Bold | 10px | 1.25 | Stat row labels (e.g. "Top Speed", "On Piste") |
| `cta-md` | Archivo Expanded | Bold | 17px | 1.25 | Button labels (View, Close) — **needs standardising, see TODO** |
| `cta-lg` | Archivo Expanded | Bold | 16px | 1.25 | Primary full-width button labels (Sign Up, Log In) |
| `legal-sm` | Archivo Expanded | Regular | 12px | 1.6 | Terms/conditions inline text |
| `caption` | Archivo Expanded | Regular | 10px | 1.25 | Subtitles under card headers |

---

## Spacing & Layout

- **Screen width:** 393px (iPhone standard)
- **Screen height:** 852px
- **Horizontal screen padding:** 20px outer, 40px inner (card content)
- **Header height:** 56px *(was 55px)*
- **Status bar:** 13px from top, system-managed
- **Card inner padding:** 8–16px
- **Bottom bar height:** 40px, blurred surface
- **Stat card:** 353×627px (`color-surface` background, radius 8px)
- **Stat row:** 313×64px (within card, `color-surface-muted` + blur)
- **Stat row gap:** 8px between rows

---

## Border Radius

| Token | Value | Usage |
|---|---|---|
| `radius-sm` | 8px | Input fields, buttons, icon buttons, cards, stat rows |
| `radius-md` | 28–32px | Pills (location selector), bottom nav |
| `radius-lg` | 48px | Avatar badges, user markers on map |

---

## Effects

- **Backdrop blur:** `blur(7.5px)` — frosted glass on icon buttons, cards, nav bar, stat rows
- **Surface blur panel color:** `rgba(213,244,252,0.8)`
- **Gradient overlay on map:** `linear-gradient(to bottom, rgba(0,0,0,0.7), rgba(0,0,0,0))` over top 200px
- **Blend mode on avatar/image overlays:** `mix-blend-multiply`

---

## Components

### Button — Primary (full width)
- Height: **40px**
- Width: 312px
- Background: `#080808`
- Text: `#D5F4FC`, `cta-lg` (16px bold)
- Border radius: 8px
- Usage: Sign Up, Log In

### Button — Primary (inline / small)
- Height: **40px**
- Width: **90px** *(currently in Figma — see TODO for standardisation)*
- Background: `#080808`
- Text: `#D5F4FC`, `cta-md` (17px bold — **needs aligning to 16px**)
- Border radius: 8px
- Usage: "View" inside stat rows

### Button — Secondary (full width)
- Height: **46px** *(off-grid — see TODO)*
- Width: 194px (centered)
- Background: `#D5F4FC`
- Text: `#080808`, `cta-md`
- Border radius: 8px
- Usage: "Close" on stat detail screens

### Button — Secondary (social login)
- Height: **44px**
- Width: **148px** each
- Background: `#BBE2EC`
- Border radius: 8px

> ⚠️ **Button size system needed.** Current screens show at least 3 inconsistent heights (40px, 44px, 46px) and widths (90px, 148px, 194px, 312px). Proposed standard — see TODO.

### Input Field
- Height: 40px
- Width: 312px
- Background: `#BBE2EC` + `backdrop-blur(7.5px)`
- Border radius: 8px
- Placeholder: `color-text-secondary`, `body-md`
- Trailing icons: eye (password), envelope (email)

### Stat Hero Card
- Size: 194×84px
- Background: `#E04700`
- Border radius: 8px
- Value: `display-xl` (38px bold), color `#D5F4FC`
- Unit: `display-lg` (18px bold), color `#D5F4FC`, baseline-aligned
- Label: `label-sm` (15px bold), color `#D5F4FC`, below value
- Usage: centered on stat detail screens (Top Speed, Total Runs, etc.)

### Stat Row (List item)
- Size: 313×64px
- Background: `#BBE2EC` + `backdrop-blur(7.5px)`
- Border radius: 8px
- Left: icon button (40×40px, `#4E93AD` bg, radius 8px) with `#D5F4FC` icon
- Center: label (`label-xs`, 10px bold) above value (`display-lg`, 18px bold)
- Right (optional): inline "View" button (90×40px, `#080808` bg)
- Usage: Lifetime Riding Card, Scoring System

### Stat Detail Screen (full screen)
- Full-screen mountain photo background
- Logo top-left (map header pattern)
- Stat Hero Card centered ~332px from top
- Pagination dots row (7 dots, 10px each, 25px gap, active dot = `#E04700`)
- "View" button (194×46px, `#080808`) ~474px from top
- "Close" button (194×46px, `#D5F4FC`) ~766px from top

### Lifetime Riding Card
- `#D5F4FC` card: 353×627px, radius 8px, top offset 119px
- Header: title (`heading-md`, 18px bold) + subtitle (`caption`, 10px, muted)
- List of Stat Rows (8 items, 8px gap)
- Some rows have inline "View" button, some don't
- "Close" button (194×46px) at bottom

### Pagination Dots
- 7 dots, each 10px diameter
- Active dot: `#E04700`
- Inactive dot: muted/white ~40% opacity
- Spacing: 25px between dot centers
- Usage: stat detail screens (swiping between stats)

### Icon Button (Stat Row)
- Size: 40×40px
- Background: `#4E93AD`
- Border radius: 8px
- Icon: `#D5F4FC` SVG, ~22px — never white

### Icon Button (Map Controls)
- Size: 40×40px *(was 30×30px)*
- Background: `rgba(213,244,252,0.8)` + `backdrop-blur(7.5px)`
- Border radius: 8px (square) or 48px (compass)

### Location Pill
- Height: 24px *(Figma shows 22px — corrected to 24px for 4px grid)*
- Position: `left: 55px, top: 92px` — below logo, not inside the 56px header bar
- Background: `rgba(213,244,252,0.8)` + `backdrop-blur(7.5px)`
- Border radius: 28px (`radius-md`)
- Text: `label-sm` (12px bold), `#080808`
- Trailing icon: `dropdown-arrow.svg` (9×8px, `#E04700` filled triangle)
- Confirmed from Figma node `125:3102`

### User Marker (Map)
- Outer ring: 32×32px, `#E04700`, radius 48px
- Inner circle: 20×20px, `#D5F4FC`, radius 48px
- Image: `mix-blend-multiply`

### Peak Label (Map Annotation)
- Two-line: bold name + regular elevation, 12px each
- Followed by 24×24px location pin icon

### Bottom Strip (iOS Home Indicator)
- Height: 40px, `border-radius: 32px 32px 0 0` (rounded top corners only)
- Background: `rgba(213,244,252,0.8)` + `backdrop-blur(7.5px)`
- Contains a centered 100×4px home indicator line (`rgba(8,8,8,0.18)`)
- Not a tab bar — no navigation icons. Navigation lives in the header.

### Header Nav Icons
- 3 frosted icon buttons, right-aligned in the header, 20px from screen edge
- Size: 40×40px each, `rgba(213,244,252,0.8)` + `backdrop-blur(7.5px)`, `radius-sm` (8px)
- Gap between buttons: 16px
- Positions (confirmed from Figma `124:1563`): left 221px, 277px, 333px — all at top 55px
- **Button 1 — Friends:** `profile.svg` (18×18px, `#4E93AD`) · Figma node `124:1584`
- **Button 2 — Chat/Activity:** `chat.svg` (18×18px, `#4E93AD`) · Figma node `124:1588` · orange dot badge (`#E04700`, 8px) when active
- **Button 3 — Avatar:** user profile photo, `mix-blend-multiply`, `radius-sm`
- This pattern is consistent across all screens — not screen-specific

### Notification Item
- Height: ~72px (two lines of text)
- Background unread: `rgba(255,255,255,0.22)` on top of group card
- Background read: transparent (group card color shows through)
- Divider between items: `1px solid rgba(8,8,8,0.07)`
- Left: icon button 40×40px, `radius-sm`, Lucide icon 20px, stroke `#D5F4FC`
  - **Teal bg** (`#4E93AD`) — social / friend events (default)
  - **Orange bg** (`#E04700`, `.milestone`) — personal achievements (streak, crown, PB, score)
- Unread state is indicated by the orange dot (`.notif-dot`) only — not the icon bg colour
- Center: title `label-sm` (12px bold, `#080808`) + body `body-sm` (12px regular, `#080808`)
- Right: time `caption` (10px regular, `color-text-secondary`) + unread dot (8px, `#E04700`)

### Notification Group Card
- Background: `rgba(213,244,252,0.88)` + `backdrop-blur(7.5px)`
- Border radius: 8px (`radius-sm`)
- Gap between groups: 4px

### Notifications Empty State
- Centered vertically in the content area
- `mountains-icon.svg` centred, 48×48px, `opacity: 0.9`
- Title: `heading-md` (18px bold), `color-text-on-dark` (`#D5F4FC`)
- Body: `body-sm` (12px regular), `color-surface-muted` (`#BBE2EC`) — solid, never opacity
- Copy: "You're all caught up" / "Get out there and make some tracks"

### Section Date Label
- Font: `label-xs` (10px bold, uppercase, `letter-spacing: 0.08em`)
- Color: `color-text-on-dark` (`#D5F4FC`) — these labels sit on the dark photo background
- Padding: 16px top, 8px bottom
- Usage: TODAY / YESTERDAY / THIS WEEK groupings

### Checkbox
- Size: 24×24px, radius 8px
- Default: `border: 3px solid #BBE2EC`, bg white
- Selected: bg `#E04700`

---

## Screens

### 1. Sign Up (`node: 124:1791`)
Background photo + frosted card. Email, password, confirm password fields. Primary CTA, social login, T&C checkbox, Log In link.

### 2. Sign Up — Keyboard Open (`node: 124:1856`)
Same as Sign Up with iOS keyboard visible, card scrolls up.

### 3. Map View (`node: 124:1563`)
Full-screen mountain map. Logo + location pill header. Map controls sidebar. Peak annotations. User marker. Bottom nav bar.

### 4. Map View — Power Saving Warning (`node: 124:1671`)
Map View with centered modal card. Title + body + close button.

### 5. Stat Detail — Top Speed (`node: 125:2082`)
Full-screen bg. Logo. Stat Hero Card (orange, "74.0 km/h"). Pagination dots (1 of 7). View + Close buttons.

### 6. Stat Detail — Resort Explored (`node: 125:2125`)
Same layout. Stat Hero Card: "23 %". Pagination dot 2.

### 7. Stat Detail — Total Runs (`node: 125:2220`)
Stat Hero Card: "17". Pagination dot 3. No View button.

### 8. Stat Detail — On Piste (`node: 125:2344`)
Stat Hero Card: "74 %". Pagination dot 4.

### 9. Stat Detail — Time on Mountain (`node: 125:2168`)
Stat Hero Card: "3h 23m" (split layout). Breakdown row: Riding / Chilling / Lift time.

### 10. Stat Detail — Riding Streak (`node: 125:2303`)
Stat Hero Card: "3 Days". Pagination dot 6.

### 11. Stat Detail — Average Speed (`node: 125:2262`)
Stat Hero Card: "41.0 km/h". Pagination dot 7. No View button.

### 12. Lifetime Riding Card (`node: 125:2388`)
`#D5F4FC` card listing all 8 stats as rows. Stat rows with icon buttons. Some have inline View buttons. Close button at bottom.

### 13. Scoring System (`node: 125:2500`)
Similar to Lifetime Riding Card. Season Score at top. Stat rows. Progress bar (thin 4×160px divider). Vertical score range indicator.

### 14. Crowns Hub (`node: 125:2607`)
Medal/trophy system. Bronze/Silver/Gold crown cards (110×112px). Points distribution section with progress bars. Season score header.

### 15. Notifications (`file: docs/screen-notifications.html`)
Full-screen mountain photo bg with dark gradient overlay. Standard header (logo + location pill + 3 nav icons). Notification items grouped by TODAY / YESTERDAY / THIS WEEK. Unread items have orange icon bg + orange dot. iOS home indicator strip at bottom. Icons via Lucide.

---

## Assets

### Folder structure
```
assets/
├── logo/
│   └── mountains-logo.svg         ← horizontal lockup, orange asterisk + light wordmark
├── images/
│   ├── bg-map.jpg                 ← full-screen mountain map background
│   └── bg-stats.jpg              ← wide panorama for stat detail screens
└── icons/
    ├── dropdown-arrow.svg         ← filled orange triangle (9×8px, #E04700) — location pill
    ├── profile.svg                ← friends/users icon (18×18px, #4E93AD) — header nav
    └── chat.svg                   ← chat bubbles icon (18×18px, #4E93AD) — header nav
```

### Figma-sourced assets (export before production — URLs expire in 7 days)

| Asset | Description |
|---|---|
| `mountains-logo.svg` | App logo lockup — orange asterisk mark + `#D5ECF6` wordmark, 140×25px |
| `bg-map.jpg` | Full-screen mountain aerial photo — map screen background |
| `bg-stats.jpg` (`image 35`) | Wide mountain panorama — stat detail screen backgrounds |
| `dropdown-arrow.svg` | Filled orange downward triangle — location pill trailing icon |
| `profile.svg` | Friends/users group icon, `#4E93AD` fill, 18×18px — header nav button 1 |
| `chat.svg` | Chat bubbles icon, `#4E93AD` fill, 18×18px — header nav button 2 |
| Mountain silhouettes | Layered SVG vectors (Group 19, Group 20) — map screen |
| Peak pin icons | 24×24px location pin markers — map annotations |
| Map control icons | Zoom, 3D, layers, compass — map sidebar |
| Status bar components | Network, WiFi, Battery, Time — reusable system instances |
| Social logos | Google wordmark, Apple logo — sign up screen |
| Stat row icons | Speed, resort, time, runs, streak, slope (white SVGs on `#4E93AD`) |
| Crown/medal images | Bronze, Silver, Gold (58×58px) — Crowns Hub |
| Ski icon (`skii 1`) | 22×22px white ski figure — On Piste stat row |

### Icon library
**Fluent UI Icons (filled)** — chosen icon library for all HTML screens.
- CDN: `https://code.iconify.design/3/3.1.1/iconify.min.js` (Iconify runtime)
- Usage: `<span class="iconify" data-icon="fluent:{name}-24-filled"></span>`
- Style: 20×20px via CSS, `color: var(--color-text-on-dark)` (#D5F4FC) — always light blue, never white
- No JS initialisation needed — Iconify loads icons on demand
- Icon type system (notification icons):
  - `fluent:...-24-filled` on `#4E93AD` bg → social / friend events
  - `fluent:...-24-filled` on `#E04700` bg (`.milestone`) → personal achievements
- Confirmed icons in use: `fire`, `crown`, `flash`, `star`, `calendar`, `weather-snowflake`, `trophy`

---

## Notes

- App targets **iOS** (iPhone, 393×852px). Android support TBD.
- Font: **Archivo Expanded** — load via Google Fonts or self-hosted.
- All blurred panels: `backdrop-filter: blur(7.5px)`.
- Map is SVG-based, not tile maps.
- Figma MCP asset URLs expire after **7 days** — export and host before production.
- **Text on dark photo backgrounds** always uses solid tokens — never invented opacity values:
  - Primary text → `color-text-on-dark` (`#D5F4FC`)
  - Secondary / subdued text → `color-surface-muted` (`#BBE2EC`)
  - `rgba(213,244,252,0.55)` and similar invented opacities are **forbidden**
- **No tab bar** — navigation is handled by the 3 header icon buttons, consistent across all screens.
- **Type scale rule** — only use sizes defined in the typography table. 11px, 13px, 14px, 15px etc. do not exist in this system.
