/// An HTML comment node.
public struct CommentNode: Node {

    /// Comment contents without the comment delimiters.
    public var value: String

    /// Creates a comment node with the provided content.
    public init(
        value: String
    ) {
        self.value = value
    }
}
