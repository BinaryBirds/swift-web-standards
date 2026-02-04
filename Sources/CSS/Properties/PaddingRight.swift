//
//  PaddingRight.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `padding-right` property.
/// Provides typed values for this declaration.
public struct PaddingRight: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the right padding of an element.
    /// - Parameter value: The property value.
    public init(
        _ value: Padding.Value
    ) {
        self.name = "padding-right"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the right padding of an element.
    /// - Parameter value: The property value.
    public init(
        _ value: UnitRepresentable = 0
    ) {
        self.init(.length(value))
    }
}
