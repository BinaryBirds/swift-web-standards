/// A shorthand property for border-width, border-style and border-color.

/// CSS `border` property.
/// Provides typed values for this declaration.
public struct Border: Property {
    /// Value options for the `border` property.
    public enum Value: Sendable {
        case values(BorderWidth.Value, BorderStyle.Value, CSSColor)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .values(let width, let style, let color):
                return width.rawValue + " " + style.rawValue + " "
                    + color.rawValue
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

    /// A shorthand property for border-width, border-style and border-color.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "border"
        self.value = value.rawValue
        self.isImportant = false
    }
}
