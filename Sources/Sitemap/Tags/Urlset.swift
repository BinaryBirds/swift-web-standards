import SGML

/// A `<urlset>` element representing the root of a sitemap document.
///
/// A sitemap `<urlset>` contains one or more `<url>` elements and declares.
/// the XML namespace used by the Sitemap protocol.
///
/// If no namespace is explicitly provided, the standard sitemap namespace.
/// (`http://www.sitemaps.org/schemas/sitemap/0.9`) is used by default.
public struct Urlset: StandardTag {

    /// The attributes associated with the `<urlset>` element.
    public var attributes: AttributeStore

    /// The child elements of `<urlset>`.
    ///
    /// These must be `<url>` elements.
    public var children: [Element]

    /// Creates a `<urlset>` element with the given URLs and optional XML namespace.
    ///
    /// - Parameters:.
    ///   - xmlns: An optional XML namespace URI. If `nil`, the standard sitemap.
    ///     namespace is used.
    ///   - children: The `<url>` elements contained in this sitemap.
    ///
    /// ## Example.
    /// ```swift.
    /// Urlset {.
    ///     Url {.
    ///         Loc("https://example.com/").
    ///     }.
    /// }.
    /// ```.
    public init(
        xmlns: String? = nil,
        children: [Url]
    ) {
        self.attributes = .init()
        self.children = children

        if let xmlns {
            self = addAttribute(Xmlns(xmlns))
        }
        else {
            self = addAttribute(Xmlns())
        }
    }

    /// Creates a `<urlset>` element using a result builder.
    ///
    /// This initializer enables a declarative syntax for constructing sitemaps.
    ///
    /// - Parameters:.
    ///   - xmlns: An optional XML namespace URI. If `nil`, the standard sitemap.
    ///     namespace is used.
    ///   - block: A builder that produces the `<url>` elements of the sitemap.
    public init(
        xmlns: String? = nil,
        @Builder<Url> _ block: () -> [Url]
    ) {
        self.init(
            xmlns: xmlns,
            children: block()
        )
    }
}
