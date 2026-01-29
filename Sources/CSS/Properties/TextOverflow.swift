/// CSS `text-overflow` property.
/// Provides typed values for this declaration.
public struct TextOverflow: Property {
    /// Value options for the `text-overflow` property.
    public enum Value: String, Sendable {
        /// Default value. The text is clipped and not accessible    Play it ».
        case clip
        /// Render an ellipsis ("...") to represent the clipped text    Play it ».
        case ellipsis
        /// Render the given string to represent the clipped text.
        case string
        /// Sets this property to its default value. Read about initial    Play it ».
        case initial
        /// Inherits this property from its parent element. Read about inherit.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies what should happen when text overflows the containing element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .clip
    ) {
        self.name = "text-overflow"
        self.value = value.rawValue
        self.isImportant = false
    }
}
