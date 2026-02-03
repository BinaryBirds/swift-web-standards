//
//  ColumnRuleWidth.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `column-rule-width` property.
/// Provides typed values for this declaration.
public struct ColumnRuleWidth: Property {
    /// Value options for the `column-rule-width` property.
    public enum Value: Sendable {
        /// Default value. Defines a medium rule.
        case medium
        /// Defines a thin rule.
        case thin
        /// Defines a thick rule.
        case thick
        /// Specifies the width of the rule.
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .medium:
                return "medium"
            case .thin:
                return "thin"
            case .thick:
                return "thick"
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

    /// Specifies the width of the rule between columns.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .medium
    ) {
        self.name = "column-rule-width"
        self.value = value.rawValue
        self.isImportant = false
    }
}
