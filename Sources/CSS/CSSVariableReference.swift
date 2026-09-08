//
//  CSSVariableReference.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 08.

/// A reference to a CSS custom property, rendered as `var(--name)`.
public struct CSSVariableReference: Sendable {
    /// The custom property name without the `--` prefix.
    public let name: String

    /// Creates a reference to a CSS custom property.
    public init(_ name: String) {
        self.name = name
    }

    /// The rendered CSS `var(...)` function.
    var rawValue: String {
        "var(--\(name))"
    }
}
