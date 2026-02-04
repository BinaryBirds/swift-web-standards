//
//  TextTransform.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `text-transform` property.
/// Provides typed values for this declaration.
public struct TextTransform: Property {
    /// Value options for the `text-transform` property.
    public enum Value: String, Sendable {
        /// No capitalization. The text renders as it is. This is default    Play it ».
        case none
        /// Transforms the first character of each word to uppercase    Play it ».
        case capitalize
        /// Transforms all characters to uppercase    Play it ».
        case uppercase
        /// Transforms all characters to lowercase    Play it ».
        case lowercase
        /// Sets this property to its default value. Read about initial    Play it ».
        case initial
        /// Inherits this property from its parent element. Read about inherit.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Controls the capitalization of text.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "text-transform"
        self.value = value.rawValue
        self.isImportant = false
    }
}
