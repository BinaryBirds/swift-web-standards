/// CSS `gap` property.
/// Provides typed values for this declaration.
public struct Gap: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for the row-gap and the column-gap properties.
    /// - Parameters:
    ///   - row: The row value.
    ///   - col: The col value.
    public init(_ row: RowGap.Value, _ col: ColumnGap.Value) {
        self.name = "gap"
        self.value = [row.rawValue, col.rawValue].joined(separator: " ")
        self.isImportant = false
    }
}
