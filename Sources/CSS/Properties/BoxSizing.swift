//
//  BoxSizing.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `box-sizing` property.
/// Provides typed values for this declaration.
public struct BoxSizing: Property {
    /// Value options for the `box-sizing` property.
    public enum Value: String, Sendable {
        /// Default. The width and height properties (and min/max properties) includes only the content. Border and padding are not included.
        case contentBox = "content-box"
        /// The width and height properties (and min/max properties) includes content, padding and border.
        case borderBox = "border-box"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Defines how the width and height of an element are calculated: should they include padding and borders, or not.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .contentBox
    ) {
        self.name = "box-sizing"
        self.value = value.rawValue
        self.isImportant = false
    }
}
