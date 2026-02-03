//
//  OutlineColor.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `outline-color` property.
/// Provides typed values for this declaration.
public struct OutlineColor: Property {
    /// Value options for the `outline-color` property.
    public enum Value: Sendable {
        /// Performs a color inversion. This ensures that the outline is visible, regardless of color background. This is default.
        case invert
        /// Specifies the color of the outline. Look at CSS Color Values for a complete list of possible color values.
        case color(CSSColor)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .invert:
                return "invert"
            case .color(let value):
                return value.rawValue
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

    /// Sets the color of an outline.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .invert
    ) {
        self.name = "outline-color"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Creates a `outline-color` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameter value: The property value.
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
