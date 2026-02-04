//
//  GridColumn.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `grid-column` property.
/// Provides typed values for this declaration.
public struct GridColumn: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for the grid-column-start and the grid-column-end properties.
    /// - Parameters:
    ///   - start: The start value.
    ///   - end: The end value.
    public init(_ start: GridColumnStart.Value, _ end: GridColumnEnd.Value) {
        self.name = "grid-column"
        self.value = start.rawValue + " / " + end.rawValue
        self.isImportant = false
    }
}
