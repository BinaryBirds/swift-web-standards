//
//  OverflowWrap.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `overflow-wrap` property.
/// Provides typed values for this declaration.
public struct OverflowWrap: Property {
    /// Value options for the `overflow-wrap` property.
    public enum Value: String, Sendable {
        case normal
        case breakWord = "break-word"
        case anywhere
        case inherit
        case initial
        case revert
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether or not the browser may break lines within words in order to prevent overflow (when a string is too long to fit its containing box).
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "overflow-wrap"
        self.value = value.rawValue
        self.isImportant = false
    }
}
