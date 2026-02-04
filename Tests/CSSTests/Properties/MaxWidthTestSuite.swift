//
//  MaxWidthTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct MaxWidthTests {

    @Test
    func initializers() {
        let property = MaxWidth()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = MaxWidth()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let none = MaxWidth(.none)
        let length = MaxWidth(320.px)
        let inherit = MaxWidth(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(none) == "max-width: none")
        #expect(renderer.renderProperty(length) == "max-width: 320px")
        #expect(renderer.renderProperty(inherit) == "max-width: inherit")
    }
}
