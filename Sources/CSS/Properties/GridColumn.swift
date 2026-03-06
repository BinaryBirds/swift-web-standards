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
    public init(
        _ start: GridColumnStart.Value,
        _ end: GridColumnEnd.Value? = nil
    ) {
        self.name = "grid-column"
        var value = start.rawValue
        if let end {
            value = value + " / " + end.rawValue
        }
        self.value = value
        self.isImportant = false
    }

    public init(
        _ start: Int,
        _ end: Int? = nil
    ) {
        self.init(.columnLine(start), end.map { .columnLine($0) })
    }
}
