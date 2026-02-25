//
//  BackdropFilter.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 25.

/// CSS `backdrop-filter` property.
/// Provides typed values for this declaration.
public struct BackdropFilter: Property {
    /// Supported length value for `backdrop-filter: blur(...)`.
    public struct BlurLength: UnitRepresentable, Sendable {
        public let rawValue: String

        /// Creates a blur length from a CSS `Unit`.
        /// Returns `nil` for unsupported units (for example `%`).
        public init?<T>(
            _ unit: Unit<T>
        ) where T: Numeric & Sendable {
            switch unit.type {
            case .cm, .mm, .in, .px, .pt, .pc, .em, .ex, .ch, .rem, .vw, .vh,
                .vmin, .vmax:
                self.rawValue = unit.rawValue
            case .percent:
                return nil
            }
        }
    }

    /// Value options for the `backdrop-filter` property.
    public enum Value: Sendable {
        /// Default value. Specifies no effects.
        case none
        /// Applies a blur effect to the backdrop.
        case blur(BlurLength)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .blur(let value):
                return "blur(\(value.rawValue))"
            case .initial:
                return "initial"
            case .inherit:
                return "inherit"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Applies graphical effects such as blurring to the area behind an element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .none
    ) {
        self.name = "backdrop-filter"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Convenience initializer for `backdrop-filter: blur(...)` using `Unit`.
    /// Returns `nil` when the supplied unit is unsupported by blur().
    public init?<T>(
        blur unit: Unit<T>
    ) where T: Numeric & Sendable {
        guard let blurLength = BlurLength(unit) else {
            return nil
        }
        self.init(.blur(blurLength))
    }

    // TODO: add support for the remaining backdrop-filter functions:
    // - brightness()
    // - contrast()
    // - drop-shadow()
    // - grayscale()
    // - hue-rotate()
    // - invert()
    // - opacity()
    // - saturate()
    // - sepia()
    // - url()
    // - multiple functions in a single declaration
}
