//
//  FontVariant.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `font-variant` property.
/// Provides typed values for this declaration.
public struct FontVariant: Property {
    /// Value options for the `font-variant` property.
    public enum Value: String, Sendable {
        /// The browser displays a normal font. This is default.
        case normal
        /// The browser displays a small-caps font.
        case smallCaps = "small-caps"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether or not a text should be displayed in a small-caps font.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .normal
    ) {
        self.name = "font-variant"
        self.value = value.rawValue
        self.isImportant = false
    }
}
