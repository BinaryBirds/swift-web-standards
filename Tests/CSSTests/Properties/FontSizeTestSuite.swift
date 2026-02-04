//
//  FontSizeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct FontSizeTests {

    @Test
    func initializers() {
        let property = FontSize()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = FontSize()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let small = FontSize(.small)
        let larger = FontSize(.larger)
        let length = FontSize(.length(14.px))
        let inherit = FontSize(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(small) == "font-size: small")
        #expect(renderer.renderProperty(larger) == "font-size: larger")
        #expect(renderer.renderProperty(length) == "font-size: 14px")
        #expect(renderer.renderProperty(inherit) == "font-size: inherit")
    }
}
