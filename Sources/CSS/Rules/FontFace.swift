//
//  FontFace.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// Represents an `@font-face` rule.
public struct FontFace: Rule {

    /// Properties declared inside the font-face block.
    var properties: [any Property]

    /// Creates a font-face rule.
    /// - Parameter builder: A builder that returns property declarations.
    public init(
        @Builder<Property> _ builder: () -> [any Property]
    ) {
        self.properties = builder()
    }

}
