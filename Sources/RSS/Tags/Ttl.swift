//
//  Ttl.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML

/// A `<ttl>` element specifying how long an RSS feed may be cached.
///
/// The `<ttl>` (time to live) element indicates the number of minutes that
/// a channel may be cached before it should be refreshed from the source.
///
/// This value is used by aggregators to determine how frequently they should
/// check for updates.
public struct Ttl: StandardTag, ChannelContent {

    /// The attributes associated with the `<ttl>` element.
    public var attributes: AttributeStore

    /// The child elements of `<ttl>`.
    ///
    /// This always contains a single text node representing the TTL value in minutes.
    public var children: [Element]

    /// Creates a `<ttl>` element with the given time-to-live value.
    ///
    /// - Parameter value: The number of minutes a channel may be cached.
    ///
    /// ## Example
    /// ```swift
    /// Ttl(60)
    /// ```
    public init(
        _ value: Int
    ) {
        self.attributes = .init()
        self.children = [
            Text(String(value))
        ]
    }
}
