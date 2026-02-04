//
//  Mask.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `mask` property.
/// Provides typed values for this declaration.
public struct Mask: Property {
    /// Value options for the `mask` property.
    public enum Value: Sendable {
        /// Custom mask value.
        case value(String)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .value(let value):
                return value
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

    /// Hides an element by masking or clipping the image at specific places.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "mask"
        self.value = value.rawValue
        self.isImportant = false
    }
}
