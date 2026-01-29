import SGML

/// An `<rss>` element representing the root of an RSS 2.0 feed.
///
/// The `<rss>` element acts as the top-level container for one or more
/// `<channel>` elements and declares the RSS specification version.
///
/// If no version is explicitly provided, version `"2.0"` is used by default,
/// in accordance with the RSS 2.0 specification.
///
/// - SeeAlso: https://validator.w3.org/feed/docs/rss2.html
public struct Rss: StandardTag {

    /// The attributes associated with the `<rss>` element.
    public var attributes: AttributeStore

    /// The child elements of `<rss>`.
    ///
    /// These must be `<channel>` elements.
    public var children: [Element]

    /// Creates an `<rss>` element with the given channels and optional version.
    ///
    /// - Parameters:
    ///   - version: The RSS version string. If `nil`, the default version (`"2.0"`)
    ///     is used.
    ///   - channels: The `<channel>` elements contained in the feed.
    ///
    /// ## Example
    /// ```swift
    /// Rss {
    ///     Channel {
    ///         Title("Example Feed")
    ///     }
    /// }
    /// ```
    public init(
        version: String? = nil,
        channels: [Channel]
    ) {
        self.attributes = .init()
        self.children = channels

        if let version {
            self = addAttribute(Version(version))
        }
        else {
            self = addAttribute(Version())
        }
    }

    /// Creates an `<rss>` element using a result builder.
    ///
    /// This initializer enables a declarative syntax for constructing RSS feeds.
    ///
    /// - Parameters:
    ///   - version: The RSS version string. If `nil`, the default version (`"2.0"`)
    ///     is used.
    ///   - block: A builder that produces the `<channel>` elements of the feed.
    public init(
        version: String? = nil,
        @Builder<Channel> _ block: () -> [Channel]
    ) {
        self.init(
            version: version,
            channels: block()
        )
    }
}
