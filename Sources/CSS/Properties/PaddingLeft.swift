//
//  PaddingLeft.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `padding-left` property.
/// Provides typed values for this declaration.
public struct PaddingLeft: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the left padding of an element.
    /// - Parameter value: The property value.
    public init(
        _ value: Padding.Value
    ) {
        self.name = "padding-left"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the left padding of an element.
    /// - Parameter value: The property value.
    public init(
        _ value: UnitRepresentable = 0
    ) {
        self.init(.length(value))
    }
}
