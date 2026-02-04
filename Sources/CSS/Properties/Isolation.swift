//
//  Isolation.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `isolation` property.
/// Provides typed values for this declaration.
public struct Isolation: Property {
    /// Value options for the `isolation` property.
    public enum Value: String, Sendable {
        /// Default. A new stacking context is created only if one of the properties applied to the element requires it.
        case auto
        /// A new stacking context must be created.
        case isolate
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Defines whether an element must create a new stacking content.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "isolation"
        self.value = value.rawValue
        self.isImportant = false
    }
}
