//
//  Element.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS element selector (e.g. `body`, `p`).
public struct Element: Selector {

    /// Rendered selector name.
    public let name: String
    /// Properties attached to this selector.
    public var properties: [any Property]
    /// Optional pseudo selector suffix.
    public var pseudo: String? = nil

    /// Creates an element selector.
    /// - Parameters:
    ///   - name: The element tag name.
    ///   - builder: Builder that returns property declarations.
    public init(
        _ name: String,
        @Builder<Property> _ builder: () -> [any Property]
    ) {
        self.name = name
        self.properties = builder()
        self.pseudo = nil
    }
}
