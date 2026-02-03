//
//  MaxHeightTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct MaxHeightTests {

    @Test
    func initializers() {
        let property = MaxHeight()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = MaxHeight()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let none = MaxHeight(.none)
        let length = MaxHeight(480.px)
        let inherit = MaxHeight(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(none) == "max-height: none")
        #expect(renderer.renderProperty(length) == "max-height: 480px")
        #expect(renderer.renderProperty(inherit) == "max-height: inherit")
    }
}
