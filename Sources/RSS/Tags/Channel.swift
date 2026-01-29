import SGML

/// An RSS `<channel>` element representing the metadata and contents of a feed.
///
/// A `<channel>` acts as the container for feed-level information and entries,
/// such as the feed title, description, link, and associated `<item>` elements.
///
/// Valid child elements are constrained to types conforming to `ChannelContent`,
/// ensuring only RSS-compatible elements may appear inside a channel.
public struct Channel: StandardTag {

    /// The attributes associated with the `<channel>` element.
    public var attributes: AttributeStore

    /// The child elements of `<channel>`.
    public var children: [Element]

    /// Creates a `<channel>` element with the given child elements.
    ///
    /// - Parameter children: The elements contained within this channel.
    public init(
        children: [ChannelContent]
    ) {
        self.attributes = .init()
        self.children = children
    }

    /// Creates a `<channel>` element using a result builder.
    ///
    /// This initializer enables a declarative syntax for constructing RSS feeds.
    ///
    /// ## Example
    /// ```swift
    /// Channel {
    ///     Title("Example Feed")
    ///     Description("A sample RSS feed")
    ///     Link("https://example.com/")
    /// }
    /// ```
    public init(
        @Builder<ChannelContent> _ block: () -> [ChannelContent]
    ) {
        self.init(children: block())
    }
}
