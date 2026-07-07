import SwiftUI

/// Bespoke palette for Thermolog - Bedroom Temperature Log — warm ember.
enum Theme {
    static let accent = Color(red: 0.85, green: 0.4, blue: 0.2)
    static let background = Color(red: 0.06, green: 0.06, blue: 0.08)
    static let cardBackground = Color(red: 0.11, green: 0.11, blue: 0.13)
    static let textPrimary = Color.white.opacity(0.92)
    static let textSecondary = Color.white.opacity(0.55)

    static let titleFont = Font.system(.largeTitle, design: .rounded).weight(.bold)
    static let headlineFont = Font.system(.headline, design: .rounded)
    static let bodyFont = Font.system(.body, design: .rounded)
    static let captionFont = Font.system(.caption, design: .rounded)

    static var cardCornerRadius: CGFloat { 16 }
}
