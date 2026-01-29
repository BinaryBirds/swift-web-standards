import DOM

/// A tag that renders as a void element.
public protocol ShortTag: Tag, Attributes {

}

extension ShortTag {

    /// The node.
    public var node: Node {
        ShortNode(
            name: Self.name,
            properties: attributes.properties
        )
    }
}
