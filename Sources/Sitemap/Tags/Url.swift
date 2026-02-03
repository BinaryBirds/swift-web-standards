//
//  Url.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// A `<url>` element representing a single URL entry in a sitemap.
///
/// A `<url>` groups together metadata about a specific URL, such as its.
/// location, last modification date, change frequency, and priority.
///
/// Valid child elements are constrained to types conforming to `UrlContent`,.
/// ensuring only sitemap-compatible elements may appear inside a `<url>`.
public struct Url: StandardTag {

    /// The attributes associated with the `<url>` element.
    public var attributes: AttributeStore

    /// The child elements of `<url>`.
    public var children: [Element]

    /// Creates a `<url>` element with the given child elements.
    ///
    /// - Parameter children: The sitemap elements contained within this `<url>`.
    public init(
        children: [UrlContent]
    ) {
        self.attributes = .init()
        self.children = children
    }

    /// Creates a `<url>` element using a result builder.
    ///
    /// This initializer enables a declarative syntax for constructing sitemap URLs.
    ///
    /// ## Example.
    /// ```swift.
    /// Url {.
    ///     Loc("https://example.com/").
    ///     LastMod("2024-01-01").
    ///     ChangeFreq(.monthly).
    ///     Priority(0.8).
    /// }.
    /// ```.
    public init(
        @Builder<UrlContent> _ block: () -> [UrlContent]
    ) {
        self.init(children: block())
    }
}
