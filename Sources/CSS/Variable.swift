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

    /// Creates a CSS custom property.
    /// - Parameters:
    ///   - name: The variable name without the `--` prefix.
    ///   - value: The variable value string.
    ///   - isImportant: Whether to mark the declaration as `!important`.
    public init(
        _ name: String,
        _ value: String,
        isImportant: Bool = false
    ) {
        self.name = "--" + name
        self.value = value
        self.isImportant = isImportant
    }

    /// Returns a copy marked as `!important`.
    public func important() -> Variable {
        modify { $0.isImportant = true }
    }
}

extension String {
    /// Converts a variable name into a `var(--name)` reference.
    public var `variable`: String {
        "var(--" + self + ")"
    }
}
