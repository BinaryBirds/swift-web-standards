//
//  BorderRight.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `border-right` property.
/// Provides typed values for this declaration.
public struct BorderRight: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for all the border-right-* properties.
    /// - Parameter value: The property value.
    public init(_ value: Border.Value) {
        self.name = "border-right"
        self.value = value.rawValue
        self.isImportant = false
    }
}
