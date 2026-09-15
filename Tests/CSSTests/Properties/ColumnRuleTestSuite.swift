//
//  ColumnRuleTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct ColumnRuleTests {

    @Test
    func initializers() {
        let property = ColumnRule(.inherit)

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = ColumnRule(.inherit)
            .important()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let values = ColumnRule(.thin, .dashed, .color(.red))
        let initial = ColumnRule(.initial)

        let renderer = CSSRenderer()
        #expect(
            renderer.renderProperty(values) == "column-rule: thin dashed red"
        )
        #expect(renderer.renderProperty(initial) == "column-rule: initial")
    }
}
