//
//  BreakAfter.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `break-after` property.
/// Provides typed values for this declaration.
public struct BreakAfter: Property {
    /// Value options for the `break-after` property.
    public enum Value: String, Sendable {
        /// Default. Automatic page/column/region break after the element.
        case auto
        /// Always insert a page-break right after the principal box.
        case all
        /// Always insert a page-break after the element.
        case always
        /// Avoid a page/column/region break after the element.
        case avoid
        /// Avoid a column-break after the element.
        case avoidColumn = "avoid-column"
        /// Avoid a page-break after the element.
        case avoidPage = "avoid-page"
        /// Avoid a region-break after the element.
        case avoidRegion = "avoid-region"
        /// Always insert a column-break after the element.
        case column
        /// Insert one or two page-breaks after the element so that the next page is formatted as a left page.
        case left
        /// Always insert a page-break after the element.
        case page
        /// Insert one or two page-breaks after the principal box so that the next page is formatted as a recto page.
        case recto
        /// Always insert a region-break after the element.
        case region
        /// Insert one or two page-breaks after the element so that the next page is formatted as a right page.
        case right
        /// Insert one or two page-breaks after the principal box so that the next page is formatted as a verso page.
        case verso
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether or not a page-, column-, or region-break should occur after the specified element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "break-after"
        self.value = value.rawValue
        self.isImportant = false
    }
}
