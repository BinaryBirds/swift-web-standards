//
//  CSSVariableReference.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 08.

/// A type that can provide the name of a CSS custom property.
public protocol CSSVariableNameRepresentable: Sendable {
    var rawValue: String { get }
}

/// An unchecked CSS custom property name backed by a raw string.
public struct UnsafeCSSVariableName: CSSVariableNameRepresentable {
    public let rawValue: String

    public init(_ rawValue: String) {
        self.rawValue = rawValue
    }
}

/// A reference to a CSS custom property, rendered as `var(--name)`.
public struct CSSVariableReference: Sendable {
    /// The custom property name without the `--` prefix.
    public let name: String

    public init(_ name: CSSVariableNameRepresentable) {
        self.name = name.rawValue
    }

    /// The rendered CSS `var(...)` function.
    var rawValue: String {
        "var(--\(name))"
    }
}
