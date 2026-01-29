/// CSS `mask-type` property.
/// Provides typed values for this declaration.
public struct MaskType: Property {
    /// Value options for the `mask-type` property.
    public enum Value: String, Sendable {
        /// Uses the luminance of the mask.
        case luminance
        /// Uses the alpha channel of the mask.
        case alpha
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether a mask element is used as a luminance or an alpha mask.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "mask-type"
        self.value = value.rawValue
        self.isImportant = false
    }
}
