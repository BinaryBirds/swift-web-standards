import DOM

/// A text node element.
public struct Text: Element {

    /// The text content.
    public var text: String
    /// Whether the text should bypass indentation adjustments.
    public var isRaw: Bool

    /// Creates a text.
    public init(
        _ text: String,
        isRaw: Bool = false
    ) {
        self.text = text
        self.isRaw = isRaw
    }

    /// The node.
    public var node: Node {
        TextNode(
            value: text,
            ignoreRenderIndentation: isRaw
        )
    }
}
