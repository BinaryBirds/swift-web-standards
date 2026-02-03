//
//  Stylesheet.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// Top-level CSS stylesheet container.
public struct Stylesheet: Sendable {

    /// The list of rules that make up the stylesheet.
    public var rules: [Rule]

    /// Creates a stylesheet from an explicit list of rules.
    /// - Parameter rules: The rules to include.
    public init(
        _ rules: [Rule]
    ) {
        self.rules = rules
    }

    /// Creates a stylesheet using the CSS result builder.
    /// - Parameter builder: A builder that returns rule instances.
    public init(
        @Builder<Rule> _ builder: () -> [Rule]
    ) {
        self.rules = builder()
    }
}
