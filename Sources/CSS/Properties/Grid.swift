//
//  Grid.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `grid` property.
/// Provides typed values for this declaration.
public struct Grid: Property {
    /// Value options for the `grid` property.
    public enum Value: Sendable {
        /// Default value. No specific sizing of the columns or rows.
        case none
        case values(
            GridTemplateRows.Value,
            GridTemplateColumns.Value,
            GridTemplateAreas.Value,
            GridAutoRows.Value,
            GridAutoColumns.Value,
            GridAutoFlow.Value
        )
        case initial
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .values(
                let tplRow,
                let tplCol,
                let tplAreas,
                let autoRow,
                let autoCol,
                let autoFlow
            ):
                return [
                    tplRow.rawValue + "/" + tplCol.rawValue,
                    tplAreas.rawValue,
                    autoRow.rawValue,
                    autoCol.rawValue,
                    autoFlow.rawValue,
                ]
                .joined(separator: " ")
            case .initial:
                return "initial"
            case .inherit:
                return "inherit"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for the grid-template-rows, grid-template-columns, grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .none
    ) {
        self.name = "grid"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// A shorthand property for the grid-template-rows, grid-template-columns, grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties.
    /// - Parameters:
    ///   - tplRow: The tplRow value.
    ///   - tplCol: The tplCol value.
    ///   - tplAreas: The tplAreas value.
    ///   - autoRow: The autoRow value.
    ///   - autoCol: The autoCol value.
    ///   - autoFlow: The autoFlow value.
    public init(
        _ tplRow: GridTemplateRows.Value,
        _ tplCol: GridTemplateColumns.Value,
        _ tplAreas: GridTemplateAreas.Value,
        _ autoRow: GridAutoRows.Value,
        _ autoCol: GridAutoColumns.Value,
        _ autoFlow: GridAutoFlow.Value
    ) {
        self.init(.values(tplRow, tplCol, tplAreas, autoRow, autoCol, autoFlow))
    }
}
