//
//  Builder.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

/// A result builder that collects element arrays.
@resultBuilder
public enum Builder<Element> {

    // Turn a single expression into a component
    /// Builds a component from a single expression.
    public static func buildExpression(
        _ expression: Element
    ) -> [Element] {
        [expression]
    }

    // Combine components from the block
    /// Combines components from a block.
    public static func buildBlock(
        _ components: [Element]...
    ) -> [Element] {
        components.flatMap { $0 }
    }

    // if without else
    /// Builds an optional component.
    public static func buildOptional(
        _ component: [Element]?
    ) -> [Element] {
        component ?? []
    }

    // if/else
    /// Builds a component from an `if`/`else` branch.
    public static func buildEither(
        first component: [Element]
    ) -> [Element] {
        component
    }

    /// Builds a component from an `if`/`else` branch.
    public static func buildEither(
        second component: [Element]
    ) -> [Element] {
        component
    }

    // for loops
    /// Builds components from a loop.
    public static func buildArray(
        _ components: [[Element]]
    ) -> [Element] {
        components.flatMap { $0 }
    }

    // #available, etc.
    /// Builds components for availability-limited blocks.
    public static func buildLimitedAvailability(
        _ component: [Element]
    ) -> [Element] {
        component
    }
}
