//
//  FontStyle.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `font-style` property.
/// Provides typed values for this declaration.
public struct FontStyle: Property {
    /// Value options for the `font-style` property.
    public enum Value: String, Sendable {
        /// The browser displays a normal font style. This is default.
        case normal
        /// The browser displays an italic font style.
        case italic
        /// The browser displays an oblique font style.
        case oblique
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the font style for text.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .normal
    ) {
        self.name = "font-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
