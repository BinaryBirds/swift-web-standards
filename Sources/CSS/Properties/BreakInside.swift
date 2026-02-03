//
//  BreakInside.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `break-inside` property.
/// Provides typed values for this declaration.
public struct BreakInside: Property {
    /// Value options for the `break-inside` property.
    public enum Value: String, Sendable {
        /// Default. Automatic page/column/region break inside the element.
        case auto
        /// Avoid a page/column/region break inside the element.
        case avoid
        /// Avoid a column-break inside the element.
        case avoidColumn = "avoid-column"
        /// Avoid a page-break inside the element.
        case avoidPage = "avoid-page"
        /// Avoid a region-break inside the element.
        case avoidRegion = "avoid-region"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether or not a page-, column-, or region-break should occur inside the specified element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "break-inside"
        self.value = value.rawValue
        self.isImportant = false
    }
}
