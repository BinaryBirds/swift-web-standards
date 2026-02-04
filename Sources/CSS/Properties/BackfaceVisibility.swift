//
//  BackfaceVisibility.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `backface-visibility` property.
/// Provides typed values for this declaration.
public struct BackfaceVisibility: Property {
    /// Value options for the `backface-visibility` property.
    public enum Value: String, Sendable {
        /// Default value. The backside is visible.
        case visible
        /// The backside is not visible.
        case hidden
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Defines whether or not the back face of an element should be visible when facing the user.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .visible
    ) {
        self.name = "backface-visibility"
        self.value = value.rawValue
        self.isImportant = false
    }
}
