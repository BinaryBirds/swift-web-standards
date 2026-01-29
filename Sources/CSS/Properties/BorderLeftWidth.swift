/// CSS `border-left-width` property.
/// Provides typed values for this declaration.
public struct BorderLeftWidth: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the width of the left border.
    /// - Parameter value: The property value.
    public init(_ value: BorderWidth.Value = .medium) {
        self.name = "border-left-width"
        self.value = value.rawValue
        self.isImportant = false
    }

    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
