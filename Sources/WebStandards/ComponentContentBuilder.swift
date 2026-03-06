//
//  File.swift
//  puppylepsy-web-app
//
//  Created by Tibor Bödecs on 2026. 03. 01..
//

import SGML

@resultBuilder
public enum ComponentContentBuilder {

    public static func buildExpression(
        _ expression: any Element
    ) -> [any Element] {
        [expression]
    }

    public static func buildBlock(
        _ components: [any Element]...
    ) -> [any Element] {
        components.flatMap { $0 }
    }

    public static func buildOptional(
        _ component: [any Element]?
    ) -> [any Element] {
        component ?? []
    }

    public static func buildEither(
        first component: [any Element]
    ) -> [any Element] {
        component
    }

    public static func buildEither(
        second component: [any Element]
    ) -> [any Element] {
        component
    }

    public static func buildArray(
        _ components: [[any Element]]
    ) -> [any Element] {
        components.flatMap { $0 }
    }

    public static func buildLimitedAvailability(
        _ component: [any Element]
    ) -> [any Element] {
        component
    }

    public static func buildExpression(
        _ expression: ComponentGroup
    ) -> [any Element] {
        expression.children
    }

    public static func buildFinalResult(
        _ component: [any Element]
    ) -> ComponentGroup {
        .init(component)
    }
}
