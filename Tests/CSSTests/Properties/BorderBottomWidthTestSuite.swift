//
//  BorderBottomWidthTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct BorderBottomWidthTests {

    @Test
    func initializers() {
        let property = BorderBottomWidth()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderBottomWidth()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let keyword = BorderBottomWidth(.thin)
        let length = BorderBottomWidth(2.px)
        let initial = BorderBottomWidth(.initial)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(keyword) == "border-bottom-width: thin")
        #expect(renderer.renderProperty(length) == "border-bottom-width: 2px")
        #expect(
            renderer.renderProperty(initial) == "border-bottom-width: initial"
        )
    }
}
