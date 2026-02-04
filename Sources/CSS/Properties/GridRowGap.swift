//
//  GridRowGap.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// Specifies the size of the gap between rows.

/// CSS `grid-row-gap` property.
/// Provides typed values for this declaration.
public struct GridRowGap: Property {
    /// Value options for the `grid-row-gap` property.
    public enum Value: Sendable {
        /// Any legal length value, like px or %. 0 is the default value.
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

    /// Specifies the size of the gap between rows.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "grid-row-gap"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Specifies the size of the gap between rows.
    /// - Parameter value: The property value.
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
