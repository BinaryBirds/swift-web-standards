/// A type that can be rendered as a CSS length/number.
public protocol UnitRepresentable: Sendable {
    /// The rendered unit string.
    var rawValue: String { get }
}

/// Generic unit wrapper for numeric values.
public struct Unit<T: Numeric & Sendable>: UnitRepresentable {

    /// Supported CSS unit types.
    public enum UnitType: String, Sendable {
        case cm
        case mm
        case `in`
        case px
        case pt
        case pc
        case em
        case ex
        case ch
        case rem
        case vw
        case vh
        case vmin
        case vmax
        case percent = "%"
    }

    /// The numeric value.
    public var value: T
    /// The unit type.
    public var type: UnitType

    /// Creates a new unit from a value and unit type.
    /// - Parameters:
    ///   - value: The numeric value.
    ///   - type: The unit type.
    public init(
        value: T,
        type: UnitType
    ) {
        self.value = value
        self.type = type
    }

    /// Rendered CSS unit string.
    public var rawValue: String {
        "\(value)\(type.rawValue)"
    }
}

extension Numeric where Self: Sendable {
    /// Centimeters.
    public var cm: Unit<Self> { .init(value: self, type: .cm) }
    /// Millimeters.
    public var mm: Unit<Self> { .init(value: self, type: .mm) }
    /// Inches.
    public var `in`: Unit<Self> { .init(value: self, type: .in) }
    /// Pixels.
    public var px: Unit<Self> { .init(value: self, type: .px) }
    /// Points.
    public var pt: Unit<Self> { .init(value: self, type: .pt) }
    /// Picas.
    public var pc: Unit<Self> { .init(value: self, type: .pc) }
    /// em units.
    public var em: Unit<Self> { .init(value: self, type: .em) }
    /// ex units.
    public var ex: Unit<Self> { .init(value: self, type: .ex) }
    /// ch units.
    public var ch: Unit<Self> { .init(value: self, type: .ch) }
    /// rem units.
    public var rem: Unit<Self> { .init(value: self, type: .rem) }
    /// viewport width units.
    public var vw: Unit<Self> { .init(value: self, type: .vw) }
    /// viewport height units.
    public var vh: Unit<Self> { .init(value: self, type: .vh) }
    /// viewport min units.
    public var vmin: Unit<Self> { .init(value: self, type: .vmin) }
    /// viewport max units.
    public var vmax: Unit<Self> { .init(value: self, type: .vmax) }
    /// percentage units.
    public var percent: Unit<Self> { .init(value: self, type: .percent) }
}

extension Int: UnitRepresentable {

    /// Rendered integer value.
    public var rawValue: String { String(self) }
}

extension Double: UnitRepresentable {

    /// Rendered floating-point value.
    public var rawValue: String { String(self) }
}
