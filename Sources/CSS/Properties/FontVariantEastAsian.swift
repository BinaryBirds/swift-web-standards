//
//  FontVariantEastAsian.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `font-variant-east-asian` property.
/// Provides typed values for this declaration.
public struct FontVariantEastAsian: Property {
    /// Value options for the `font-variant-east-asian` property.
    public enum Value: String, Sendable {
        case normal
        case ruby
        case jis78
        case jis83
        case jis90
        case jis04
        case simplified
        case traditional
        case fullWidth = "full-width"
        case proportionalWidth = "proportional-width"
        case rubyFullWidthJis83 = "ruby full-width jis83"
        case inherit
        case initial
        case revert
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese).
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .normal
    ) {
        self.name = "font-variant-east-asian"
        self.value = value.rawValue
        self.isImportant = false
    }
}
