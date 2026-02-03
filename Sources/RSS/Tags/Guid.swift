//
//  Guid.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML

/// A `<guid>` element providing a globally unique identifier for an RSS item.
///
/// The `<guid>` element is used to uniquely identify an `<item>` within an RSS feed.
/// It may optionally declare whether the identifier is a permalink.
///
/// When `isPermalink` is provided, the corresponding `isPermalink` attribute
/// is added to the element.
public struct Guid: StandardTag, ItemContent {

    /// The attributes associated with the `<guid>` element.
    public var attributes: AttributeStore

    /// The child elements of `<guid>`.
    ///
    /// This always contains a single text node representing the identifier value.
    public var children: [Element]

    /// Creates a `<guid>` element with the given identifier.
    ///
    /// - Parameters:
    ///   - value: A string representing the globally unique identifier.
    ///   - isPermalink: An optional Boolean indicating whether the identifier
    ///     should be treated as a permanent link.
    ///
    /// ## Example
    /// ```swift
    /// Guid("https://example.com/post/123", isPermalink: true)
    /// Guid("post-123")
    /// ```
    public init(
        _ value: String,
        isPermalink: Bool? = nil
    ) {
        self.attributes = .init()
        self.children = [
            Text(value)
        ]

        if let isPermalink {
            self = addAttribute(IsPermalink(isPermalink))
        }
    }
}
