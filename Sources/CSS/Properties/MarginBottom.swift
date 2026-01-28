public struct MarginBottom: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    public init(
        _ value: Margin.Value
    ) {
        self.name = "margin-bottom"
        self.value = value.rawValue
        self.isImportant = false
    }

    public init(
        _ value: UnitRepresentable = 0
    ) {
        self.init(.length(value))
    }
}
