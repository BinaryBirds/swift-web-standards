//
//  ListStyleImage.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `list-style-image` property.
/// Provides typed values for this declaration.
public struct ListStyleImage: Property {
    /// Value options for the `list-style-image` property.
    public enum Value: Sendable {
        /// A normal line height. This is default.
        case none
        /// A number that will be multiplied with the current font-size to set the line height.
        case url(String)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .url(let value):
                return "url('\(value)')"
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

    /// Specifies an image as the list-item marker.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "list-style-image"
        self.value = value.rawValue
        self.isImportant = false
    }
}
