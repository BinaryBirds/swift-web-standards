//
//  BorderImageWidth.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `border-image-width` property.
/// Provides typed values for this declaration.
public struct BorderImageWidth: Property {
    /// Value options for the `border-image-width` property.
    public enum Value: Sendable {
        /// A length unit (px) specifying the size of the border-width    Play it ».
        case length(UnitRepresentable)
        /// Default value 1. Represents multiples of the corresponding border-width    Play it ».
        case number(Double)
        /// If specified, the width is the intrinsic width or height of the corresponding image slice.
        case auto
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .length(let value):
                return value.rawValue
            case .number(let value):
                return String(value)
            case .auto:
                return "auto"
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

    /// Specifies the width of the border image.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "border-image-width"
        self.value = value.rawValue
        self.isImportant = false
    }
}
