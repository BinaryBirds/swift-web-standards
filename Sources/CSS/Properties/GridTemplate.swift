//
//  GridTemplate.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `grid-template` property.
/// Provides typed values for this declaration.
public struct GridTemplate: Property {
    /// Value options for the `grid-template` property.
    public enum Value: Sendable {
        /// Default value. No specific sizing of the columns or rows.
        case none
        /// grid-template rows / grid-template-columns    Specifies the size(s) of the columns and rows    Play it ».
        case values(GridTemplateRows.Value, GridTemplateColumns.Value)
        /// grid-template-areas    Specifies the grid layout using named items    Play it ».
        case areas(GridTemplateAreas.Value)
        /// Sets this property to its default value. Read about initial.
        case initial
        /// Inherits this property from its parent element. Read about inherit.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .values(let rows, let cols):
                return rows.rawValue + " / " + cols.rawValue
            case .areas(let value):
                return value.rawValue
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

    /// A shorthand property for the grid-template-rows, grid-template-columns and grid-areas properties.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .none
    ) {
        self.name = "grid-template"
        self.value = value.rawValue
        self.isImportant = false
    }
}
