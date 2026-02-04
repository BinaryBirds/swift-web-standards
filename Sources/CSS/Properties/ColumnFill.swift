//
//  ColumnFill.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `column-fill` property.
/// Provides typed values for this declaration.
public struct ColumnFill: Property {
    /// Value options for the `column-fill` property.
    public enum Value: String, Sendable {
        /// Default value. Fills each column with about the same amount of content, but will not allow the columns to be taller than the height.
        /// (so, columns might be shorter than the height as the browser distributes the content evenly horizontally).
        case balance
        /// Fills each column until it reaches the height, and do this until it runs out of content.
        /// (so, this value will not necessarily fill all the columns nor fill them evenly).
        case auto
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies how to fill columns, balanced or not.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .balance
    ) {
        self.name = "column-fill"
        self.value = value.rawValue
        self.isImportant = false
    }
}
