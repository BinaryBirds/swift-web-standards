//
//  BorderColor.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `border-color` property.
/// Provides typed values for this declaration.
public struct BorderColor: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets one to four colors for the top, right, bottom, and left borders.
    /// - Parameter values: One to four color values.
    public init(_ values: CSSColorValue...) {
        precondition((1...4).contains(values.count), "border-color requires one to four values")
        self.name = "border-color"
        self.value = values.map(\.rawValue).joined(separator: " ")
        self.isImportant = false
    }

}
