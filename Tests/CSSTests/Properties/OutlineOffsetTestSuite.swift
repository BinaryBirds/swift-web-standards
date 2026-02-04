//
//  OutlineOffsetTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct OutlineOffsetTests {

    @Test
    func initializers() {
        let property = OutlineOffset(.length(8.px))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = OutlineOffset(.length(8.px))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let length = OutlineOffset(.length(12.px))
        let initial = OutlineOffset(.initial)
        let inherit = OutlineOffset(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(length) == "outline-offset: 12px")
        #expect(renderer.renderProperty(initial) == "outline-offset: initial")
        #expect(renderer.renderProperty(inherit) == "outline-offset: inherit")
    }
}
