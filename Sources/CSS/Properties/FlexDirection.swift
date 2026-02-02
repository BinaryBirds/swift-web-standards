/// CSS `flex-direction` property.
/// Provides typed values for this declaration.
public struct FlexDirection: Property {
    /// Value options for the `flex-direction` property.
    public enum Value: String, Sendable {
        /// Default value. The flexible items are displayed horizontally, as a row.
        case row
        /// Same as row, but in reverse order.
        case rowReverse = "row-reverse"
        /// The flexible items are displayed vertically, as a column.
        case column
        /// Same as column, but in reverse order.
        case columnReverse = "column-reverse"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the direction of the flexible items.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .row
    ) {
        self.name = "flex-direction"
        self.value = value.rawValue
        self.isImportant = false
    }
}
