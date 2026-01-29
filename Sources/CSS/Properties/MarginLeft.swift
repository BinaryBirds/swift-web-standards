/// CSS `margin-left` property.
/// Provides typed values for this declaration.
public struct MarginLeft: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Creates a `margin-left` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameter value: The property value.
    public init(
        _ value: Margin.Value
    ) {
        self.name = "margin-left"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Creates a `margin-left` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameter value: The property value.
    public init(
        _ value: UnitRepresentable = 0
    ) {
        self.init(.length(value))
    }
}
