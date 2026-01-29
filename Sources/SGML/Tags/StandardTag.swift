import DOM

/// A tag that renders as a standard element with children.
public protocol StandardTag: Tag, Container, Attributes {

}

extension StandardTag {

    /// The node.
    public var node: Node {
        StandardNode(
            name: Self.name,
            properties: attributes.properties,
            children: children.map(\.node)
        )
    }
}
