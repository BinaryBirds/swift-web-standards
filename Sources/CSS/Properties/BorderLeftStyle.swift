/// CSS `border-left-style` property.
/// Provides typed values for this declaration.
public struct BorderLeftStyle: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the style of the left border.
    /// - Parameter value: The property value.
    public init(_ value: BorderStyle.Value = .none) {
        self.name = "border-left-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
