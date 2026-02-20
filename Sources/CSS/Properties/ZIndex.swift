//
//  ZIndex.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `z-index` property.
/// Provides typed values for this declaration.
public struct ZIndex: Property {
    /// Value options for the `z-index` property.
    public enum Value: Sendable {
        /// Sets the stack order equal to its parents. This is default.
        case auto
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
        /// Sets the stack order of the element. Negative numbers are allowed.
        case number(Int)
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the stack order of a positioned element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "z-index"
        self.isImportant = false

        switch value {
        case .auto:
            self.value = "auto"
        case .initial:
            self.value = "initial"
        case .inherit:
            self.value = "inherit"
        case .number(let number):
            self.value = String(number)
        }
    }
}
