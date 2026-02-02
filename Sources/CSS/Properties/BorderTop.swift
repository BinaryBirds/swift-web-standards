/// CSS `border-top` property.
/// Provides typed values for this declaration.
public struct BorderTop: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for border-top-width, border-top-style and border-top-color.
    /// - Parameter value: The property value.
    public init(_ value: Border.Value) {
        self.name = "border-top"
        self.value = value.rawValue
        self.isImportant = false
    }
}
