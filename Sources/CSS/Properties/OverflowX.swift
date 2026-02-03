//
//  OverflowX.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `overflow-x` property.
/// Provides typed values for this declaration.
public struct OverflowX: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether or not to clip the left/right edges of the content, if it overflows the element's content area.
    /// - Parameter value: The property value.
    public init(_ value: Overflow.Value = .visible) {
        self.name = "overflow-x"
        self.value = value.rawValue
        self.isImportant = false
    }
}
