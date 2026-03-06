//
//  BorderBottom.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `border-bottom` property.
/// Provides typed values for this declaration.
public struct BorderBottom: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color.
    /// - Parameter value: The property value.
    public init(_ value: Border.Value) {
        self.name = "border-bottom"
        self.value = value.rawValue
        self.isImportant = false
    }

    public init(
        _ width: BorderWidth.Value,
        _ style: BorderStyle.Value? = nil,
        _ color: CSSColor? = nil
    ) {
        self.init(.values(width, style, color))
    }

    public init(
        _ width: UnitRepresentable,
        _ style: BorderStyle.Value? = nil,
        _ color: CSSColor? = nil
    ) {
        self.init(.length(width), style, color)
    }
}
