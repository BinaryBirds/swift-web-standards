//
//  GridColumnGap.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `grid-column-gap` property.
/// Provides typed values for this declaration.
public struct GridColumnGap: Property {
    /// Value options for the `grid-column-gap` property.
    public enum Value: Sendable {
        /// Any legal length value, like px or %. 0 is the default value. Read about length units.
        case length(UnitRepresentable)

        var rawValue: String {
            switch self {
            case .length(let value):
                return value.rawValue
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the size of the gap between columns.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "grid-column-gap"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Specifies the size of the gap between columns.
    /// - Parameter value: The property value.
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
