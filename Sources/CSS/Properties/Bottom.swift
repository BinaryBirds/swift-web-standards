/// CSS `bottom` property.
/// Provides typed values for this declaration.
public struct Bottom: Property {
    /// Value options for the `bottom` property.
    public enum Value: Sendable {
        /// Lets the browser calculate the bottom edge position. This is default.
        case auto
        /// Sets the bottom edge position in px, cm, etc. Negative values are allowed. Read about length units.
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

    /// Sets the elements position, from the bottom of its parent element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "bottom"
        self.value = value.rawValue
        self.isImportant = false
    }
}
