//
//  LastBuildDate.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML

/// A `<lastBuildDate>` element indicating when an RSS feed was last generated.
///
/// This element specifies the most recent date and time at which the content
/// of the channel was created or updated.
///
/// The value should be a date string formatted according to the RSS specification,
/// typically using RFC 822 / RFC 1123 date formats.
public struct LastBuildDate: StandardTag, ChannelContent {

    /// The element name as it appears in the rendered output.
    public static let name = "lastBuildDate"

    /// The attributes associated with the `<lastBuildDate>` element.
    public var attributes: AttributeStore

    /// The child elements of `<lastBuildDate>`.
    ///
    /// This always contains a single text node representing the date value.
    public var children: [Element]

    /// Creates a `<lastBuildDate>` element with the given date string.
    ///
    /// - Parameter value: A date string representing when the feed was last built.
    ///
    /// ## Example
    /// ```swift
    /// LastBuildDate("Wed, 02 Oct 2002 13:00:00 GMT")
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
