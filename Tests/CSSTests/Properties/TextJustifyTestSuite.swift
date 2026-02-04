//
//  TextJustifyTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import Testing

@testable import CSS

@Suite
struct TextJustifyTests {

    @Test
    func initializers() {
        let property = TextJustify()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = TextJustify()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }
}
