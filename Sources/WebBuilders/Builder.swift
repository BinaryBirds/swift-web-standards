//
//  Builder.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

/// A generic result builder that collects values into an array.
@resultBuilder
public enum Builder<Element> {

    public static func buildExpression(
        _ expression: [Element]
    ) -> [Element] {
        expression
    }

    public static func buildExpression(
        _ expression: Element
    ) -> [Element] {
        [expression]
    }

    public static func buildBlock(
        _ components: [Element]...
    ) -> [Element] {
        components.flatMap { $0 }
    }

    public static func buildOptional(
        _ component: [Element]?
    ) -> [Element] {
        component ?? []
    }

    public static func buildEither(
        first component: [Element]
    ) -> [Element] {
        component
    }

    public static func buildEither(
        second component: [Element]
    ) -> [Element] {
        component
    }

    public static func buildArray(
        _ components: [[Element]]
    ) -> [Element] {
        components.flatMap { $0 }
    }

    public static func buildLimitedAvailability(
        _ component: [Element]
    ) -> [Element] {
        component
    }
}
