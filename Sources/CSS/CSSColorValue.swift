//
//  CSSColorValue.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// Common CSS color value variants used by properties.
public enum CSSColorValue: Sendable {

    /// Explicit color value.
    case color(CSSColor)
    /// Transparent color.
    case transparent
    /// Default value.
    case initial
    /// Inherited value.
    case inherit

    /// A CSS custom property reference, such as `var(--brand-color)`.
    public static func variable(
        _ name: String
    ) -> Self {
        .color(.variable(name))
    }

    /// Rendered CSS color string.
    var rawValue: String {
        switch self {
        case .color(let value):
            return value.rawValue
        case .transparent:
            return "transparent"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}
