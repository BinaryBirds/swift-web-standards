/// CSS `writing-mode` property.
/// Provides typed values for this declaration.
public struct WritingMode: Property {
    /// Value options for the `writing-mode` property.
    public enum Value: String, Sendable {
        /// Let the content flow horizontally from left to right, vertically from top to bottom.
        case horizontalTb = "horizontal-tb"
        /// Let the content flow vertically from top to bottom, horizontally from right to left.
        case verticalRl = "vertical-rl"
        /// Let the content flow vertically from top to bottom, horizontally from left to right.
        case verticalLr = "vertical-lr"
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether lines of text are laid out horizontally or vertically.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .horizontalTb
    ) {
        self.name = "writing-mode"
        self.value = value.rawValue
        self.isImportant = false
    }
}
