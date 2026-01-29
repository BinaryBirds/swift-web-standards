/// CSS `grid-row` property.
/// Provides typed values for this declaration.
public struct GridRow: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for the grid-row-start and the grid-row-end properties.
    /// - Parameters:
    ///   - start: The start value.
    ///   - end: The end value.
    public init(_ start: GridRowStart.Value, _ end: GridRowEnd.Value) {
        self.name = "grid-row"
        self.value = start.rawValue + " / " + end.rawValue
        self.isImportant = false
    }
}
