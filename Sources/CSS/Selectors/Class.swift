/// CSS class selector (e.g. `.button`).
public struct Class: Selector {

    /// Rendered selector name (prefixed with `.`).
    public let name: String
    /// Properties attached to this selector.
    public var properties: [any Property]
    /// Optional pseudo selector suffix.
    public var pseudo: String? = nil

    /// Creates a class selector.
    /// - Parameters:
    ///   - name: The class name without the `.` prefix.
    ///   - builder: Builder that returns property declarations.
    public init(
        _ name: String,
        @Builder<Property> _ builder: () -> [any Property]
    ) {
        self.name = "." + name
        self.properties = builder()
        self.pseudo = nil
    }
}
