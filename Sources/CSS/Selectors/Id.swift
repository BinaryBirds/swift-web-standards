//
//  Id.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS id selector (e.g. `#header`).
public struct Id: Selector {

    /// Rendered selector name (prefixed with `#`).
    public let name: String
    /// Properties attached to this selector.
    public var properties: [any Property]
    /// Optional pseudo selector suffix.
    public var pseudo: String? = nil

    /// Creates an id selector.
    /// - Parameters:
    ///   - name: The id value without the `#` prefix.
    ///   - builder: Builder that returns property declarations.
    public init(
        _ name: String,
        @Builder<Property> _ builder: () -> [any Property]
    ) {
        self.name = "#" + name
        self.properties = builder()
        self.pseudo = nil
    }
}
