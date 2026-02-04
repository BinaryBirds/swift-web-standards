//
//  TransformStyle.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `transform-style` property.
/// Provides typed values for this declaration.
public struct TransformStyle: Property {
    /// Value options for the `transform-style` property.
    public enum Value: String, Sendable {
        /// Specifies that child elements will NOT preserve its 3D position. This is default.
        case flat
        /// Specifies that child elements will preserve its 3D position.
        case preserve3d = "preserve-3d"
        /// Sets this property to its default value. Read about initial.
        case initial
        /// Inherits this property from its parent element. Read about inherit.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies how nested elements are rendered in 3D space.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .flat
    ) {
        self.name = "transform-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
