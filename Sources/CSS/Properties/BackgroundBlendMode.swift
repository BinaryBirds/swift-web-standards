/// CSS `background-blend-mode` property.
/// Provides typed values for this declaration.
public struct BackgroundBlendMode: Property {
    /// Value options for the `background-blend-mode` property.
    public enum Value: String, Sendable {
        /// This is default. Sets the blending mode to normal.
        case normal
        /// Sets the blending mode to multiply.
        case multiply
        /// Sets the blending mode to screen.
        case screen
        /// Sets the blending mode to overlay.
        case overlay
        /// Sets the blending mode to darken.
        case darken
        /// Sets the blending mode to lighten.
        case lighten
        /// Sets the blending mode to color-dodge.
        case colorDodge = "color-dodge"
        /// Sets the blending mode to saturation.
        case saturation
        /// Sets the blending mode to color.
        case color
        /// Sets the blending mode to luminosity.
        case luminosity
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the blending mode of each background layer (color/image).
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .normal
    ) {
        self.name = "background-blend-mode"
        self.value = value.rawValue
        self.isImportant = false
    }
}
