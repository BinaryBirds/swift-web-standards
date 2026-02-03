//
//  BorderRightColor.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `border-right-color` property.
/// Provides typed values for this declaration.
public struct BorderRightColor: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the color of the right border.
    /// - Parameter value: The property value.
    public init(_ value: CSSColorValue) {
        self.name = "border-right-color"
        self.value = value.rawValue
        self.isImportant = false
    }

    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
