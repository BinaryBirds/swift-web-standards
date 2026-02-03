//
//  BorderImageSlice.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `border-image-slice` property.
/// Provides typed values for this declaration.
public struct BorderImageSlice: Property {
    /// Value options for the `border-image-slice` property.
    public enum Value: Sendable {
        /// The number(s) represent pixels for raster images or coordinates for vector images.
        case number(UnitRepresentable)
        /// Causes the middle part of the image to be displayed.
        case fill
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .number(let value):
                return value.rawValue
            case .fill:
                return "fill"
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

    /// Specifies how to slice the border image.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "border-image-slice"
        self.value = value.rawValue
        self.isImportant = false
    }
}
