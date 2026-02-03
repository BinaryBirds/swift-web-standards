//
//  BackgroundClip.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `background-clip` property.
/// Provides typed values for this declaration.
public struct BackgroundClip: Property {
    /// Value options for the `background-clip` property.
    public enum Value: String, Sendable {
        /// Default value. The background extends behind the border.
        case borderBox = "border-box"
        /// The background extends to the inside edge of the border.
        case paddingBox = "padding-box"
        /// The background extends to the edge of the content box.
        case contentBox = "content-box"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Defines how far the background (color or image) should extend within an element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .borderBox
    ) {
        self.name = "background-clip"
        self.value = value.rawValue
        self.isImportant = false
    }
}
