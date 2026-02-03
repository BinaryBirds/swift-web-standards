//
//  Title.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML

/// A `<title>` element providing a human-readable title for a feed or item.
///
/// The `<title>` element may appear in both `<channel>` and `<item>` contexts.
/// It represents the name of the feed or the title of an individual entry.
///
/// The value is wrapped in a CDATA section to allow embedded markup and
/// unescaped characters.
public struct Title: StandardTag, ItemContent, ChannelContent {

    /// The attributes associated with the `<title>` element.
    public var attributes: AttributeStore

    /// The child elements of `<title>`.
    ///
    /// This always contains a single CDATA text node representing the title.
    public var children: [Element]

    /// Creates a `<title>` element with the given content.
    ///
    /// - Parameter value: The title text. This may contain markup or
    ///   characters that would otherwise require escaping.
    ///
    /// ## Example
    /// ```swift
    /// Title("My <b>Awesome</b> Feed")
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
