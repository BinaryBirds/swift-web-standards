/// CSS `-webkit-text-fill-color` property.
/// Provides typed color values for this declaration.
public struct WebkitTextFillColor: Property {
    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the text fill color, including a CSS custom property reference.
    public init(_ value: CSSColorValue) {
        self.name = "-webkit-text-fill-color"
        self.value = value.rawValue
        self.isImportant = false
    }

    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
