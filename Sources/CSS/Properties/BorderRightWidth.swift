/// CSS `border-right-width` property.
/// Provides typed values for this declaration.
public struct BorderRightWidth: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the width of the right border.
    /// - Parameter value: The property value.
    public init(_ value: BorderWidth.Value = .medium) {
        self.name = "border-right-width"
        self.value = value.rawValue
        self.isImportant = false
    }

    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
