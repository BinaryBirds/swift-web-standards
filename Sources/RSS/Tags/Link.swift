//
//  Link.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML

/// A `<link>` element specifying the URL associated with an RSS channel.
///
/// This element provides a URL that points to the website corresponding
/// to the channel’s content, typically the homepage of the site.
///
/// The value should be a fully qualified URL, including the scheme.
public struct Link: StandardTag, ChannelContent {

    /// The attributes associated with the `<link>` element.
    public var attributes: AttributeStore

    /// The child elements of `<link>`.
    ///
    /// This always contains a single text node representing the URL.
    public var children: [Element]

    /// Creates a `<link>` element with the given URL string.
    ///
    /// - Parameter value: A fully qualified URL.
    ///
    /// ## Example
    /// ```swift
    /// Link("https://example.com/")
    /// ```
    public init(
        _ value: String
    ) {
        self.attributes = .init()
        self.children = [
            Text(value)
        ]
    }
}
