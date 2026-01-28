import SGML

/// A `<language>` element specifying the language of an RSS feed.
///
/// The value should be a language code identifying the primary language
/// of the channel’s content, typically formatted according to RFC 3066
/// or BCP 47 (for example, `"en"`, `"en-US"`).
public struct Language: StandardTag, ChannelContent {

    /// The attributes associated with the `<language>` element.
    public var attributes: AttributeStore

    /// The child elements of `<language>`.
    ///
    /// This always contains a single text node representing the language code.
    public var children: [Element]

    /// Creates a `<language>` element with the given language code.
    ///
    /// - Parameter value: A language identifier such as `"en"` or `"en-US"`.
    ///
    /// ## Example
    /// ```swift
    /// Language("en-US")
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
