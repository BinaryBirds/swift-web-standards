/// Specifies the character encoding to use.
public struct Charset: Rule {
    /// The charset name (e.g. `UTF-8`).
    var name: String

    /// Creates a charset rule.
    /// - Parameter name: The charset name.
    public init(_ name: String) {
        self.name = name
    }
}
