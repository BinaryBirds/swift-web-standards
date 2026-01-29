/// CSS `border-bottom-width` property.
/// Provides typed values for this declaration.
public struct BorderBottomWidth: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the width of the bottom border.
    /// - Parameter value: The property value.
    public init(_ value: BorderWidth.Value = .medium) {
        self.name = "border-bottom-width"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the width of the bottom border.
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
