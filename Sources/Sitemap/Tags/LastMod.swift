import SGML

/// A `<lastmod>` element indicating the last modification date of a URL.
///
/// This element is part of the Sitemap protocol and provides search engines
/// with information about when the content at a given URL was last updated.
///
/// The value should be a date string formatted according to the Sitemap
/// specification (typically ISO 8601).
public struct LastMod: StandardTag, UrlContent {

    /// The attributes associated with the `<lastmod>` element.
    public var attributes: AttributeStore

    /// The child elements of `<lastmod>`.
    ///
    /// This always contains a single text node representing the date value.
    public var children: [Element]

    /// Creates a `<lastmod>` element with the given date string.
    ///
    /// - Parameter value: A string representing the last modification date,
    ///   typically formatted as an ISO 8601 date (for example, `"2016-09-01"`).
    ///
    /// ## Example
    /// ```swift
    /// LastMod("2016-09-01")
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
