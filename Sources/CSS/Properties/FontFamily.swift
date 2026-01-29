/// CSS `font-family` property.
/// Provides typed values for this declaration.
public struct FontFamily: Property {
    /// Value options for the `font-family` property.
    public enum Value: Sendable {
        /// A prioritized list of font family names and/or generic family names.
        case family(String)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .family(let value):
                return value
            case .initial:
                return "initial"
            case .inherit:
                return "inherit"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the font family for text.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "font-family"
        self.value = value.rawValue
        self.isImportant = false
    }
}
