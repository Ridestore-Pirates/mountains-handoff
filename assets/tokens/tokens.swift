// Generated from design.md — do not edit manually
import SwiftUI

// MARK: - Hex color initialiser (SwiftUI doesn't include one)
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r = Double((int >> 16) & 0xFF) / 255
        let g = Double((int >>  8) & 0xFF) / 255
        let b = Double( int        & 0xFF) / 255
        self.init(red: r, green: g, blue: b)
    }
}

// MARK: - Colors
extension Color {
    static let appPrimary      = Color(hex: "#E04700")  // CTA, active states, accent
    static let appSurface      = Color(hex: "#D5F4FC")  // Cards, frosted panels, Close btn
    static let appSurfaceMuted = Color(hex: "#BBE2EC")  // Inputs, secondary btns
    static let appIconBg       = Color(hex: "#4E93AD")  // Stat row icon button backgrounds
    static let appTextPrimary  = Color(hex: "#080808")  // Headings, body
    static let appTextOnDark   = Color(hex: "#D5F4FC")  // Text on dark backgrounds
    static let appLink         = Color(hex: "#E04700")  // Inline links
    static let appErrorLink    = Color(hex: "#EA4335")  // Legal inline links
    // appTextSecondary: rgba(8,8,8,0.5) — use Color.appTextPrimary.opacity(0.5)
}

// MARK: - Typography roles
struct AppTypography {
    let size:       CGFloat
    let weight:     Font.Weight
    let lineHeight: CGFloat

    static let displayXl = AppTypography(size: 38, weight: .bold,    lineHeight: 1.25)
    static let displayLg = AppTypography(size: 18, weight: .bold,    lineHeight: 1.25)
    static let headingLg = AppTypography(size: 20, weight: .bold,    lineHeight: 1.25)
    static let headingMd = AppTypography(size: 18, weight: .bold,    lineHeight: 1.25)
    static let bodyMd    = AppTypography(size: 16, weight: .regular, lineHeight: 1.25)
    static let bodySm    = AppTypography(size: 12, weight: .regular, lineHeight: 1.25)
    static let labelSm   = AppTypography(size: 12, weight: .bold,    lineHeight: 1.0)
    static let labelXs   = AppTypography(size: 10, weight: .bold,    lineHeight: 1.25)
    static let ctaMd     = AppTypography(size: 17, weight: .bold,    lineHeight: 1.25)
    static let ctaLg     = AppTypography(size: 16, weight: .bold,    lineHeight: 1.25)
    static let legalSm   = AppTypography(size: 12, weight: .regular, lineHeight: 1.6)
    static let caption   = AppTypography(size: 10, weight: .regular, lineHeight: 1.25)
}

// MARK: - Spacing (4px grid)
struct AppSpacing {
    static let space1:  CGFloat = 4
    static let space2:  CGFloat = 8
    static let space3:  CGFloat = 12
    static let space4:  CGFloat = 16
    static let space5:  CGFloat = 20
    static let space6:  CGFloat = 24
    static let space7:  CGFloat = 28
    static let space8:  CGFloat = 32
    static let space9:  CGFloat = 36
    static let space10: CGFloat = 40
    static let space11: CGFloat = 44
    static let space12: CGFloat = 48
    static let space14: CGFloat = 56
}

// MARK: - Border radius
struct AppRadius {
    static let sm: CGFloat = 8   // Buttons, inputs, cards, icon buttons
    static let md: CGFloat = 28  // Pills, bottom nav
    static let lg: CGFloat = 48  // Avatar badges, user markers
}
