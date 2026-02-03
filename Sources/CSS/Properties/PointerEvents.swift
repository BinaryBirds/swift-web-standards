//
//  PointerEvents.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `pointer-events` property.
/// Provides typed values for this declaration.
public struct PointerEvents: Property {
    /// Value options for the `pointer-events` property.
    public enum Value: String, Sendable {
        /// The element reacts to pointer events, like :hover and click. This is default.
        case auto
        /// The element does not react to pointer events.
        case none
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Defines whether or not an element reacts to pointer events.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "pointer-events"
        self.value = value.rawValue
        self.isImportant = false
    }
}
