//
//  TextIndentTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct TextIndentTests {

    @Test
    func initializers() {
        let property = TextIndent(.length(8.px))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = TextIndent(.length(8.px))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let length = TextIndent(12.px)
        let initial = TextIndent(.initial)
        let inherit = TextIndent(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(length) == "text-indent: 12px")
        #expect(renderer.renderProperty(initial) == "text-indent: initial")
        #expect(renderer.renderProperty(inherit) == "text-indent: inherit")
    }
}
