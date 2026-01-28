import SGML

/// A `<pubDate>` element indicating when content was published.
///
/// The `<pubDate>` element may appear in both `<channel>` and `<item>` contexts.
/// For a channel, it represents the publication date of the feed itself;
/// for an item, it represents the publication date of the individual entry.
///
/// The value should be formatted according to the RSS specification,
/// typically using RFC 822 / RFC 1123 date formats.
public struct PubDate: StandardTag, ItemContent, ChannelContent {

    /// The element name as it appears in the rendered output.
    public static let name = "pubDate"

    /// The attributes associated with the `<pubDate>` element.
    public var attributes: AttributeStore

    /// The child elements of `<pubDate>`.
    ///
    /// This always contains a single text node representing the publication date.
    public var children: [Element]

    /// Creates a `<pubDate>` element with the given date string.
    ///
    /// - Parameter value: A date string representing the publication date.
    ///
    /// ## Example
    /// ```swift
    /// PubDate("Wed, 02 Oct 2002 13:00:00 GMT")
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
