//
//  Fraction.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 25.

/// A type that can be rendered as a CSS fractional (`fr`) value.
public protocol FractionRepresentable: Sendable {
    /// The rendered fraction string.
    var rawValue: String { get }
}

/// Strongly typed CSS fraction value used by Grid track sizing.
public struct Fraction<T: Numeric & Sendable>: FractionRepresentable {

    /// The numeric fraction value.
    public var value: T

    /// Creates a new fraction value.
    /// - Parameter value: The numeric value.
    public init(value: T) {
        self.value = value
    }

    /// Rendered CSS fraction string.
    public var rawValue: String {
        "\(value)fr"
    }
}

extension Numeric where Self: Sendable {
    /// CSS fraction (`fr`) unit for Grid track sizing.
    public var fr: Fraction<Self> {
        .init(value: self)
    }
}
