/// CSS `image-rendering` property.
/// Provides typed values for this declaration.
public struct ImageRendering: Property {
    /// Value options for the `image-rendering` property.
    public enum Value: String, Sendable {
        case auto
        case crispEdges = "crisp-edges"
        case pixelated
        case inherit
        case initial
        case revert
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Gives a hint to the browser about what aspects of an image are most important to preserve when the image is scaled.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "image-rendering"
        self.value = value.rawValue
        self.isImportant = false
    }
}
