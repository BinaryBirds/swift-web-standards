import SGML

/// A `<loc>` element specifying the URL of a sitemap entry.
///
/// This element is required by the Sitemap protocol and defines the
/// canonical URL of the referenced resource.
///
/// The value should be a fully qualified URL, including the scheme
/// (for example, `https://example.com/page`).
public struct Loc: StandardTag, UrlContent {

    /// The attributes associated with the `<loc>` element.
    public var attributes: AttributeStore

    /// The child elements of `<loc>`.
    ///
    /// This always contains a single text node representing the URL.
    public var children: [Element]

    /// Creates a `<loc>` element with the given URL string.
    ///
    /// - Parameter value: A fully qualified URL string.
    ///
    /// ## Example
    /// ```swift
    /// Loc("https://example.com/")
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
