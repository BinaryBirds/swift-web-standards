//
//  BackdropFilter.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 25.

/// CSS `backdrop-filter` property.
/// Provides typed values for this declaration.
public struct BackdropFilter: Property {

    /// Value options for the `backdrop-filter` property.
    public enum Value: Sendable {
        /// Default value. Specifies no effects.
        case none
        /// Applies a blur effect to the backdrop.
        case blur(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .blur(let value):
                return "blur(\(value.rawValue))"
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

    /// Applies graphical effects such as blurring to the area behind an element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .none
    ) {
        self.name = "backdrop-filter"
        self.value = value.rawValue
        self.isImportant = false
    }

    // TODO: add support for the remaining backdrop-filter functions:
    // - brightness()
    // - contrast()
    // - drop-shadow()
    // - grayscale()
    // - hue-rotate()
    // - invert()
    // - opacity()
    // - saturate()
    // - sepia()
    // - url()
    // - multiple functions in a single declaration
}
