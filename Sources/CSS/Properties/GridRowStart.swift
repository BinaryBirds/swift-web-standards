//
//  GridRowStart.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `grid-row-start` property.
/// Provides typed values for this declaration.
public struct GridRowStart: Property {
    /// Value options for the `grid-row-start` property.
    public enum Value: Sendable {
        /// Default value. The item will be placed by following the flow.
        case auto
        /// Specifies on which row to end the display of the item.
        case rowLine(Int)

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .rowLine(let value):
                return String(value)
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies where to start the grid item.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "grid-row-start"
        self.value = value.rawValue
        self.isImportant = false
    }
}
