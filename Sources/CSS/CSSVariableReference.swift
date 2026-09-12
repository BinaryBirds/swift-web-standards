//
//  CSSVariableReference.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 08.

/// A type that can provide the name of a CSS custom property.
public protocol CSSVariableNameRepresentable: Sendable {
    var propertyName: String { get }
}

extension CSSVariableNameRepresentable
where Self: RawRepresentable, RawValue == String {
    public var propertyName: String { rawValue }
}

/// An unchecked CSS custom property name backed by a raw string.
public struct UnsafeCSSVariableName: CSSVariableNameRepresentable {
    public let propertyName: String

    public init(_ propertyName: String) {
        self.propertyName = propertyName
    }
}

/// A reference to a CSS custom property, rendered as `var(--name)`.
public struct CSSVariableReference: Sendable {
    /// The custom property name without the `--` prefix.
    public let name: String

    public init(_ name: CSSVariableNameRepresentable) {
        self.name = name.propertyName
    }

    /// The rendered CSS `var(...)` function.
    var rawValue: String {
        "var(--\(name))"
    }
}
