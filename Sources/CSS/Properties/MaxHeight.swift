//
//  MaxHeight.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `max-height` property.
/// Provides typed values for this declaration.
public struct MaxHeight: Property {
    /// Value options for the `max-height` property.
    public enum Value: Sendable {
        /// No maximum height. This is default.
        case none
        /// Defines the maximum height in px, cm, etc. Read about length units.
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
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

    /// Sets the maximum height of an element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .none
    ) {
        self.name = "max-height"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the maximum height of an element.
    /// - Parameter value: The property value.
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
