//
//  Orphans.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `orphans` property.
/// Provides typed values for this declaration.
public struct Orphans: Property {
    /// Value options for the `orphans` property.
    public enum Value: Sendable {
        /// Sets the minimum number of lines to keep together at the bottom of a page.
        case count(Int)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .count(let value):
                return "\(value)"
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

    /// Sets the minimum number of lines that must be left at the bottom of a page.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "orphans"
        self.value = value.rawValue
        self.isImportant = false
    }
}
