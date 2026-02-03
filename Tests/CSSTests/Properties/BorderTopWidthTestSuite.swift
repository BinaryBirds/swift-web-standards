//
//  BorderTopWidthTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct BorderTopWidthTests {

    @Test
    func initializers() {
        let property = BorderTopWidth()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderTopWidth()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let keyword = BorderTopWidth(.thin)
        let length = BorderTopWidth(3.px)
        let initial = BorderTopWidth(.initial)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(keyword) == "border-top-width: thin")
        #expect(renderer.renderProperty(length) == "border-top-width: 3px")
        #expect(renderer.renderProperty(initial) == "border-top-width: initial")
    }
}
