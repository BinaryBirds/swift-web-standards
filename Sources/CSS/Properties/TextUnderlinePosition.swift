/// CSS `text-underline-position` property.
/// Provides typed values for this declaration.
public struct TextUnderlinePosition: Property {
    /// Value options for the `text-underline-position` property.
    public enum Value: String, Sendable {
        case auto
        case under
        case left
        case right
        case underLeft = "under left"
        case rightUnder = "right under"
        case inherit
        case initial
        case revert
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the position of the underline which is set using the text-decoration property.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "text-underline-position"
        self.value = value.rawValue
        self.isImportant = false
    }
}
