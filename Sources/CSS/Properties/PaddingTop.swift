/// CSS `padding-top` property.
/// Provides typed values for this declaration.
public struct PaddingTop: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the top padding of an element.
    /// - Parameter value: The property value.
    public init(
        _ value: Padding.Value
    ) {
        self.name = "padding-top"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the top padding of an element.
    /// - Parameter value: The property value.
    public init(
        _ value: UnitRepresentable = 0
    ) {
        self.init(.length(value))
    }
}
