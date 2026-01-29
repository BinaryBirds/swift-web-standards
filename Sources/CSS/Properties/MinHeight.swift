/// CSS `min-height` property.
/// Provides typed values for this declaration.
public struct MinHeight: Property {
    /// Value options for the `min-height` property.
    public enum Value: Sendable {
        /// Default value is 0. Defines the minimum height in px, cm, etc. Read about length units.
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
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

    /// Sets the minimum height of an element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .length(0)
    ) {
        self.name = "min-height"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the minimum height of an element.
    /// - Parameter value: The property value.
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
