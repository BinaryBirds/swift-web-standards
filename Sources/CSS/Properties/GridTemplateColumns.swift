//
//  GridTemplateColumns.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `grid-template-columns` property.
/// Provides typed values for this declaration.
public struct GridTemplateColumns: Property {
    /// Value options for the `grid-template-columns` property.
    public enum Value: Sendable {
        /// Default value. Columns are created if needed.
        case none
        /// The size of the columns is determined by the size of the container and on the size of the content of the items in the column.
        case auto
        /// Sets the size of each column to depend on the largest item in the column.
        case maxContent
        /// Sets the size of each column to depend on the smallest item in the column.
        case minContent
        /// Sets the size of the columns, by using a legal length value.
        case length(UnitRepresentable)
        /// Sets the size of the columns using fractional (`fr`) values.
        case fraction(FractionRepresentable)
        /// Repeats a track-size value in a pattern.
        case `repeat`(Int, GridTrackSize)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .auto:
                return "auto"
            case .maxContent:
                return "max-content"
            case .minContent:
                return "min-content"
            case .length(let value):
                return value.rawValue
            case .fraction(let value):
                return value.rawValue
            case .repeat(let count, let value):
                return "repeat(\(count), \(value.rawValue))"
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

    /// Specifies the size of the columns, and how many columns in a grid layout.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .none
    ) {
        self.name = "grid-template-columns"
        self.value = value.rawValue
        self.isImportant = false
    }
}
