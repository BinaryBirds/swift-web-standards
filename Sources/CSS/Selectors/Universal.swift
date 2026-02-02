/// CSS universal selector (`*`).
public struct Universal: Selector {

    /// Rendered selector name (`*`).
    public let name: String
    /// Properties attached to this selector.
    public var properties: [any Property]
    /// Optional pseudo selector suffix.
    public var pseudo: String? = nil

    /// Creates a universal selector.
    /// - Parameter builder: Builder that returns property declarations.
    public init(
        @Builder<Property> _ builder: () -> [any Property]
    ) {
        self.name = "*"
        self.properties = builder()
        self.pseudo = nil
    }
}

/// Alias for the universal selector.
public typealias AllElements = Universal
