import DOM

/// A renderable SGML element.
public protocol Element: Sendable {
    /// The DOM node representation of the element.
    var node: Node { get }
}
