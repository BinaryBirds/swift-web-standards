//
//  ColumnRuleColor.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `column-rule-color` property.
/// Provides typed values for this declaration.
public struct ColumnRuleColor: Property {
    /// Value options for the `column-rule-color` property.
    public enum Value: Sendable {
        /// Specifies the color of the rule.
        case color(CSSColor)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .color(let value):
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

    /// Specifies the color of the rule between columns.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "column-rule-color"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Specifies the color of the rule between columns.
    /// - Parameter value: The property value.
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
