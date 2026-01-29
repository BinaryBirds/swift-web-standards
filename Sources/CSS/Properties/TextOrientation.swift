/// CSS `text-orientation` property.
/// Provides typed values for this declaration.
public struct TextOrientation: Property {
    /// Value options for the `text-orientation` property.
    public enum Value: String, Sendable {
        case mixed
        case upright
        case sidewaysRight = "sideways-right"
        case sideways
        case useGlyphOrientation = "use-glyph-orientation"
        case inherit
        case initial
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Creates a `text-orientation` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "text-orientation"
        self.value = value.rawValue
        self.isImportant = false
    }
}
