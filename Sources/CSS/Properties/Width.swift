/// CSS `width` property.
/// Provides typed values for this declaration.
public struct Width: Property {
    /// Value options for the `width` property.
    public enum Value: Sendable {
        /// Default value. The browser calculates the width.
        case auto
        /// Defines the width in px, cm, etc. Read about length units.
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .length(let value):
                return value.rawValue
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

    /// Sets the width of an element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "width"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the width of an element.
    /// - Parameter value: The property value.
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
