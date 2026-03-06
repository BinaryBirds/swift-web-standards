//
//  GridRow.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `grid-row` property.
/// Provides typed values for this declaration.
public struct GridRow: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for the grid-row-start and the grid-row-end properties.
    /// - Parameters:
    ///   - start: The start value.
    ///   - end: The end value.
    public init(
        _ start: GridRowStart.Value,
        _ end: GridRowEnd.Value? = nil
    ) {
        self.name = "grid-row"
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
        self.init(.rowLine(start), end.map { .rowLine($0) })
    }
}
