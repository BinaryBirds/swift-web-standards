//
//  UnicodeBidi.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `unicode-bidi` property.
/// Provides typed values for this declaration.
public struct UnicodeBidi: Property {
    /// Value options for the `unicode-bidi` property.
    public enum Value: String, Sendable {
        /// The element does not open an additional level of embedding. This is default.
        case normal
        /// For inline elements, this value opens an additional level of embedding.
        case embed
        /// For inline elements, this creates an override. For block elements, this creates an override for inline-level descendants not within another block element.
        case bidiOverride = "bidi-override"
        /// The element is isolated from its siblings.
        case isolate
        case isolateOverride = "isolate-override"
        case plaintext
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Used together with the direction property to set or return whether the text should be overridden to support multiple languages in the same document.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .normal
    ) {
        self.name = "unicode-bidi"
        self.value = value.rawValue
        self.isImportant = false
    }
}
