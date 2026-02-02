/// CSS `grid-column-start` property.
/// Provides typed values for this declaration.
public struct GridColumnStart: Property {
    /// Value options for the `grid-column-start` property.
    public enum Value: Sendable {
        /// Default value. The item will be placed following the flow.
        case auto
        /// Specifies the number of columns the item will span.
        case span(Int)
        /// Specifies on which column to start the display of the item.
        case columnLine(Int)

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .span(let value):
                return "span \(value)"
            case .columnLine(let value):
                return String(value)
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies where to start the grid item.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "grid-column-start"
        self.value = value.rawValue
        self.isImportant = false
    }
}
