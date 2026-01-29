/// A DOM node that can be rendered into a string.
public protocol Node: Sendable {
    // You should never implement this protocol
}

extension Node {

    /// Renders the node using the provided indentation width.
    public func render(
        indent: UInt8 = 0
    ) -> String {
        let renderer = Renderer(indent: indent)
        return renderer.render(node: self)
    }
}
