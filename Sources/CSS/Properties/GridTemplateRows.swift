//
//  GridTemplateRows.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `grid-template-rows` property.
/// Provides typed values for this declaration.
public struct GridTemplateRows: Property {
    /// Value options for the `grid-template-rows` property.
    public enum Value: Sendable {
        /// No size is set. Rows are created if needed.
        case none
        /// The size of the rows is determined by the size of the container, and on the size of the content of the items in the row.
        case auto
        /// Sets the size of each row to depend on the largest item in the row.
        case maxContent
        /// Sets the size of each row to depend on the smallest item in the row.
        case minContent
        /// Sets the size of the rows, by using a legal length value.
        case length(UnitRepresentable)
        /// Sets the size of the rows using fractional (`fr`) values.
        case fraction(FractionRepresentable)
        /// Repeats a track-size value in a pattern.
        case `repeat`(Int, GridTrackSize)

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
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the size of the rows in a grid layout.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .none
    ) {
        self.name = "grid-template-rows"
        self.value = value.rawValue
        self.isImportant = false
    }
}
