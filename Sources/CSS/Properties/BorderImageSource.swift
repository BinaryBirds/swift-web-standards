/// CSS `border-image-source` property.
/// Provides typed values for this declaration.
public struct BorderImageSource: Property {
    /// Value options for the `border-image-source` property.
    public enum Value: Sendable {
        /// No image will be used.
        case none
        /// The path to the image to be used as a border.
        case image(String)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .image(let value):
                return "url('\(value)')"
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

    /// Specifies the path to the image to be used as a border.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "border-image-source"
        self.value = value.rawValue
        self.isImportant = false
    }
}
