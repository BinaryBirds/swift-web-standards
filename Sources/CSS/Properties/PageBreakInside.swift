//
//  PageBreakInside.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `page-break-inside` property.
/// Provides typed values for this declaration.
public struct PageBreakInside: Property {
    /// Value options for the `page-break-inside` property.
    public enum Value: String, Sendable {
        /// Default. Automatic page-breaks.
        case auto
        /// Avoid page-break inside the element (if possible).
        case avoid
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the page-break behavior inside an element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "page-break-inside"
        self.value = value.rawValue
        self.isImportant = false
    }
}
