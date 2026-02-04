//
//  TextJustify.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `text-justify` property.
/// Provides typed values for this declaration.
public struct TextJustify: Property {
    /// Value options for the `text-justify` property.
    public enum Value: String, Sendable {
        /// The browser determines the justification algorithm    Play it ».
        case auto
        /// Increases/Decreases the space between words    Play it ».
        case interWord = "inter-word"
        /// Increases/Decreases the space between characters    Play it ».
        case interCharacter = "inter-character"
        /// Disables justification methods    Play it ».
        case none
        /// Sets this property to its default value. Read about initial    Play it ».
        case initial
        /// Inherits this property from its parent element. Read about inherit.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the justification method used when text-align is "justify".
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "text-justify"
        self.value = value.rawValue
        self.isImportant = false
    }
}
