//
//  TextIndent.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `text-indent` property.
/// Provides typed values for this declaration.
public struct TextIndent: Property {
    /// Value options for the `text-indent` property.
    public enum Value: Sendable {
        /// Defines a fixed indentation in px, pt, cm, em, etc. Default value is 0. Read about length units.
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
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

    /// Specifies the indentation of the first line in a text-block.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "text-indent"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Specifies the indentation of the first line in a text-block.
    /// - Parameter value: The property value.
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
