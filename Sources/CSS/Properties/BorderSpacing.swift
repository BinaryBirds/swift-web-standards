//
//  BorderSpacing.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `border-spacing` property.
/// Provides typed values for this declaration.
public struct BorderSpacing: Property {
    /// Value options for the `border-spacing` property.
    public enum Value: Sendable {
        /// Specifies the distance between the borders of adjacent cells in px, cm, etc. Negative values are not allowed.
        /// If one value is specified, it defines both the horizontal and vertical spacing between cells.
        /// If two values are specified, the first sets the horizontal spacing and the second sets the vertical spacing.
        case length(UnitRepresentable, UnitRepresentable?)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .length(let horizontal, let vertical):
                return [
                    horizontal.rawValue,
                    vertical?.rawValue,
                ]
                .compactMap { $0 }.joined(separator: " ")
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

    /// Sets the distance between the borders of adjacent cells.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "border-spacing"
        self.value = value.rawValue
        self.isImportant = false
    }
}
