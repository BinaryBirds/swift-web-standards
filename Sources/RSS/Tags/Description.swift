//
//  Description.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML

/// A `<description>` element providing human-readable content for an RSS feed or item.
///
/// The `<description>` element is used in both `<channel>` and `<item>` contexts
/// to supply a textual summary or description.
///
/// The value is wrapped in a CDATA section to allow embedded markup and
/// unescaped characters.
public struct Description: StandardTag, ItemContent, ChannelContent {

    /// The attributes associated with the `<description>` element.
    public var attributes: AttributeStore

    /// The child elements of `<description>`.
    ///
    /// This always contains a single CDATA text node.
    public var children: [Element]

    /// Creates a `<description>` element with the given content.
    ///
    /// - Parameter value: The description text. This may contain markup or
    ///   characters that would otherwise require escaping.
    ///
    /// ## Example
    /// ```swift
    /// Description("This is <b>rich</b> content.")
    /// ```
    public init(
        _ value: String
    ) {
        self.attributes = .init()
        self.children = [
            CDataText(value)
        ]
    }
}
