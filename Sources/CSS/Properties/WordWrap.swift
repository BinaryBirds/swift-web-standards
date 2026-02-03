//
//  WordWrap.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `word-wrap` property.
/// Provides typed values for this declaration.
public struct WordWrap: Property {
    /// Value options for the `word-wrap` property.
    public enum Value: String, Sendable {
        /// Break words only at allowed break points.
        case normal
        /// Allows unbreakable words to be broken.
        case breakWord = "break-word"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Allows long, unbreakable words to be broken and wrap to the next line.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .normal
    ) {
        self.name = "word-wrap"
        self.value = value.rawValue
        self.isImportant = false
    }
}
