//
//  ColumnRuleStyleTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct ColumnRuleStyleTests {

    @Test
    func initializers() {
        let property = ColumnRuleStyle()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = ColumnRuleStyle()
            .important()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }
}
