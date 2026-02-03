//
//  Padding.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `padding` property.
/// Provides typed values for this declaration.
public struct Padding: Property {
    /// Value options for the `padding` property.
    public enum Value: Sendable {
        /// Specifies a fixed bottom padding in px, pt, cm, etc. Default value is 0.
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .length(let value):
                return value.rawValue
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

    /// Sets all the Padding properties in one declaration.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "padding"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Creates a `padding` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameter value: The property value.
    public init(_ value: UnitRepresentable = 0) {
        self.init(.length(value))
    }

    /// Creates a `padding` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameters:
    ///   - horizontal: The horizontal value.
    ///   - vertical: The vertical value.
    public init(
        horizontal: Value,
        vertical: Value
    ) {
        self.name = "padding"
        self.value = horizontal.rawValue + " " + vertical.rawValue
        self.isImportant = false
    }

    /// Creates a `padding` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameters:
    ///   - horizontal: The horizontal value.
    ///   - vertical: The vertical value.
    public init(
        horizontal: UnitRepresentable = 0,
        vertical: UnitRepresentable = 0
    ) {
        self.init(horizontal: .length(horizontal), vertical: .length(vertical))
    }

    /// Creates a `padding` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameters:
    ///   - top: The top value.
    ///   - right: The right value.
    ///   - bottom: The bottom value.
    ///   - left: The left value.
    public init(
        top: Value,
        right: Value,
        bottom: Value,
        left: Value
    ) {
        self.name = "padding"
        self.value =
            top.rawValue + " " + right.rawValue + " " + bottom.rawValue + " "
            + left.rawValue
        self.isImportant = false
    }

    /// Creates a `padding` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameters:
    ///   - top: The top value.
    ///   - right: The right value.
    ///   - bottom: The bottom value.
    ///   - left: The left value.
    public init(
        top: UnitRepresentable = 0,
        right: UnitRepresentable = 0,
        bottom: UnitRepresentable = 0,
        left: UnitRepresentable = 0
    ) {
        self.init(
            top: .length(top),
            right: .length(right),
            bottom: .length(bottom),
            left: .length(left)
        )
    }
}
