//
//  Resize.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `resize` property.
/// Provides typed values for this declaration.
public struct Resize: Property {
    /// Value options for the `resize` property.
    public enum Value: String, Sendable {
        /// Default value. The user cannot resize the element.
        case none
        /// The user can resize both the height and width of the element.
        case both
        /// The user can resize the width of the element.
        case horizontal
        /// The user can resize the height of the element.
        case vertical
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Defines if (and how) an element is resizable by the user.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .none
    ) {
        self.name = "resize"
        self.value = value.rawValue
        self.isImportant = false
    }
}
