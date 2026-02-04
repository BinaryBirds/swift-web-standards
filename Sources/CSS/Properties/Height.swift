//
//  Height.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `height` property.
/// Provides typed values for this declaration.
public struct Height: Property {
    /// Value options for the `height` property.
    public enum Value: Sendable {
        /// The browser calculates the height. This is default.
        case auto
        /// Defines the height in px, cm, etc.
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .length(let value):
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

    /// Sets the height of an element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "height"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the height of an element.
    /// - Parameter value: The property value.
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
