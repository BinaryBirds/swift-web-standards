//
//  GridTemplateAreas.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `grid-template-areas` property.
/// Provides typed values for this declaration.
public struct GridTemplateAreas: Property {
    /// Value options for the `grid-template-areas` property.
    public enum Value: Sendable {
        /// Default value. No named grid areas.
        case none
        /// A sequence that specifies how each columns and row should display.
        case names([String])

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .names(let values):
                return values.map { "'" + $0 + "'" }.joined(separator: " ")
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies how to display columns and rows, using named grid items.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .none
    ) {
        self.name = "grid-template-areas"
        self.value = value.rawValue
        self.isImportant = false
    }
}
