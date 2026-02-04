//
//  GridRowEnd.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `grid-row-end` property.
/// Provides typed values for this declaration.
public struct GridRowEnd: Property {
    /// Value options for the `grid-row-end` property.
    public enum Value: Sendable {
        /// Default value. The item will span one row.
        case auto
        /// Specifies the number of rows the item will span.
        case span(Int)
        /// Specifies on which row to end the display of the item.
        case rowLine(Int)

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .span(let value):
                return "span \(value)"
            case .rowLine(let value):
                return String(value)
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies where to end the grid item.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "grid-row-end"
        self.value = value.rawValue
        self.isImportant = false
    }
}
