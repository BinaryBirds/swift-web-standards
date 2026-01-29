import DOM

/// A tag element that can be rendered as a node.
public protocol Tag: Element, Mutable {
    /// The tag name used for rendering.
    static var name: String { get }
}

extension Tag {

    /// The tag name used for rendering.
    public static var name: String {
        .init(describing: self).lowercased()
    }
}
