//
//  IsPermalink.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML

/// An `isPermalink` attribute indicating whether a value represents a permanent link.
///
/// This attribute is commonly used in RSS and related XML formats to specify
/// whether an identifier should be treated as a permanent URL.
///
/// The boolean value is serialized as a lowercase string (`"true"` or `"false"`),
/// matching common XML and RSS conventions.
public struct IsPermalink: Attribute {

    /// The attribute name as it appears in the rendered output.
    public static let name = "isPermalink"

    /// The string value of the attribute.
    public var value: String?

    /// Creates an `isPermalink` attribute from a boolean value.
    ///
    /// - Parameter value: A Boolean indicating whether the value is a permanent link.
    ///
    /// ## Example
    /// ```swift
    /// IsPermalink(true)
    /// ```
    public init(
        _ value: Bool
    ) {
        self.value = String(value)
    }
}
