//
//  TransitionProperty.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `transition-property` property.
/// Provides typed values for this declaration.
public struct TransitionProperty: Property {
    /// Value options for the `transition-property` property.
    public enum Value: Sendable {
        /// No property will get a transition effect.
        case none
        /// Default value. All properties will get a transition effect.
        case all
        /// Defines a comma separated list of CSS property names the transition effect is for.
        case properties([String])
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .all:
                return "all"
            case .properties(let value):
                return value.joined(separator: ",")
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

    /// Specifies the name of the CSS property the transition effect is for.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .all
    ) {
        self.name = "transition-property"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Creates a `transition-property` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameter value: The property value.
    public init(_ value: [String]) {
        self.init(.properties(value))
    }
}
