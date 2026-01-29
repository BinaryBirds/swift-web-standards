/// CSS `border-top-style` property.
/// Provides typed values for this declaration.
public struct BorderTopStyle: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the style of the top border.
    /// - Parameter value: The property value.
    public init(_ value: BorderStyle.Value = .none) {
        self.name = "border-top-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
