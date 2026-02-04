//
//  FontSizeAdjust.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `font-size-adjust` property.
/// Provides typed values for this declaration.
public struct FontSizeAdjust: Property {
    /// Value options for the `font-size-adjust` property.
    public enum Value: Sendable {
        /// Defines the aspect value to use.
        case number(Double)
        /// Default value. No font size adjustment.
        case none
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .number(let value):
                return String(value)
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

    /// Preserves the readability of text when font fallback occurs.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .none
    ) {
        self.name = "font-size-adjust"
        self.value = value.rawValue
        self.isImportant = false
    }
}
