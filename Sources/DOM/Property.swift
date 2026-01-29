/// A name/value pair used to describe a node attribute.
public struct Property: Sendable {

    /// Attribute name.
    public var name: String
    /// Optional attribute value. When `nil`, the attribute is rendered as a boolean flag.
    public var value: String?

    /// Creates an attribute with a name and optional value.
    public init(
        name: String,
        value: String? = nil
    ) {
        self.name = name
        self.value = value
    }
}
