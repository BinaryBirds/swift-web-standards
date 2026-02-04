//
//  BorderImage.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `border-image` property.
/// Provides typed values for this declaration.
public struct BorderImage: Property {
    /// Value options for the `border-image` property.
    public enum Value: Sendable {

        case values(
            BorderImageSource.Value,
            BorderImageSlice.Value?,
            BorderImageWidth.Value?,
            BorderImageOutset.Value?,
            BorderImageRepeat.Value?
        )

        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .values(
                let source,
                let slice,
                let width,
                let outset,
                let `repeat`
            ):
                return [
                    source.rawValue,
                    slice?.rawValue,
                    width?.rawValue,
                    outset?.rawValue,
                    `repeat`?.rawValue,
                ]
                .compactMap { $0 }.joined(separator: " ")
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

    /// A shorthand property for all the border-image-* properties.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "border-image"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// A shorthand property for all the border-image-* properties.
    /// - Parameters:
    /// - source: The source value.
    /// - slice: The slice value.
    /// - width: The width value.
    /// - outset: The outset value.
    /// - repeat: The `repeat` value.
    public init(
        source: BorderImageSource.Value,
        slice: BorderImageSlice.Value? = nil,
        width: BorderImageWidth.Value? = nil,
        outset: BorderImageOutset.Value? = nil,
        `repeat`: BorderImageRepeat.Value? = nil
    ) {
        self.init(.values(source, slice, width, outset, `repeat`))
    }
}
