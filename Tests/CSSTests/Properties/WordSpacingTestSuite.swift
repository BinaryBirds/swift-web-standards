//
//  WordSpacingTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct WordSpacingTests {

    @Test
    func initializers() {
        let property = WordSpacing()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = WordSpacing()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let normal = WordSpacing(.normal)
        let length = WordSpacing(2.px)
        let initial = WordSpacing(.initial)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(normal) == "word-spacing: normal")
        #expect(renderer.renderProperty(length) == "word-spacing: 2px")
        #expect(renderer.renderProperty(initial) == "word-spacing: initial")
    }
}
