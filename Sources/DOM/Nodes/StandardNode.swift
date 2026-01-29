/// A node rendered with both opening and closing tags.
public struct StandardNode: Node {

    /// Tag name.
    public var name: String
    /// Attributes applied to the tag.
    public var properties: [Property]
    /// Child nodes in order.
    public var children: [Node] { list.items }

    private var list: ListNode

    /// Creates a standard node with a name, attributes, and optional children.
    public init(
        name: String,
        properties: [Property] = [],
        children: [Node] = []
    ) {
        self.name = name
        self.properties = properties
        self.list = .init(items: children)
    }
}
