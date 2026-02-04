//
//  MarginTop.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `margin-top` property.
/// Provides typed values for this declaration.
public struct MarginTop: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Creates a `margin-top` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameter value: The property value.
    public init(
        _ value: Margin.Value
    ) {
        self.name = "margin-top"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Creates a `margin-top` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameter value: The property value.
    public init(
        _ value: UnitRepresentable = 0
    ) {
        self.init(.length(value))
    }
}
