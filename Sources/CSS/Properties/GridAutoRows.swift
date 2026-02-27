//
//  GridAutoRows.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// Specifies a default row size.

/// CSS `grid-auto-rows` property.
/// Provides typed values for this declaration.
public struct GridAutoRows: Property {
    /// Value options for the `grid-auto-rows` property.
    public enum Value: Sendable {
        /// Default value. The size of the rows is determined by the size of the largest item in the row.
        case auto
        /// Sets the size of each row to depend on the largest item in the row.
        case maxContent
        /// Sets the size of each row to depend on the largest item in the row.
        case minContent
        /// Sets the size of the rows, by using a legal length value.
        case length(UnitRepresentable)
        /// Sets the size of the rows using fractional (`fr`) values.
        case fraction(FractionRepresentable)
        /// Sets multiple row track sizes in a single declaration.
        case tracks([GridTrackSize])

        var rawValue: String {
            switch self {
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
            case .tracks(let values):
                return values.map(\.rawValue).joined(separator: " ")
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies a default row size.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "grid-auto-rows"
        self.value = value.rawValue
        self.isImportant = false
    }
}
