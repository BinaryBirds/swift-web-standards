//
//  LineBreak.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `line-break` property.
/// Provides typed values for this declaration.
public struct LineBreak: Property {
    /// Value options for the `line-break` property.
    public enum Value: String, Sendable {
        case auto
        case loose
        case normal
        case strict
        case anywhere
        case inherit
        case initial
        case revert
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies how/if to break lines.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "line-break"
        self.value = value.rawValue
        self.isImportant = false
    }
}
