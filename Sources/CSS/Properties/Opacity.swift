/// CSS `opacity` property.
/// Provides typed values for this declaration.
public struct Opacity: Property {
    /// Value options for the `opacity` property.
    public enum Value: Sendable {
        /// Specifies the opacity. From 0.0 (fully transparent) to 1.0 (fully opaque).
        case number(Double)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .number(let value):
                return String(value)
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

    /// Sets the opacity level for an element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "opacity"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the opacity level for an element.
    /// - Parameter value: The property value.
    public init(_ value: Double = 1) {
        self.init(.number(value))
    }
}
