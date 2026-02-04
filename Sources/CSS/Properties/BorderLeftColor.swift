//
//  BorderLeftColor.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `border-left-color` property.
/// Provides typed values for this declaration.
public struct BorderLeftColor: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the color of the left border.
    /// - Parameter value: The property value.
    public init(_ value: CSSColorValue) {
        self.name = "border-left-color"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the color of the left border.
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
