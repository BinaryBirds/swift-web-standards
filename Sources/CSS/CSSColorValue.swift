//
//  CSSColorValue.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// Common CSS color value variants used by properties.
public enum CSSColorValue: Sendable {

    /// Explicit color value.
    case color(CSSColor)
    /// A CSS custom property reference.
    case variable(CSSVariableReference)
    /// Transparent color.
    case transparent
    /// Default value.
    case initial
    /// Inherited value.
    case inherit

    /// Creates a color property value from a concrete CSS color.
    public init(_ color: CSSColor) {
        self = .color(color)
    }

    /// A CSS custom property reference, such as `var(--brand-color)`.
    public static func variable(
        _ name: String
    ) -> Self {
        .variable(.init(name))
    }

    /// Rendered CSS color string.
    var rawValue: String {
        switch self {
        case .color(let value):
            return value.rawValue
        case .variable(let reference):
            return reference.rawValue
        case .transparent:
            return "transparent"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}
