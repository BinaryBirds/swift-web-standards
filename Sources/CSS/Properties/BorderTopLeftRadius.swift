//
//  BorderTopLeftRadius.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `border-top-left-radius` property.
/// Provides typed values for this declaration.
public struct BorderTopLeftRadius: Property {
    /// Value options for the `border-top-left-radius` property.
    public enum Value: Sendable {
        /// Defines the shape of the corners. Default value is 0. Read about length units.
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
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

    /// Defines the radius of the border of the top-left corner.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "border-top-left-radius"
        self.value = value.rawValue
        self.isImportant = false
    }
}
