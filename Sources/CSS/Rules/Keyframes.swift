//
//  Keyframes.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// Represents a `@keyframes` rule.
public struct Keyframes: Rule {

    /// The animation name.
    var name: String
    /// The keyframe selectors inside the rule.
    var selectors: [Selector]

    /// Creates a keyframes rule.
    /// - Parameters:
    ///   - name: The animation name.
    ///   - builder: A builder that returns keyframe selectors.
    public init(
        _ name: String,
        @Builder<Selector> _ builder: () -> [Selector]
    ) {
        self.name = name
        self.selectors = builder()
    }
}
