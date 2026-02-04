//
//  Root.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `:root` selector.
public struct Root: Selector {

    /// Rendered selector name (`:root`).
    public let name: String
    /// Properties attached to this selector.
    public var properties: [any Property]
    /// Optional pseudo selector suffix.
    public var pseudo: String? = nil

    /// Creates a root selector.
    /// - Parameter builder: Builder that returns property declarations.
    public init(
        @Builder<Property> _ builder: () -> [any Property]
    ) {
        self.name = ":root"
        self.properties = builder()
        self.pseudo = nil
    }
}
