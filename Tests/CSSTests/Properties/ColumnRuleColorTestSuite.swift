//
//  ColumnRuleColorTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct ColumnRuleColorTests {

    @Test
    func initializers() {
        let property = ColumnRuleColor(.color(.red))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = ColumnRuleColor(.color(.red))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let color = ColumnRuleColor(.color(.blue))
        let initial = ColumnRuleColor(.initial)
        let inherit = ColumnRuleColor(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(color) == "column-rule-color: blue")
        #expect(
            renderer.renderProperty(initial) == "column-rule-color: initial"
        )
        #expect(
            renderer.renderProperty(inherit) == "column-rule-color: inherit"
        )
    }
}
