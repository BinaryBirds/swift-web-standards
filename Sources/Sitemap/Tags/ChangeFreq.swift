//
//  ChangeFreq.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// A `<changefreq>` element describing how frequently the content of a URL is likely to change.
///
/// This element is part of the Sitemap protocol and provides a hint to search engines.
/// about the expected change rate of the referenced URL.
///
/// The value is expressed using a predefined set of frequencies defined by the.
/// Sitemap specification.
public struct ChangeFreq: StandardTag, UrlContent {

    /// The allowed change frequency values for a sitemap URL.
    public enum Frequency: String {

        /// The content is expected to change every time it is accessed.
        case always

        /// The content is expected to change hourly.
        case hourly

        /// The content is expected to change daily.
        case daily

        /// The content is expected to change weekly.
        case weekly

        /// The content is expected to change monthly.
        case monthly

        /// The content is expected to change yearly.
        case yearly

        /// The content is not expected to change.
        case never
    }

    /// The attributes associated with the `<changefreq>` element.
    public var attributes: AttributeStore

    /// The child elements of `<changefreq>`.
    ///
    /// This always contains a single text node representing the frequency value.
    public var children: [Element]

    /// Creates a `<changefreq>` element with the given frequency.
    ///
    /// - Parameter value: The expected change frequency of the URL.
    ///
    /// ## Example.
    /// ```swift.
    /// ChangeFreq(.daily).
    /// ```.
    public init(
        _ value: Frequency
    ) {
        self.attributes = .init()
        self.children = [
            Text(value.rawValue)
        ]
    }
}
