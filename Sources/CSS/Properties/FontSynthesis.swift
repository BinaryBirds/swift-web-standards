//
//  FontSynthesis.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `font-synthesis` property.
/// Provides typed values for this declaration.
public struct FontSynthesis: Property {
    /// Value options for the `font-synthesis` property.
    public enum Value: String, Sendable {
        case none
        case weight
        case style
        case weightStyle = "weight style"
        case inherit
        case initial
        case revert
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Controls which missing typefaces (bold or italic) may be synthesized by the browser.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .none
    ) {
        self.name = "font-synthesis"
        self.value = value.rawValue
        self.isImportant = false
    }
}
