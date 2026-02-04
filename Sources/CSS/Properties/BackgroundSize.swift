//
//  BackgroundSize.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `background-size` property.
/// Provides typed values for this declaration.
public struct BackgroundSize: Property {
    /// Value options for the `background-size` property.
    public enum Value: String, Sendable {
        /// Default value. The background image is displayed in its original size.
        case auto
        /// Sets the width and height of the background image. The first value sets the width, the second value sets the height. If only one value is given, the second is set to "auto".
        case length
        /// Sets the width and height of the background image in percent of the parent element. The first value sets the width, the second value sets the height. If only one value is given, the second is set to "auto".
        case percentage
        /// Resize the background image to cover the entire container, even if it has to stretch the image or cut a little bit off one of the edges.
        case cover
        /// Resize the background image to make sure the image is fully visible.
        case contain
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the size of the background images.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .auto
    ) {
        self.name = "background-size"
        self.value = value.rawValue
        self.isImportant = false
    }
}
