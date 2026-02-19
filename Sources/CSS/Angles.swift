//
//  Angles.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 19.

/// A type that can be represented as a CSS angle value.
///
/// Conforming types must provide a `rawValue` that renders to a valid CSS
/// angle string, such as `"180deg"` or `"0.5turn"`.
///
/// This protocol is primarily used by gradient-related APIs to ensure
/// type-safe angle handling instead of relying on raw `String` values.
public protocol AngleRepresentable: Sendable {

    /// The rendered CSS value of the angle.
    ///
    /// Example output:
    /// - `"180deg"`
    /// - `"3.14rad"`
    /// - `"0.5turn"`
    var rawValue: String { get }
}

/// A strongly-typed representation of a CSS angle value.
///
/// `Angle` models CSS angle units such as:
/// - `deg`
/// - `rad`
/// - `grad`
/// - `turn`
///
/// It is generic over a numeric type to support both integer and
/// floating-point values.
///
/// ### Example
/// ```swift
/// let a = 180.deg
/// let b = 0.5.turn
///
/// print(a.rawValue) // "180deg"
/// print(b.rawValue) // "0.5turn"
/// ```
public struct Angle<T: Numeric & Sendable>: AngleRepresentable {

    /// Supported CSS angle units.
    ///
    /// These correspond to the standard CSS specification:
    /// - `deg`  → degrees
    /// - `rad`  → radians
    /// - `grad` → gradians
    /// - `turn` → turns
    public enum UnitType: String, Sendable {
        case deg
        case rad
        case grad
        case turn
    }

    /// The numeric value of the angle.
    public var value: T

    /// The unit type of the angle.
    public var type: UnitType

    /// Creates a new `Angle` instance.
    ///
    /// - Parameters:
    ///   - value: The numeric value of the angle.
    ///   - type: The CSS angle unit.
    public init(value: T, type: UnitType) {
        self.value = value
        self.type = type
    }

    /// The rendered CSS value.
    ///
    /// Combines the numeric value with its unit.
    ///
    /// Example:
    /// - `Angle(value: 180, type: .deg)` → `"180deg"`
    public var rawValue: String {
        "\(value)\(type.rawValue)"
    }
}

/// Convenience angle unit extensions for numeric types.
///
/// These helpers allow writing expressive, type-safe CSS angle values:
///
/// ```swift
/// 180.deg
/// 3.14.rad
/// 0.5.turn
/// ```
extension Numeric where Self: Sendable {

    /// Creates a degree-based angle (`deg`).
    public var deg: Angle<Self> {
        .init(value: self, type: .deg)
    }

    /// Creates a radian-based angle (`rad`).
    public var rad: Angle<Self> {
        .init(value: self, type: .rad)
    }

    /// Creates a gradian-based angle (`grad`).
    public var grad: Angle<Self> {
        .init(value: self, type: .grad)
    }

    /// Creates a turn-based angle (`turn`).
    public var turn: Angle<Self> {
        .init(value: self, type: .turn)
    }
}
