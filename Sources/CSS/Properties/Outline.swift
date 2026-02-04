//
//  Outline.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `outline` property.
/// Provides typed values for this declaration.
public struct Outline: Property {
    /// Value options for the `outline` property.
    public enum Value: Sendable {
        /// outline-width    Specifies the width of outline.
        /// outline-style    Specifies the style of the outline.
        /// outline-color    Specifies the color of the outline.
        case values(OutlineWidth.Value, OutlineStyle.Value, OutlineColor.Value)
        /// Sets this property to its default value. Read about initial.
        case initial
        /// Inherits this property from its parent element. Read about inherit.
        case inherit

        var rawValue: String {
            switch self {
            case .values(let width, let style, let color):
                return [width.rawValue, style.rawValue, color.rawValue]
                    .joined(separator: " ")
            case .initial:
                return "initial"
            case .inherit:
                return "inherit"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for the outline-width, outline-style, and the outline-color properties.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "outline"
        self.value = value.rawValue
        self.isImportant = false
    }
}
