//
//  Variable.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS custom property value.
public struct Variable: Property {
    /// The CSS property name, prefixed with `--`.
    public var name: String
    /// The custom property value.
    public var value: String
    /// Whether the property should be rendered as `!important`.
    public var isImportant: Bool

    public init(
        _ name: CSSVariableNameRepresentable,
        _ value: String,
        isImportant: Bool = false
    ) {
        self.name = "--" + name.rawValue
        self.value = value
        self.isImportant = isImportant
    }

    /// Returns a copy marked as `!important`.
    public func important() -> Variable {
        modify { $0.isImportant = true }
    }
}
